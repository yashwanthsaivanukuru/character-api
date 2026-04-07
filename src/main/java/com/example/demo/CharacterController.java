package com.example.demo;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
import java.util.List;

@RestController
@RequestMapping("/api/characters") // This is the web address
@CrossOrigin(origins = "*") // Allows your future frontend to talk to this
public class CharacterController {

    @Autowired
    private CharacterService service;

    // GET all characters
    @GetMapping
    public List<Character> getAll() {
        return service.getAll();
    }

    // POST (Add) a new character
    @PostMapping
    public Character addCharacter(@RequestBody Character character) {
        return service.addCharacter(character);
    }
}