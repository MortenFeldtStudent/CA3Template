# CA3Template - TILRET:

**1. Rename project:**<br> 
Change Display Name --> Project name/path<br>
Change ArtifactID --> Project name/path<br> 
Rename Folder: --> Project name/path

**2. Opret DB på localhost:**<br> 
'DBnavn'<br> 
'DBnavn'integrationtest

**3. Opret DB på Droplet:**<br>
'DBnavn'

**4. Tilret DB navn i "testdata.sql"-fil:**<br>
Linie 1 --> Tilret navn efter "USE" til 'NYT DB NAVN'

**5. Tilret "Web Pages" --> "META-INF" --> "context.xml":**<br>
Linie 2 --> Path på domænenavnet hvor projectet ligger efter upload

**6. Tilret "Test Packages" --> "accepttests" --> "AcceptTestDemo":**<br>
Linie 16 --> Path på domænenavnet hvor projectet ligger efter upload

**7. Tilret "Test Packages" --> "integrationtests" --> "IntegrationTest":**<br>
Linie 34 --> Path på domænenavnet hvor projectet ligger efter upload

**8. OPRET "pu.properties" til local DB:**<br>
javax.persistence.jdbc.driver=com.mysql.cj.jdbc.Driver<br>
javax.persistence.jdbc.url=jdbc:mysql://localhost:3306/ca3template?zeroDateTimeBehavior=convertToNull<br>
***//!"ca3template" udskiftes med navnet på ny DB på localhost!***<br>
javax.persistence.jdbc.user=<br>
javax.persistence.jdbc.password=<br>
javax.persistence.schema-generation.database.action=drop-and-create<br>
javax.persistence.sql-load-script-source=META-INF/testdata.sql

**9. OPRET "pu_integration_test.properties" til local DB:**<br>
javax.persistence.jdbc.driver=com.mysql.cj.jdbc.Driver<br>
javax.persistence.jdbc.url=jdbc:mysql://localhost:3306/ca3templateintegrationtest?zeroDateTimeBehavior=convertToNull<br>
***//!"ca3templateintegrationtest" udskiftes med navnet på ny DB på localhost!***<br>
javax.persistence.jdbc.user=<br>
javax.persistence.jdbc.password=<br>
javax.persistence.schema-generation.database.action=create

**10. Droplet DB "pu_production.properties":**<br>
javax.persistence.jdbc.driver=com.mysql.cj.jdbc.Driver<br>
javax.persistence.jdbc.url=jdbc:mysql://localhost:3306/ca3template<br> 
***//!"ca3template" udskiftes med navnet på ny DB på droplet!***<br>
javax.persistence.schema-generation.database.action=drop-and-create<br>
javax.persistence.sql-load-script-source=META-INF/testdata.sql

**11. Lav GitHub Repository til project**<br>
git init<br>
git add .<br>
git commit -m "First Project Commit"<br>
git remote add origin 'GITHUB-URL' --> f.eks. "https://github.com/MortenFeldtStudent/CA3Template.git"<br>
git push -u origin master

**12. Travis**<br>
Settings (til højre fra Git Repository) --> Lav "environment-variables" som følgende:<br>
--> REMOTE_USER = <br>
--> REMOTE_PW = <br><br>
Aktiver GitHub project i Travis