package action;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

import po.Student;

public class Update {
	public static int update(String no, String name, String sex){
		// ��ʼ������ȡ�����ļ�hibernate.cfg.xml
		Configuration config = new Configuration().configure();
		// ��ȡ������ӳ���ļ�(student.hbm.xml)������sessionFactory
		SessionFactory sessionFactory = config.buildSessionFactory();
		// ��session
		Session session = sessionFactory.openSession();
		Transaction ts = null;
		// ����Ҫ�޸ĵ�������
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
