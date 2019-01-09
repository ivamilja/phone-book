package phonePackage;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;

@EnableWebMvc
@Controller
@RequestMapping("/person")
public class PersonController {

    @Autowired
    private PersonService personService;
    @Autowired
    private CityService cityService;

    @RequestMapping("/searchByNumber")
    public String searchByNumber(Model theModel, Person p) {

        return "numberSearch";
    }

    @RequestMapping("/searchPerson/searchByNumberResult")
    public String searchByNumberResult(Model theModel, Person p) {

        List<Person> persons = personService.searchPersonByPhone(p);
        theModel.addAttribute("persons", persons);
        return "searchByNumberResult";
    }

    @RequestMapping("/searchByName")
    public String searchPerson(Model theModel, Person p) {

        return "nameSearch";
    }

    @RequestMapping("/searchPerson/searchByName")
    public String searchPersonByName(Model theModel, Person p) {
        List<Person> persons = personService.searchPerson(p);
        theModel.addAttribute("persons", persons);
        return "searchByNameResult";
    }

    @RequestMapping("/searchByAddress")
    public String searchByAddress(Model theModel, Person p) {
        return "addressSearch";
    }

    @RequestMapping("/searchPerson/searchByAddressResult")
    public String searchByAddressResult(Model theModel, Person p) {
        List<Person> persons = personService.searchPersonByAddress(p);
        theModel.addAttribute("persons", persons);
        return "searchByAddressResult";
    }

    @RequestMapping("/addPerson")
    public String addPerson(Model theModel, Person person) {
        List<City> city = cityService.getCities();
        theModel.addAttribute("city", city);
        return "addPerson";
    }

    @PostMapping("/savePerson")
    public String savePerson(Model theModel, @ModelAttribute("person") Person person) {
        List<City> city = cityService.getCitiesByName(person.getCity());
        person.setCity(city.get(0));
        personService.savePerson(person);
        return "redirect:/person/list";
    }

    @RequestMapping("/list")
    public String listPersons(Model theModel) {

        List<Person> persons = personService.getPersons();
        theModel.addAttribute("persons", persons);
        return "list-persons";
    }

    
    
    @GetMapping("/updateForm")
    public String updateForm(@RequestParam("theId") int theId, Model theModel) {
        Person thePerson = personService.getPersons(theId);
        theModel.addAttribute("person", thePerson);
        return "addPerson";
    }

    @GetMapping("/deleteForm")
    public String deleteForm(@RequestParam("theId") int theId) {
        personService.deletePerson(theId);
        return "redirect:/person/list";
    }
}
