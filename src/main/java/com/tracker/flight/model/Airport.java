package com.tracker.flight.model;

import lombok.Data;

import javax.persistence.*;
import java.util.Set;

@Entity
@Data
public class Airport {

    @Id
    @Column(name = "airport_name")
    private String name;

    @OneToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "city_name")
    private City city;

    @ManyToMany(cascade = {CascadeType.PERSIST, CascadeType.MERGE})
    @JoinTable(name = "airport_airline", joinColumns = @JoinColumn(name = "airport_name"), inverseJoinColumns = @JoinColumn(name = "airline_id"))
    private Set<Airline> airlines;
}
