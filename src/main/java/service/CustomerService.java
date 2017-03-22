package service;
import dao.CustomerDao;
import domain.PageBean;
import domain.Customer;


/**
 * Created by Tao on 3/21/2017.
 */
public class CustomerService {
    private CustomerDao customerDao=null;
    public CustomerService(){
        customerDao=new CustomerDao();
    }
    public void add(Customer customer){
        customerDao.add(customer);
    }

    public PageBean<Customer>findAll(int pc,int pr){
        return customerDao.findAll(pc,pr);
    }

    public Customer find(String id)
    {
        return customerDao.find(id);
    }

    public void edit(Customer customer)
    {
        customerDao.edit(customer);
    }

    public void delete(String id)
    {
        customerDao.delete(id);
    }

    public PageBean<Customer> query(Customer customer,int pc,int pr)
    {
        return customerDao.query(customer,pc,pr);
    }
}
