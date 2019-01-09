
package phonePackage;

import java.util.List;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;


@Repository
public class CityDAOImpl implements CityDAO{

    @Autowired
    private SessionFactory sessionFactory;

    @Override
    public List<City> getCities() {
        Session currentSession = sessionFactory.getCurrentSession();
        Query<City> upit= currentSession.createQuery("from City");
        List<City> cities=upit.getResultList();
        return cities;    
    }
    @Override
    public List<City> getCitiesByName(City city) {
        Session currentSession = sessionFactory.getCurrentSession();
        String name=city.getCityName();
        Query<City> upit= currentSession.createQuery("from City where city_name=:cityName");
        upit.setParameter("cityName",name);
         List<City> cities=upit.getResultList();
        return cities;  
    }
}
