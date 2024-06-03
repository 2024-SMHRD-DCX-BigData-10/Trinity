package mybatis;

import java.io.InputStream;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

public class SqlSessionManager {

	//해당 클래스를 생성했을때 무조건 실행되는 영억
	//세션==커넥션
	//db연결을 미리 하는것>>커넥션풀 >cp
	//시스템의 성능을 향상시키기 위해 cp를 사용
	static SqlSessionFactory sqlSessionFactory;
	
	static {
		try {
			String resource = "Project1/src/main/java/mybatis/mybatis-config.xml";
			InputStream inputStream = Resources.getResourceAsStream(resource);
			 sqlSessionFactory = new SqlSessionFactoryBuilder().build(inputStream);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	public static SqlSessionFactory getSqlSession() {
		return sqlSessionFactory;
	}
	
}
