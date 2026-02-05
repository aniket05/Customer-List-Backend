package com.sbapi.sbrrx.Entity;



import javax.persistence.Entity;

import javax.persistence.GeneratedValue;
import javax.persistence.Id;

import com.sbapi.sbrrx.Entity.Role;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Entity
@Data
@AllArgsConstructor
@NoArgsConstructor
public class Role {
	
	@Id
	@GeneratedValue
	private int role_id;
	private String role;
	
	
}
