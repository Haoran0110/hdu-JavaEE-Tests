import java.util.*;  
  
import org.hibernate.*;  
import org.hibernate.cfg.*;  
public class Test {  
  
    public static void main(String[] args) {  
        //这里是所谓的建立事务  
        Session session=new Configuration().configure().buildSessionFactory().openSession();  
        Transaction transaction=session.beginTransaction();  
        Testtable Testtable=new Testtable();  
        List<Testtable> list = new ArrayList<Testtable>();  
        System.out.println("此时的Testtable表：");  
        list=session.createQuery("from Testtable").list();  
        for(int i=0;i<list.size();i++){  
            System.out.println(list.get(i).getId()+","+list.get(i).getUsername()+","+list.get(i).getNumber());  
        }  
        System.out.println("========取出Testtable表第2项==========");          
        Testtable=(Testtable)session.get(Testtable.class, 2);  
        System.out.println(Testtable.getId()+"，"+Testtable.getUsername()+"，"+Testtable.getNumber());  
        System.out.println("=========把aaa,bbb插入到Testtable表中=========");    
        Testtable=new Testtable();  
        Testtable.setUsername("aaa");  
        Testtable.setNumber("bbb");  
        session.save(Testtable);  
        System.out.println("此时的Testtable表：");  
        list=session.createQuery("from Testtable").list();  
        for(int i=0;i<list.size();i++){  
            System.out.println(list.get(i).getId()+","+list.get(i).getUsername()+","+list.get(i).getNumber());  
        }  
        System.out.println("=============把Testtable表中id=1的Username改成ccc=================");  
        list=session.createQuery("from Testtable where id=1").list();  
        for(int i=0;i<list.size();i++){  
            list.get(i).setUsername("ccc");  
            session.save(list.get(i));  
        }  
        System.out.println("此时的Testtable表：");  
        list=session.createQuery("from Testtable").list();  
        for(int i=0;i<list.size();i++){  
            System.out.println(list.get(i).getId()+","+list.get(i).getUsername()+","+list.get(i).getNumber());  
        }  
        System.out.println("=======删除username=ccc，number=bbb那些项=============");  
        list = session.createQuery("from Testtable where number like 'bbb' and username like 'ccc' ").list();  
        for(int i=0;i<list.size();i++){  
            session.delete(list.get(i));  
        }  
        System.out.println("此时的Testtable表：");  
        list=session.createQuery("from Testtable").list();  
        for(int i=0;i<list.size();i++){  
            System.out.println(list.get(i).getId()+","+list.get(i).getUsername()+","+list.get(i).getNumber());  
        }  
        //这里是所谓的执行并提交事务  
        transaction.commit();  
        session.close();  
          
          
    }  
  
}  