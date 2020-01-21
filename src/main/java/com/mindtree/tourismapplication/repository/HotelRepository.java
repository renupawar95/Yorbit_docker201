package com.mindtree.tourismapplication.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.mindtree.tourismapplication.entity.Hotel;
@Repository
public interface HotelRepository extends JpaRepository<Hotel, Integer>{

}
