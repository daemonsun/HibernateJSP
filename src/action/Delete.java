package action;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

import po.Student;

public class Delete {
	public static Boolean delete(int no){
		// 初始化，读取配置文件hibernate.cfg.xml
		Configuration conf = new Configuration().configure();
		// 读取并解析映射文件student.hbm.xml
		SessionFactory sf = conf.buildSessionFactory();
		// 打开session
		Session session = sf.openSession();
		Student student = (Student)session.get(Student.class, no);
		if(student != null){
			Transaction ts = session.beginTransaction();
			ts = session.beginTransaction();
			session.delete(student);
			ts.commit();
			session.close();
			return true;
		}else{
			session.close();
			return false;
		}
	}
}
