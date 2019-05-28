# CA3Template - TILRET:

**1. Rename project:**<br> 
Change Display Name --> Project name/path 
Change ArtifactID --> Project name/path 
Rename Folder: --> Project name/path

**2. Opret DB på localhost:**
'DBnavn'
'DBnavn'integrationtest

**3. Opret DB på Droplet:**
'DBnavn'

**4. Tilret DB navn i "testdata.sql"-fil:**
Linie 1 --> Tilret navn efter "USE" til 'NYT DB NAVN'

**5. Tilret "Web Pages" --> "META-INF" --> "context.xml":**
Linie 2 --> Path på domænenavnet hvor projectet ligger efter upload

**6. Tilret "Test Packages" --> "accepttests" --> "AcceptTestDemo":**
Linie 16 --> Path på domænenavnet hvor projectet ligger efter upload

**7. Tilret "Test Packages" --> "integrationtests" --> "IntegrationTest":**
Linie 34 --> Path på domænenavnet hvor projectet ligger efter upload

**8. OPRET "pu.properties" til local DB:**
javax.persistence.jdbc.driver=com.mysql.cj.jdbc.Driver
javax.persistence.jdbc.url=jdbc:mysql://localhost:3306/ca3dev?zeroDateTimeBehavior=convertToNull //!"ca3dev" udskiftes med navnet på ny DB på localhost!
javax.persistence.jdbc.user=
javax.persistence.jdbc.password=
javax.persistence.schema-generation.database.action=drop-and-create
javax.persistence.sql-load-script-source=META-INF/testdata.sql

**9. OPRET "pu_integration_test.properties" til local DB:**
javax.persistence.jdbc.driver=com.mysql.cj.jdbc.Driver
javax.persistence.jdbc.url=jdbc:mysql://localhost:3306/ca3integrationtest?zeroDateTimeBehavior=convertToNull //!"ca3integrationtest" udskiftes med navnet på ny DB på localhost!
javax.persistence.jdbc.user=
javax.persistence.jdbc.password=
javax.persistence.schema-generation.database.action=create

**10. Droplet DB "pu_production.properties":**
javax.persistence.jdbc.driver=com.mysql.cj.jdbc.Driver
javax.persistence.jdbc.url=jdbc:mysql://localhost:3306/ca3 //!"ca3" udskiftes med navnet på ny DB på droplet!
javax.persistence.schema-generation.database.action=drop-and-create
javax.persistence.sql-load-script-source=META-INF/testdata.sql

**11. Lav GitHub Repository til project**
git init
git add .
git commit -m "First Project Commit"
git remote add origin 'GITHUB-URL' --> f.eks. "https://github.com/MortenFeldtStudent/CA3Template.git"
git push -u origin master

**12. Travis**
- Aktiver GitHub project i Travis
- Lav "environment-variables" som følgende:
--> REMOTE_USER = 
--> REMOTE_PW = 