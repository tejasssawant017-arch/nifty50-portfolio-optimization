Nifty 50 Risk-Return Analysis & Portfolio Optimization

An end-to-end financial analytics and portfolio optimization project evaluating 19 large-cap Nifty 50 stocks across 1,235 trading days (5 years of historical market data) to identify optimal risk-adjusted asset allocations using Modern Portfolio Theory (MPT).

🎯 Business Objective

Institutional and retail investors often struggle to balance maximum returns against market volatility. This project automates market data extraction, stores structured financial metrics in a relational database, applies mean-variance optimization, and delivers an executive Power BI dashboard for dynamic portfolio decision-making.

🛠️ Tech Stack

Data Extraction & Modeling: Python (yfinance, Pandas, NumPy, SciPy) in Google Colab

Database & Querying: MySQL

Business Intelligence & Visualization: Power BI (DAX)

🔄 Project Architecture & Workflow

Data Pipeline (Python): Extracted 5 years of daily OHLCV data for 19 Nifty 50 equities via yfinance. Cleaned missing trading days and computed daily log returns, annualized returns, annualized volatility, and covariance matrices.

Portfolio Optimization (SciPy): Implemented Modern Portfolio Theory (MPT) using scipy.optimize to simulate and solve for:

Maximum Sharpe Ratio Portfolio (Optimal risk-adjusted return)

Minimum Volatility Portfolio (Lowest risk exposure)

Database Structuring (MySQL): Designed relational tables to store historical prices, stock-level risk metrics, and optimal portfolio weights for structured SQL querying.

Executive Dashboard (Power BI): Built an interactive dashboard featuring risk-return scatter plots, correlation heatmaps, sector allocation breakdowns, and cumulative return comparisons.

📊 Key Analytical Highlights

Dataset Scale: 19 Nifty 50 tickers × 1,235 trading days (~23,465+ daily stock records analyzed).

Optimal Sharpe Ratio: [Insert your Max Sharpe Ratio, e.g., 1.42] with an expected annualized return of [Insert %] and volatility of [Insert %].

Diversification Impact: Demonstrated how combining low-correlation sectors reduces overall portfolio variance compared to single-stock or equal-weighted benchmarks.

🖥️ Dashboard Preview

🚀 How to Run

Clone this repository:

git clone https://github.com/tejasssawant017-arch/nifty50-portfolio-optimization.git


Open notebooks/nifty50_optimization.ipynb in Google Colab or Jupyter Notebook and run all cells to fetch updated market data and generate optimal weights.

Execute sql/nifty50_analysis.sql in MySQL Workbench to recreate the database tables and views.

Open dashboard/nifty50_dashboard.pbix in Power BI Desktop to explore the interactive visuals.