package com.example.demo;

import jakarta.persistence.*;

@Entity
@Table(name = "characters")
public class Character {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long characterId;

    private String name;
    private String universe;
    private String role;
    private String power;

    @Column(length = 2000) 
    private String species; // Used for Image URL

    @Column(length = 3000) 
    private String description; // Used for Summary

    public Character() {}

    // Getters and Setters
    public Long getCharacterId() { return characterId; }
    public void setCharacterId(Long characterId) { this.characterId = characterId; }
    public String getName() { return name; }
    public void setName(String name) { this.name = name; }
    public String getUniverse() { return universe; }
    public void setUniverse(String universe) { this.universe = universe; }
    public String getRole() { return role; }
    public void setRole(String role) { this.role = role; }
    public String getPower() { return power; }
    public void setPower(String power) { this.power = power; }
    public String getSpecies() { return species; }
    public void setSpecies(String species) { this.species = species; }
    public String getDescription() { return description; }
    public void setDescription(String description) { this.description = description; }
}