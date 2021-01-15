package com.tracker.flight.service;

import com.tracker.flight.dto.AirlineDetail;
import com.tracker.flight.repository.AirlineRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class AirlineService {

    @Autowired
    private AirlineRepository airlineRepository;

    public List<AirlineDetail> getAirlineDetailsByCity(final String city) {
        return airlineRepository.findAirlineDetailsByCity(city);
    }
}
