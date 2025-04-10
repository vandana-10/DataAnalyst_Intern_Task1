**🚢 Titanic & Ports SQL Analysis**

This project involves exploratory data analysis using SQL on two datasets:

Titanic dataset: Contains information about passengers on the RMS Titanic.

Ports dataset: Contains information about ports relevant to the Titanic voyage.



**📊 Datasets**

**Titanic Dataset**

Key columns:

PassengerId

Name

Sex

Age

Pclass

SibSp

Parch

Fare

Survived

Embarked


**Ports Dataset**

Key columns:

PortCode

PortName

Country



**🔍 Analysis Goals**

Survival rates by class, gender, and age group

Fare distribution per embarkation port

Most common embarkation ports

Correlation between family size and survival

Enrich Titanic data with port info using joins



**🛠️ How to Run**

Create a database (e.g., PostgreSQL or SQLite).

Run create_tables.sql to define the schema.

Load CSV data using insert_data.sql or a database import tool.

Execute analysis_queries.sql to explore the data.

**🛠️ Techniques Used**

To perform the analysis, the following SQL techniques were used:

**JOIN** (including LEFT JOIN and INNER JOIN) to combine Titanic and Ports datasets

**Subqueries**  to filter, group, and compute aggregates

 **CASE statements**  to create custom categories (e.g., age groups or family size buckets)

**DROP** statements to clean up tables before reloading

**RENAME** operations to improve column clarity in results

**Aggregate functions** like COUNT(), AVG(), SUM(), and MAX()

**GROUP BY**  to summarize data by category

**ORDER BY** to sort results (e.g., highest survival rate)

**IN ,IS NULL , AND** conditions for filtering specific values

**HAVING** clauses to filter grouped results based on aggregate conditions


**✅ Requirements**

SQL engine (MySQL WORKBENCH)


**📌 Notes**

Missing values and data types were handled during table creation.

Embarked codes (C, Q, S) are matched with port names via the Ports dataset.

The analysis file DataAnalyst_intern_task3.sql contains all the queries with comments explaining each step.


