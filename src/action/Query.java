package action;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

import po.Student;

public class Query {
	public static String[] query(String stuno){
		// 初始化，读取配置文件hibernate.cfg.xml
		Configuration conf = new Configuration().configure();
		// 读取并解析映射文件student.hbm.xml
		SessionFactory sf = conf.buildSessionFactory();
		// 打开session
		Session session = sf.openSession();
		// 开始一个事务
		Transaction ts = null;
		Student student = (Student)session.get(Student.class, Integer.parseInt(stuno));
		String[] result = new String[3];
		if(student != null){
			result[0] = String.valueOf(student.getStuno());
			result[1] = student.getStuname();
			result[2] = student.getStusex();
			session.close();
			return result;
		}else{
			session.close();
			return result = new String[1];
		}
	}
}
