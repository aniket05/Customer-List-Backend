package com.sbapi.sbrrx.Service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Service;

import com.sbapi.sbrrx.Entity.Customers;
import com.sbapi.sbrrx.Repository.CustomersRepository;


@Service
public class CustomersService {

	
	@Autowired
	private CustomersRepository repository;
	
	 public List<Customers> findAllCustomers() {
	        return (List<Customers>) repository.findAll();
	    }


	    public List<Customers> findCustomersWithSorting(String field){
	        return  (List<Customers>) repository.findAll(Sort.by(Sort.Direction.ASC,field));
	    }
	    
	    
	    

	    public Page<Customers> findCustomersWithPagination(int offset,int pageSize){
	        Page<Customers> customers = repository.findAll(PageRequest.of(offset, pageSize));
	        return  customers;
	    }

	    public Page<Customers> findCustomersWithPaginationAndSorting(int offset,int pageSize,String field){
	        Page<Customers> customers = repository.findAll(PageRequest.of(offset, pageSize).withSort(Sort.by(field)));
	        return  customers;
	    }

	
	
}
