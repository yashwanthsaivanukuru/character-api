package com.example.demo;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import java.util.List;
// This import is usually the one missing or wrong:
import com.example.demo.Character; 

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