# jsp-term-project

텀프로젝트

이클립스 인코딩 설정
http://programmingskills.net/archives/536
http://dion-ko.tistory.com/4


커밋 할때 순서
http://jwgye.tistory.com/38


server.xml설정
<Context docBase="jsp_project" path="/jsp_project" reloadable="true" source="org.eclipse.jst.jee.server:jsp_project">
      <Resource auth="Container" driverClassName="org.mariadb.jdbc.Driver"
      maxIdle="30" maxTotal="100" maxWaitMillis="10000" name="jdbc/test" password="1234" type="javax.sql.DataSource" url="jdbc:mariadb://localhost:3306/project" username="root"/>
</Context>
