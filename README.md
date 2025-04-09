**📊 Netflix Movies and TV Shows – Data Preprocessing Project**
This project focuses on data preprocessing and cleaning of a Netflix Movies and TV Shows dataset using Python and Pandas. 
It involves identifying and handling duplicates, null values, and performing basic data exploration to prepare the data for further analysis or visualization.

**🧰 Tools & Libraries Used**
Python
Pandas
NumPy 
Google Collab NoteBook

**📁 Dataset**
The dataset used is a CSV file containing information about Netflix's catalog of movies and TV shows. 
It includes attributes such as title, director, cast, country, release year, and more.


**🔧 Data Preprocessing Steps**
1.Imported Dataset: The dataset was read into a Pandas DataFrame using read_csv().
2.Initial Exploration: Checked the shape of the dataset to understand its size, Used .info() and .describe() to examine data types and summary statistics.
3.Duplicate Records: Checked for duplicate entries using data.duplicated().Identified and removed duplicate records where necessary using drop_duplicates().
4.Handling Null Values:Identified missing values using isnull().sum().
5.Replacing Null Values: Replaced missing values in 6 columns with reliable, meaningful data. Dropped 2 columns with minimal but irrelevant null data using dropna().
6.Data Cleaning Libraries: Utilized Pandas extensively for manipulation and cleaning.

**📌 Conclusion**
This preprocessing step ensures the dataset is clean, consistent, and ready for further analysis such as:
Data visualization
Feature engineering
Machine learning
Dashboard design


**🙌 Acknowledgments**
Dataset sourced from public domain repositories and Kaggle.


