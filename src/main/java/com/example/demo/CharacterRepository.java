package com.example.demo;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;
import java.util.List;

@Repository
public interface CharacterRepository extends JpaRepository<Character, Long> {

    @Query("SELECT c FROM Character c WHERE LOWER(c.name) LIKE LOWER(concat('%', :term, '%')) " +
           "OR LOWER(c.universe) LIKE LOWER(concat('%', :term, '%'))")
    List<Character> searchByNameOrUniverse(@Param("term") String term);
}