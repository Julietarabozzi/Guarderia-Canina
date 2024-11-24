package com.tc_software.tp_integrador.controller;

import com.tc_software.tp_integrador.model.Animal;
import com.tc_software.tp_integrador.repository.AnimalRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

@Controller
@RequestMapping("/animal")
public class AnimalController {

    @Autowired
    private AnimalRepository animalRepository;

    // Listar todos los notas
    @GetMapping
    public String listarAnimal(Model model) {
        model.addAttribute("animal", animalRepository.findAll());
        return "animal/listar";
    }

    // Mostrar formulario para crear un nuevo nota
    @GetMapping("/nuevo")
    public String mostrarFormularioCrear(Model model) {
        model.addAttribute("animal", new Animal());
        return "animal/nuevo";
    }

    // Guardar un nuevo nota
    @PostMapping
    public String guardaranimal(@ModelAttribute Animal animal, RedirectAttributes redirectAttributes) {
        animalRepository.save(animal);
        redirectAttributes.addFlashAttribute("success", "animal creado exitosamente.");
        return "redirect:/animal";
    }

    // Mostrar formulario para editar un nota existente
    @GetMapping("/editar/{id}")
    public String mostrarFormularioEditar(@PathVariable Long id, Model model, RedirectAttributes redirectAttributes) {
        Animal animal = animalRepository.findById(id).orElse(null);
        if (animal == null) {
            redirectAttributes.addFlashAttribute("error", "animal no encontrado.");
            return "redirect:/animal";
        }
        model.addAttribute("animal", animal);
        return "animal/editar";
    }

    // Actualizar un nota existente
    @PostMapping("/actualizar/{id}")
    public String actualizaranimal(@PathVariable Long id, @ModelAttribute Animal animalActualizado, RedirectAttributes redirectAttributes) {
        Animal animal = animalRepository.findById(id).orElse(null);
        if (animal == null) {
            redirectAttributes.addFlashAttribute("error", "animal no encontrado.");
            return "redirect:/animal";
        }
        animal.setTutor(animalActualizado.getTutor());
        animal.setCategoria(animalActualizado.getCategoria());
        animal.setContacto(animalActualizado.getContacto());
        animalRepository.save(animal);
        redirectAttributes.addFlashAttribute("success", "animal actualizado exitosamente.");
        return "redirect:/animal";
    }

    // Eliminar un nota
    @GetMapping("/eliminar/{id}")
    public String eliminaranimal(@PathVariable Long id, RedirectAttributes redirectAttributes) {
        Animal animal = animalRepository.findById(id).orElse(null);
        if (animal == null) {
            redirectAttributes.addFlashAttribute("error", "animal no encontrado.");
            return "redirect:/animal";
        }
        animalRepository.delete(animal);
        redirectAttributes.addFlashAttribute("success", "animal eliminado exitosamente.");
        return "redirect:/animal";
    }
}

