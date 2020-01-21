package com.mindtree.tourismapplication.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.mindtree.tourismapplication.entity.State;
@Repository
public interface StateRepository extends JpaRepository<State, Integer>{

}
