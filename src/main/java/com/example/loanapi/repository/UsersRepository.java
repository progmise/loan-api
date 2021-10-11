package com.example.loanapi.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.example.loanapi.model.User;

@Repository
public interface UsersRepository extends JpaRepository<User, Long> {
	
}
