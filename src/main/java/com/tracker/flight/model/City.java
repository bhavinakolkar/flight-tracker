package com.tracker.flight.model;

import lombok.Data;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
@Data
public class City {

    @Id
    private String name;

    private String state;

    private String country;
}
