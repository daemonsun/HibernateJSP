package action;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

import po.Student;

public class Insert {
	public static Boolean insert(Student student){
		// ��ʼ������ȡ�����ļ�hibernate.cfg.xml
		Configuration conf = new Configuration().configure();
		// ��ȡ������ӳ���ļ�student.hbm.xml
		SessionFactory sf = conf.buildSessionFactory();
		// ��session
		Session session = sf.openSession();
		// ��ʼһ������
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
