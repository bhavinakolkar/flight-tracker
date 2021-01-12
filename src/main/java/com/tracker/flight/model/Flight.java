package com.tracker.flight.model;

import lombok.Data;

import javax.persistence.*;

@Entity
@Data
public class Flight {

    @Id
    @Column(name = "flight_code")
    private String code;

    @Column(name = "source")
    private String source;

    @Column(name = "destination")
    private String destination;

    @Column(name = "arrival")
    private String arrival;

    @Column(name = "departure")
    private String departure;

    @Column(name = "status")
    private String status;

    @Column(name = "duration")
    private String duration;

    @Column(name = "flight_type")
    private String type;

    @Column(name = "layover_time")
    private String layoverTime;

    @Column(name = "number_of_stops")
    private Integer numberOfStops;

    @OneToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "airline_id")
    private Airline airline;
}
