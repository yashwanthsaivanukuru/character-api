package com.example.demo;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class CharacterService {

    @Autowired
    private CharacterRepository characterRepository;

    public List<Character> getAll() {
        return characterRepository.findAll();
    }

    public List<Character> searchCharacters(String term) {
        return characterRepository.searchByNameOrUniverse(term);
    }

    public Character getCharacterById(Long id) {
        return characterRepository.findById(id).orElse(null);
    }

    public Character saveCharacter(Character character) {
        return characterRepository.save(character);
    }

    public Character addCharacter(Character character) {
        return characterRepository.save(character);
    }

    public void deleteCharacter(Long id) {
        characterRepository.deleteById(id);
    }
}