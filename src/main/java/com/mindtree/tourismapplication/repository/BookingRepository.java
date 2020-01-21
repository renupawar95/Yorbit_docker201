package com.mindtree.tourismapplication.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.mindtree.tourismapplication.entity.Booking;
@Repository
public interface BookingRepository extends JpaRepository<Booking, Integer> {

}
