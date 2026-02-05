package com.sbapi.sbrrx.Repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.sbapi.sbrrx.Entity.User;

public interface UserRepository extends JpaRepository<User,Integer>{

	User findByUsername(String username);

}
