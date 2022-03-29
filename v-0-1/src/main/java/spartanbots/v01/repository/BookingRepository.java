package spartanbots.v01.repository;

//import org.springframework.data.jpa.repository.JpaRepository;
//import org.springframework.data.jpa.repository.Query;
import org.springframework.data.mongodb.repository.MongoRepository;
import org.springframework.data.mongodb.repository.Query;
import org.springframework.stereotype.Repository;
import spartanbots.v01.entity.Booking;

import java.util.List;

@Repository
public interface BookingRepository extends MongoRepository<Booking, Integer> {

//    @Query("{name:'?0'}")
//    public boolean existsByPhone(String phone);


//    @Query("{phone:'?0'}")
//    Booking findItemByPhone(String phone);
//
//    @Query("{_id:'?0'}")
//    Booking findItemById(int id);

//    public List<Booking> findByPhone(String phone);

//    @Query("{phone:'?0'}")
//    List<Booking> findAllByPhone(String phone);

//    @Query("{_id:'?0'}")
//    List<Booking> findAllById(int id);


//    @Query("select max(b.id) from Booking b")
//    public Integer findMaxId();
}
