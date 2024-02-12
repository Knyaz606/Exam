package com.example.eczamen.repositories;

import com.example.eczamen.models.User;
import org.springframework.data.jpa.repository.JpaRepository;

public interface UserRepository extends JpaRepository<User,Long> {
    User findByEmail (String email);
}
