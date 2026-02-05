package com.sbapi.sbrrx.Repository;

import org.springframework.data.repository.PagingAndSortingRepository;

import com.sbapi.sbrrx.Entity.Customers;

public interface CustomersRepository  extends PagingAndSortingRepository<Customers,String>{

	
}
