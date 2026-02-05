package com.sbapi.sbrrx.ResponceObj;

import java.util.Date;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class AuthResponceObj {
	
	String token;
	Date expires;

}
