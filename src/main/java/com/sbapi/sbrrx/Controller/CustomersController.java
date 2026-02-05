package com.sbapi.sbrrx.Controller;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.sbapi.sbrrx.Entity.Customers;
import com.sbapi.sbrrx.ResponceObj.APIResponse;
import com.sbapi.sbrrx.Service.CustomersService;

@RestController
@CrossOrigin(origins="*")  //http://localhost:3000
@RequestMapping("/customers")
public class CustomersController {

	
	@Autowired
	CustomersService customerservice;
	
	@GetMapping("/all")
	public APIResponse<List<Customers>> getCustomers() {

		List<Customers> allCustomers = (List<Customers>) customerservice.findAllCustomers();

		return new APIResponse<>(allCustomers.size(), allCustomers);
	}
	
	
	@GetMapping("/{field}")
    private APIResponse<List<Customers>> getProductsWithSort(@PathVariable String field) {
        List<Customers> allcustomers = customerservice.findCustomersWithSorting(field);
        return new APIResponse<>(allcustomers.size(), allcustomers);
    }

    @GetMapping("/pagination/{offset}/{pageSize}")
    private APIResponse<Page<Customers>> getProductsWithPagination(@PathVariable int offset, @PathVariable int pageSize) {
        Page<Customers> customersWithPagination = customerservice.findCustomersWithPagination(offset, pageSize);
        return new APIResponse<>(customersWithPagination.getSize(), customersWithPagination);
    }

    @GetMapping("/paginationAndSort/{offset}/{pageSize}/{field}")
    private APIResponse<Page<Customers>> getProductsWithPaginationAndSort(@PathVariable int offset, @PathVariable int pageSize,@PathVariable String field) {
        Page<Customers> customersWithPagination = customerservice.findCustomersWithPaginationAndSorting(offset, pageSize, field);
        return new APIResponse<>(customersWithPagination.getSize(), customersWithPagination);
    }
	
	
}
