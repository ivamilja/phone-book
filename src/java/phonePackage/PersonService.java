
package phonePackage;

import java.util.List;

public interface PersonService {
    public List<Person> getPersons();
    public List<Person> searchPerson(Person person);
    public List<Person> searchPersonByPhone(Person person);
    public List<Person> searchPersonByAddress(Person person);
    public void savePerson(Person thePerson);

    public Person getPersons(int theId);

    public void deletePerson(int theId);
   
}
