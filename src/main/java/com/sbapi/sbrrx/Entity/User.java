package com.sbapi.sbrrx.Entity;

import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
/*import javax.persistence.Table;*/
import javax.persistence.OneToMany;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
@Entity
/*@Table(name = "user" )*/
public class User {

	
	/*public User(String username , String password){
		
		this.username =  username;
		this.password = password;
	}*/
	

@Id
private int user_id;

private String username;
private String password;

@OneToMany(cascade = CascadeType.ALL, fetch = FetchType.EAGER)
@JoinTable(name = "user_role", joinColumns = @JoinColumn(name ="user_id"),inverseJoinColumns=@JoinColumn(name="role_id"))
private Set<Role> roles;
	
}
