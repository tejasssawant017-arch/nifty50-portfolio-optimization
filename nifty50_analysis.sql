-- QUERY A: Overall Risk & Return Summary
SELECT 
    COALESCE(Sector, 'All Stocks') AS Sector,
    COUNT(Ticker) AS Stock_Count,
    ROUND(AVG(Annualized_Return_Pct), 2) AS Avg_CAGR_Pct,
    ROUND(AVG(Annualized_Volatility_Pct), 2) AS Avg_Volatility_Pct,
    ROUND(AVG(Sharpe_Ratio), 2) AS Avg_Sharpe_Ratio,
    ROUND(AVG(Max_Drawdown_Pct), 2) AS Avg_Max_Drawdown_Pct
FROM stock_risk_metrics
GROUP BY COALESCE(Sector, 'All Stocks')
ORDER BY Avg_Sharpe_Ratio DESC;

-- QUERY B: Top Performing Stocks Ranked by Sharpe Ratio
WITH RankedStocks AS (
    SELECT 
        Ticker,
        COALESCE(Sector, 'Nifty 50') AS Sector,
        Annualized_Return_Pct,
        Sharpe_Ratio,
        Max_Drawdown_Pct,
        RANK() OVER (ORDER BY Sharpe_Ratio DESC) AS Overall_Rank
    FROM stock_risk_metrics
)
SELECT * FROM RankedStocks ORDER BY Sharpe_Ratio DESC;