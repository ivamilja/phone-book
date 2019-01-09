package phonePackage;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

@Repository
public class PersonDAOImpl implements PersonDAO {

    @Autowired
    private SessionFactory sessionFactory;

    @Override
    public List<Person> getPersons() {
        Session currentSession = sessionFactory.getCurrentSession();
        Query<Person> upit = currentSession.createQuery("from Person", Person.class);
        List<Person> persons = upit.getResultList();
        return persons;
    }

    @Override
    public List<Person> searchPerson(Person person) {
        String lastName1 = person.getLastName();
        String lastName = lastName1 + "%";
        String firstName = person.getFirstName();
        
        Session currentSession = sessionFactory.getCurrentSession();
        Query<Person> upit = currentSession.createQuery("from Person where first_name=:firstName and last_name like :lastName");
        upit.setParameter("lastName", lastName);
        upit.setParameter("firstName", firstName);
        List<Person> persons = upit.getResultList();
        return persons;
    }

    @Override
    public List<Person> searchPersonByPhone(Person p) {
        Session currentSession = sessionFactory.getCurrentSession();
        String phone = p.getPhoneNumber();
        Query<Person> upit = currentSession.createQuery("from Person where phone_number=:phone");
        upit.setParameter("phone", phone);
        List<Person> persons = upit.getResultList();
        return persons;
    }

    @Override
    public List<Person> searchPersonByAddress(Person p) {
        Session currentSession = sessionFactory.getCurrentSession();
        String address1 = p.getAddress();
        String address = address1 + "%";
        Query<Person> upit = currentSession.createQuery("from Person where address like :address");
        upit.setParameter("address", address);
        List<Person> persons = upit.getResultList();
        return persons;
    }

    @Override
    public void savePerson(Person thePerson) {
        Session currentSession = sessionFactory.getCurrentSession();
        currentSession.saveOrUpdate(thePerson);
    }

    @Override
    public Person getPersons(int theId) {
        Session currentSession = sessionFactory.getCurrentSession();
        Query<Person> upit = currentSession.createQuery("from Person where id = :theId");
        upit.setParameter("theId", theId);
        Person person = upit.getSingleResult();
        return person;
    }

    @Override
    public void deletePersons(int theId) {
        Session currentSession = sessionFactory.getCurrentSession();
        Query upit = currentSession.createQuery("delete from Person where id = :theId");
        upit.setParameter("theId", theId);
        upit.executeUpdate();
    }

}
