package Demo;
import cn.itcast.commons.CommonUtils;
import cn.itcast.jdbc.TxQueryRunner;
import dao.CustomerDao;
import org.apache.commons.dbutils.QueryRunner;
import domain.Customer;

/**
 * Created by Tao on 3/21/2017.
 */

public class Demo {
    private QueryRunner qr=null;
    public Demo(){
        qr=new QueryRunner();
    }
    public static void main(String[]args){
        CustomerDao customerDao=new CustomerDao();
        for(int i=0;i<1000;i++){
            Customer customer=new Customer();
            customer.setId(CommonUtils.uuid());//generate random string whose length is 32
            customer.setName("customer"+i);
            customer.setGender(i%2==0?"male":"female");
            customer.setPhone("97998"+i);
            customer.setEmail("customer+"+i+"@gmail.com");
            customer.setDescription("hello word");
            customerDao.add(customer);
        }
        System.out.println("Insertion Finished");
    }
}
