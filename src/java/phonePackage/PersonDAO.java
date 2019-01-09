
package phonePackage;


import java.util.List;


public interface PersonDAO {
   public List<Person> getPersons();
   public List<Person> searchPerson(Person person);
   public List<Person> searchPersonByPhone(Person person);
   public List<Person> searchPersonByAddress(Person person);

    public void savePerson(Person thePerson);

    public Person getPersons(int theId);

    public void deletePersons(int theId);
}
