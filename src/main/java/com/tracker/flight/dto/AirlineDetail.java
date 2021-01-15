package com.tracker.flight.dto;

import lombok.AllArgsConstructor;
import lombok.Data;

@Data
@AllArgsConstructor
public class AirlineDetail {

    private String airlineId;

    private String airlineName;

    private String airlineCode;

    private String city;

    private String airportName;

    private String state;

    private String country;

}
