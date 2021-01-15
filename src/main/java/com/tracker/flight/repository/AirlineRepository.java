package com.tracker.flight.repository;

import com.tracker.flight.dto.AirlineDetail;
import com.tracker.flight.model.Airline;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface AirlineRepository extends JpaRepository<Airline, String> {

    @Query("SELECT new com.tracker.flight.dto.AirlineDetail(al.airlineId, al.name, al.code, c.name, ar.name, c.state, c.country) FROM Airline al JOIN al.airports ar JOIN ar.city c where c.name =:city")
    public List<AirlineDetail> findAirlineDetailsByCity(final String city);

}
