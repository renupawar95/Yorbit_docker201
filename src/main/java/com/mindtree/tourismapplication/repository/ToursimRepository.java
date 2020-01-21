package com.mindtree.tourismapplication.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.mindtree.tourismapplication.entity.Tourism;
@Repository
public interface ToursimRepository extends JpaRepository<Tourism, Integer>{

}
