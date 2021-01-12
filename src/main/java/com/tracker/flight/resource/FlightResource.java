package com.tracker.flight.resource;

import com.tracker.flight.model.Flight;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.Collections;
import java.util.List;

@RestController
@RequestMapping("/flights")
public class FlightResource {

    @GetMapping
    public List<Flight> getFlights() {
        return Collections.emptyList();
    }
}
