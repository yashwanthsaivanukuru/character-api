package com.example.demo;

import jakarta.persistence.*;

@Entity
@Table(name = "characters")
public class Character {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long characterId; // Required: Unique ID

    @Column(nullable = false)
    private String name; // Required: Name

    @Column(nullable = false)
    private String description; // Required: Description

    private String universe; // Extra 1
    private String species;  // Extra 2

    // Empty Constructor (Required)
    public Character() {}

    // Getters and Setters (Required)
    public Long getCharacterId() { return characterId; }
    public void setCharacterId(Long characterId) { this.characterId = characterId; }
    public String getName() { return name; }
    public void setName(String name) { this.name = name; }
    public String getDescription() { return description; }
    public void setDescription(String description) { this.description = description; }
    public String getUniverse() { return universe; }
    public void setUniverse(String universe) { this.universe = universe; }
    public String getSpecies() { return species; }
    public void setSpecies(String species) { this.species = species; }
}