package action;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

import po.Student;

public class Insert {
	public static Boolean insert(Student student){
		// 初始化，读取配置文件hibernate.cfg.xml
		Configuration conf = new Configuration().configure();
		// 读取并解析映射文件student.hbm.xml
		SessionFactory sf = conf.buildSessionFactory();
		// 打开session
		Session session = sf.openSession();
		// 开始一个事务
		Transaction ts = session.beginTransaction();
		if(student.getStuname() != null && student.getStusex() != null){
			session.save(student);
			ts.commit();
			session.close();
			return true;
		}else{
			session.close();
			return false;
		}
	}
}
