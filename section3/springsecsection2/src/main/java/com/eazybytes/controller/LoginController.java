package com.eazybytes.controller;

import com.eazybytes.model.Customer;
import com.eazybytes.repository.CustomerRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import java.util.concurrent.atomic.AtomicReference;

@RestController
@RequiredArgsConstructor
public class LoginController {
    private final CustomerRepository customerRepository;

    @PostMapping("/register")
    public ResponseEntity<String> registerUser(@RequestBody Customer customer) {
        AtomicReference<ResponseEntity<String>> responseEntityAtomicReference = new AtomicReference<>();
        try {
            Customer saved = customerRepository.save(customer);
            if (saved.getId() > 0) {
                responseEntityAtomicReference.set(
                        ResponseEntity.status(HttpStatus.CREATED).body("Successfully registered"));
            }
        } catch (Exception ex) {
            responseEntityAtomicReference.set(
                    ResponseEntity.status(HttpStatus.INTERNAL_SERVER_ERROR).body("Exception due to " + ex.getMessage())
            );
        }
        return responseEntityAtomicReference.get();
    }
}
