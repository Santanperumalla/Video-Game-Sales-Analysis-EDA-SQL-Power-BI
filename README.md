# 🎮 Video Game Sales Analytics

## 📌 Project Overview

This project presents a comprehensive **Video Game Sales Analytics** solution by combining **Python-based Exploratory Data Analysis (EDA)** with an **interactive Power BI Dashboard** to uncover meaningful insights from historical video game sales data.

The project analyzes over **16,000 video games** across different **platforms, publishers, genres, release years, and global regions** to identify sales trends, market leaders, and consumer preferences.

The Power BI dashboard transforms the analytical findings into an interactive business intelligence report, allowing users to explore sales performance dynamically using multiple filters and visualizations.

---

# 📂 Dataset Information

The dataset contains worldwide video game sales collected from multiple gaming platforms.

### Dataset Summary

* **Rows:** 16,598
* **Columns:** 11

### Features

| Column       | Description                      |
| ------------ | -------------------------------- |
| Rank         | Ranking based on Global Sales    |
| Name         | Video Game Title                 |
| Platform     | Gaming Platform                  |
| Year         | Release Year                     |
| Genre        | Game Genre                       |
| Publisher    | Publishing Company               |
| NA_Sales     | North America Sales (Millions)   |
| EU_Sales     | Europe Sales (Millions)          |
| JP_Sales     | Japan Sales (Millions)           |
| Other_Sales  | Other Regions Sales (Millions)   |
| Global_Sales | Total Worldwide Sales (Millions) |

---

# 🎯 Project Objectives

The primary objectives of this project are to:

* Perform data cleaning and preprocessing.
* Handle missing values and duplicate records.
* Explore historical game sales trends.
* Identify top-performing games, platforms, genres, and publishers.
* Compare regional sales performance.
* Build an interactive Power BI dashboard for business insights.
* Enable users to filter and analyze data dynamically.

---

# 🛠️ Technologies Used

### Data Analysis

* Python
* Pandas
* NumPy
* Matplotlib
* Jupyter Notebook

### Business Intelligence

* Power BI Desktop
* Power Query
* DAX
* Interactive Visualizations

---

# 🧹 Data Preprocessing

The dataset was cleaned before visualization by:

* Inspecting data types
* Handling missing values
* Removing duplicate records
* Verifying dataset consistency
* Preparing data for Power BI analysis

---

# 📊 Exploratory Data Analysis (Python)

Several exploratory analyses were performed to answer important business questions such as:

* How many gaming platforms exist?
* Which publishers generate the highest revenue?
* Which genres dominate the market?
* Which games achieved the highest global sales?
* How have sales evolved over time?
* Which regions contribute most to worldwide sales?

### Visualizations Created

* Genre Distribution
* Platform-wise Sales Analysis
* Year-wise Sales Trend
* Genre Percentage Chart
* Regional Sales Comparison
* Scatter Plot for Sales Relationships

---

# 📈 Power BI Dashboard

The project includes an interactive **Power BI dashboard** that provides a business-friendly view of video game sales.

## Dashboard Features

### 📌 Interactive Filters (Slicers)

Users can dynamically filter the report by:

* Date Range
* Publisher
* Platform
* Region
* Genre
* Sales Range

---

## 📊 KPI Cards

The dashboard highlights key performance indicators including:

| KPI              | Value               |
| ---------------- | ------------------- |
| Total Games      | **11K**             |
| Global Sales     | **$27.48K Million** |
| Average Sales    | **$0.60 Million**   |
| Total Publishers | **567**             |

---

## 📈 Dashboard Visualizations

### 📅 Global Sales Trend by Year

* Displays year-wise global sales performance.
* Highlights rapid market growth during the 2000s.
* Shows peak sales around **2008–2009**, followed by a gradual decline.

---

### 🎯 Sales by Genre

Compares global sales across genres.

Key observations:

* Action games dominate overall sales.
* Sports and Role-Playing games are among the highest-selling genres.
* Strategy and Adventure contribute comparatively lower sales.

---

### 🌍 Regional Sales Distribution

Shows sales contribution by region using a donut chart.

Regional breakdown includes:

* North America
* Europe
* Japan
* Other Regions

North America contributes the largest share of worldwide sales.

---

### 🎮 Sales by Platform

Ranks gaming platforms based on global sales.

Top-performing platforms include:

* PS2
* Wii
* Nintendo DS
* PlayStation
* Xbox 360
* PlayStation 3

---

### 🏆 Top 10 Best-Selling Games

Displays the highest-selling games along with:

* Game Name
* Platform
* Genre
* Global Sales

Some notable best-selling titles include:

* Wii Sports
* Super Mario Bros.
* Mario Kart Wii
* Duck Hunt
* Tetris
* New Super Mario Bros.

---

### 📋 Automated Insights Panel

The dashboard also includes a dynamic insights section summarizing important findings such as:

* Highest sales occurred during **2008–2009**.
* Action and Sports genres drive the largest revenue.
* PS2 and Wii dominate platform sales.
* North America remains the biggest gaming market.
* Nintendo franchises consistently appear among the best-selling games.

---

# 🔍 Key Business Insights

### Genre Analysis

* Action is the highest-selling genre.
* Sports and Role-Playing are also major contributors.
* Puzzle and Strategy represent niche markets.

### Platform Analysis

* PS2 generated the highest overall sales.
* Nintendo platforms consistently perform well.
* A small number of platforms account for most global revenue.

### Sales Trends

* The gaming industry experienced rapid growth from the late 1990s.
* Global sales peaked during **2008–2009**.
* Sales gradually declined afterward as console generations changed.

### Regional Analysis

* North America contributes the largest portion of worldwide sales.
* Europe is the second-largest market.
* Japan exhibits distinct genre preferences compared to other regions.
* Strong North American sales often correlate with global commercial success.

---

# 📁 Project Structure

```text
Video-Game-Sales/
│
├── Video Games Sales.sql
├── Video Games Sales.ipynb
├── Video Game Sales Dashboard.pbix
├── README.md
│
├── dashboard/
│   └── dashboard.png
```

---

# 🚀 How to Run the Project

## 1. Clone the Repository

```bash
git clone https://github.com/your-username/video-game-sales-analysis.git
```

## 2. Navigate to the Project Folder

```bash
cd video-game-sales-analysis
```

## 3. Install Required Libraries

```bash
pip install pandas numpy matplotlib
```

## 4. Launch the Jupyter Notebook

```bash
jupyter notebook
```

Open:

```text
Video Games Sales.ipynb
```

Run all cells to reproduce the EDA.

## 5. Open the Power BI Dashboard

Open the `.pbix` file using **Power BI Desktop** to explore the interactive dashboard.

---

# 📌 Conclusion

This project demonstrates an end-to-end data analytics workflow by integrating **Python for data cleaning and exploratory analysis** with **Power BI for interactive business intelligence reporting**.

The combination of statistical analysis and interactive visualizations provides actionable insights into historical video game sales, highlighting market trends, consumer preferences, platform performance, genre popularity, and regional demand. The dashboard enables users to explore the data dynamically, making it a valuable tool for business analysis and data-driven decision-making.

---

# 👤 Author

**Santan Perumalla**

**Aspiring Data Analyst**

**Skills:** Python • SQL • Power BI • Pandas • NumPy • Data Visualization • Exploratory Data Analysis • Business Intelligence
---

## ⭐ If you found this project useful, consider giving the repository a Star!
