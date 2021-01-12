package com.tracker.flight.model;

import lombok.Data;

import javax.persistence.*;
import java.util.Set;

@Entity
@Data
public class Airline {

    @Id
    @Column(name = "airline_id")
    private String airlineId;

    @Column(name = "airline_name")
    private String name;

    @Column(name = "airline_code")
    private String code;

    @ManyToMany(mappedBy = "airlines")
    private Set<Airport> airports;
}
