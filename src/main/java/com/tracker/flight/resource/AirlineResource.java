package com.tracker.flight.resource;

import com.tracker.flight.dto.AirlineDetail;
import com.tracker.flight.service.AirlineService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.Collections;
import java.util.List;

@RequestMapping("/airlines")
@RestController
public class AirlineResource {

    @Autowired
    private AirlineService airlineService;

    private final Logger LOGGER = LoggerFactory.getLogger(AirlineResource.class);

    @GetMapping("/{city}")
    public List<AirlineDetail> getAirlineDetailsByCity(@PathVariable("city")  final String city) {
        LOGGER.info("Get airline details by {}", city);
        return airlineService.getAirlineDetailsByCity(city);
    }
}
