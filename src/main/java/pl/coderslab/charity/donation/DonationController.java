package pl.coderslab.charity.donation;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import pl.coderslab.charity.category.Category;
import pl.coderslab.charity.category.CategoryRepository;
import pl.coderslab.charity.institution.Institution;
import pl.coderslab.charity.institution.InstitutionRepository;

import java.util.ArrayList;
import java.util.List;

@Controller
public class DonationController {
    private final CategoryRepository categoryRepository;
    private final InstitutionRepository institutionRepository;

    public DonationController(CategoryRepository categoryRepository, InstitutionRepository institutionRepository) {
        this.categoryRepository = categoryRepository;
        this.institutionRepository = institutionRepository;
    }

    @GetMapping("/donate")
    public String donationForm(Model model){
        model.addAttribute("donation", new Donation());
        List<Category> categories = categoryRepository.findAll();
        List<Institution> institutions = institutionRepository.findAll();
        List<String> catNames = new ArrayList<>();
        List<String> instNames = new ArrayList<>();
        for(Category c : categories){
            catNames.add(c.getName());
        }
        for(Institution i : institutions){
            instNames.add(i.getName());
        }
        model.addAttribute("categories",catNames);
        model.addAttribute("institutions",instNames);
        return "donationForm";
    }
    @PostMapping("/donate")
    public String donationForm(){
        return "";
    }
}
