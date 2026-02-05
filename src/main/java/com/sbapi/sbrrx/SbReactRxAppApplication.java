package com.sbapi.sbrrx;

import java.util.HashSet;
import java.util.List;
import java.util.Set;
import java.util.stream.Collectors;
import java.util.stream.Stream;

import javax.annotation.PostConstruct;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

import com.sbapi.sbrrx.Entity.Role;
import com.sbapi.sbrrx.Entity.User;
import com.sbapi.sbrrx.Repository.UserRepository;

@SpringBootApplication
public class SbReactRxAppApplication {
	
	@Autowired
	private UserRepository userRepository;

	
	@PostConstruct
	public void initUser() {
		Set<Role> roles = new HashSet<Role>();
		Role role = new Role();
		role.setRole("ADMIN");
		roles.add(role);
		
		Role role1 = new Role();
		role1.setRole("USER");
		roles.add(role1);
		
		
		Set<Role> roles2 = new HashSet<Role>();
		
		
		Role role4 = new Role();
		role4.setRole("USER");
		roles2.add(role4);
		
		List<User>  users = (List<User>) Stream.of(new User(1,"aniket","abc123",roles),new User( 2,"anurag","abc123",roles2)).collect(Collectors.toList());
		
		
		if(userRepository.count()<2) {
		
		userRepository.saveAll(users);
		
		}
				
	}
	

	public static void main(String[] args) {
		SpringApplication.run(SbReactRxAppApplication.class, args);
	}

}
