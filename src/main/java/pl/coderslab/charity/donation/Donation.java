package pl.coderslab.charity.donation;

import lombok.Getter;
import lombok.Setter;
import pl.coderslab.charity.category.Category;
import pl.coderslab.charity.institution.Institution;

import java.time.LocalDate;
import java.time.LocalTime;
import java.util.List;

@Setter
@Getter
public class Donation {
    private long id;
    private Integer quantity;
    private List<Category> categories;
    private Institution institution;
    private String street;
    private String city;
    private String zipCode;
    private LocalDate pickUpDate;
    private LocalTime pickUpTime;
    private String pickUpComment;
}
