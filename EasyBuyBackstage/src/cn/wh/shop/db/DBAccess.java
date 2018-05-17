package cn.wh.shop.db;

import java.io.Reader;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

/**
 * @2018年5月4日
 * @王 鸿
 * @Administrator 用于和数据库打交道的类
 */
public class DBAccess {
	public SqlSession getsqlsession() throws Exception {
		// 通过配置文件获取数据库连接信息
		Reader reader = Resources
				.getResourceAsReader("cn/wh/shop/config/Configuration.xml");
		// 通过配置信息构建一个SQLsessionFactory
		SqlSessionFactory factory = new SqlSessionFactoryBuilder()
				.build(reader);
		// 通过SQLsessionFactory打开一个数据库会话
		SqlSession openSession = factory.openSession();
		return openSession;
	}
}
