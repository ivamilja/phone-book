
package phonePackage;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
public class CityServiceImpl implements CityService{

    @Autowired
    private CityDAO cityDAO;
    
    @Override
    @Transactional
    public List<City> getCities() {
        return cityDAO.getCities();
    }
    @Override
    @Transactional
    public List<City> getCitiesByName(City city){
        return cityDAO.getCitiesByName(city);
    }
}
