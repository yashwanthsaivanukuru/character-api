package com.example.demo;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import java.util.List;

@Service
public class CharacterService {

    @Autowired
    private CharacterRepository repository;

    public List<Character> getAll() {
        return repository.findAll();
    }

    public Character addCharacter(Character character) {
        return repository.save(character);
    }
}