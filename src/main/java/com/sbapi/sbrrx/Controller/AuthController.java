package com.sbapi.sbrrx.Controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import java.security.Principal;
import java.util.Date;


import com.sbapi.sbrrx.Entity.AuthRequest;
import com.sbapi.sbrrx.Entity.User;
import com.sbapi.sbrrx.Repository.UserRepository;
import com.sbapi.sbrrx.ResponceObj.AuthResponceObj;
import com.sbapi.sbrrx.Util.JwtUtil;

@RestController
@CrossOrigin(origins="*")
public class AuthController {
	
	
	@Autowired
	private UserRepository user;
		
		@Autowired
		private JwtUtil jwtUtil; 
		
		@Autowired
		private AuthenticationManager authenticationManager;

		@GetMapping("/")
		public String WelcomeMsg() {
			
			return "hello World ";
		}
		
		@GetMapping("/userdata")
	    @PreAuthorize("hasAuthority('ROLE_USER')")
		public Principal UserDatails(Principal principal) {
			
			return  principal; //user.findByUsername(principal.getName());
			
		}
		
		
		@PostMapping("/authenticate")
		public AuthResponceObj generateToken(@RequestBody AuthRequest authRequest) throws Exception {
			
			try {
			
			authenticationManager.authenticate(new UsernamePasswordAuthenticationToken(authRequest.getUsername(),authRequest.getPassword()));
			
			}catch (Exception e) {
				// TODO: handle exception
				throw new Exception("Invalid User Name Or Password");
			}
			
			
			String token =  jwtUtil.generateToken(authRequest.getUsername());
			Date datetime =  jwtUtil.extractExpiration(token);
			
			return new AuthResponceObj(token,datetime);
			
		} 

}
