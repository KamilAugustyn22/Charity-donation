package pl.coderslab.charity.donation;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class DonationController {
    @GetMapping("/donate")
    public String donationForm(Model model){
        return "donationForm";
    }
}
