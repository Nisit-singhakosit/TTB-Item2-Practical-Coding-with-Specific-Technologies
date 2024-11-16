package com.assignment.service;

import com.assignment.entity.Customer;
import com.assignment.repository.CustomerRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.time.LocalDateTime;
import java.util.List;

@Service
public class CustomerImpl implements CustomerService {

    @Autowired
    private CustomerRepository customerRepository;

    @Override
    public List<Customer> getAllCustomers()
    {
        return customerRepository.findAll();
    }

    @Override
    public Customer getCustomerById(Long id) {
        return customerRepository.findById(id).orElse(null); 

    }

    @Override
    public Customer createCustomer(Customer customer) {
        return customerRepository.save(customer);
    }

    @Override
    public Customer updateCustomer(Customer customer) throws NullPointerException {
        customerRepository.findById(customer.getCustomerId()).orElseThrow(() -> new NullPointerException("Customer ID not found"));
        customer.setModifiedOn(LocalDateTime.now());
        return customerRepository.save(customer);
    }

    @Override
    public void deleteCustomer(Long id) {
        customerRepository.findById(id).orElseThrow(() -> new NullPointerException("Customer ID not found"));
        customerRepository.deleteById(id);
    }

}
