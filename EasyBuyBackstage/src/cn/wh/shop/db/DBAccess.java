package cn.wh.shop.db;

import java.io.Reader;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

/**
 * @2018��5��4��
 * @�� ��
 * @Administrator ���ں����ݿ�򽻵�����
 */
public class DBAccess {
	public SqlSession getsqlsession() throws Exception {
		// ͨ�������ļ���ȡ���ݿ�������Ϣ
		Reader reader = Resources
				.getResourceAsReader("cn/wh/shop/config/Configuration.xml");
		// ͨ��������Ϣ����һ��SQLsessionFactory
		SqlSessionFactory factory = new SqlSessionFactoryBuilder()
				.build(reader);
		// ͨ��SQLsessionFactory��һ�����ݿ�Ự
		SqlSession openSession = factory.openSession();
		return openSession;
	}
}
