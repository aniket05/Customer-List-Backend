package com.sbapi.sbrrx.Entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
@Entity
public class Customers {

	@Id
	private String CustomerID;
	private String companyname;
	@Column(name="Contactname")
	private String contactname;
	private String Contacttitle;
	private String Address;
	@Column(name="City")
	private String city;
	private String Region;
	private String Postalcode;
	private String Country;
	private String Phone;
	private String Fax;
		
	
}
