
package phonePackage;


import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
public class PersonServiceImpl implements PersonService{

    @Autowired
    private PersonDAO personDAO;
    
    @Override
    @Transactional
    public List<Person> getPersons() {
        return personDAO.getPersons();
    }
    @Override
    @Transactional
    public List<Person> searchPerson(Person person) {
        return personDAO.searchPerson(person);
    }
    @Override
    @Transactional
    public List<Person> searchPersonByPhone(Person person) {
        return personDAO.searchPersonByPhone(person);
    }
    @Override
    @Transactional
    public List<Person> searchPersonByAddress(Person person) {
        return personDAO.searchPersonByAddress(person);
    }
    @Override
    @Transactional
    public void savePerson(Person thePerson) {
        personDAO.savePerson(thePerson);
    }
    @Override
    @Transactional
    public Person getPersons(int theId){
        return personDAO.getPersons(theId);
    }
    @Override
     @Transactional
    public void deletePerson(int theId) {
         personDAO.deletePersons(theId);
    }
}
