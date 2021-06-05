package action;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

import po.Student;

public class Update {
	public static int update(String no, String name, String sex){
		// 初始化，读取配置文件hibernate.cfg.xml
		Configuration config = new Configuration().configure();
		// 读取并解析映射文件(student.hbm.xml)，创建sessionFactory
		SessionFactory sessionFactory = config.buildSessionFactory();
		// 打开session
		Session session = sessionFactory.openSession();
		Transaction ts = null;
		// 加载要修改的数据项
		Student student = (Student)session.get(Student.class, Integer.parseInt(no));
		if(student == null){
			session.close();
			return 1;
		}else{
			ts = session.beginTransaction();
			if(name == ""){
				student.setStusex(sex);
			}else if(sex == ""){
				student.setStuname(name);
			}else if(name == "" && sex != ""){
				student.setStuname(name);
				student.setStusex(sex);
			}
			session.update(student);
			ts.commit();
			session.close();
			return 2;
		}
	}
}
