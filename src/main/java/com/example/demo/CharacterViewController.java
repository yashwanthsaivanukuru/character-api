package com.example.demo;

import org.springframework.web.bind.annotation.*;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import java.util.List;

@Controller
@RequestMapping("/characters")
public class CharacterViewController {

    private final CharacterService characterService;

    public CharacterViewController(CharacterService characterService) {
        this.characterService = characterService;
    }

    // GALLERY & SEARCH
    @GetMapping({"/", ""})
    public String getAllCharacters(@RequestParam(value = "search", required = false) String search, Model model) {
        List<Character> list = (search != null && !search.isEmpty()) 
            ? characterService.searchCharacters(search) 
            : characterService.getAll();
        model.addAttribute("characterList", list);
        model.addAttribute("search", search);
        return "character-list"; 
    }

    // CREATE FORM
    @GetMapping("/create")
    public String showCreateForm(Model model) {
        model.addAttribute("character", new Character());
        return "character-create"; 
    }

    // UPDATE FORM
    @GetMapping("/update/{id}")
    public String showUpdateForm(@PathVariable("id") Long id, Model model) {
        Character character = characterService.getCharacterById(id);
        if (character != null) {
            model.addAttribute("character", character);
            return "character-update";
        }
        return "redirect:/characters";
    }

    // SAVE LOGIC (Handles both New and Edited characters)
    @PostMapping("/save")
    public String saveCharacter(@ModelAttribute Character character) {
        characterService.saveCharacter(character);
        return "redirect:/characters";
    }

    // DELETE
    @GetMapping("/delete/{id}")
    public String deleteCharacter(@PathVariable("id") Long id) {
        characterService.deleteCharacter(id);
        return "redirect:/characters";
    }

    // DETAILS
    @GetMapping("/{id}")
    public String getCharacterById(@PathVariable("id") Long id, Model model) {
        Character character = characterService.getCharacterById(id);
        if (character != null) {
            model.addAttribute("character", character);
            return "character-details";
        }
        return "redirect:/characters";
    }
}