package com.example.loanapi.repository;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.example.loanapi.model.Loan;

@Repository
public interface LoansRepository extends JpaRepository<Loan, Long> {

	Page<Loan> findAllByUserId(@Param("USER_ID") Long userId, Pageable pageable);
}
