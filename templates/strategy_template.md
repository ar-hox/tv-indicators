# [Strategy Name]

## Overview

[Provide a clear, concise description of the trading strategy, its methodology, and market conditions where it performs best.]

## Description

[Detailed explanation of the strategy's logic, theoretical foundation, and the market inefficiency or pattern it aims to exploit.]

## Strategy Logic

### Entry Rules

**Long Entry:**
- [Condition 1]
- [Condition 2]
- [Additional conditions]

**Short Entry:**
- [Condition 1]
- [Condition 2]
- [Additional conditions]

### Exit Rules

**Stop Loss:**
- [Description of stop loss methodology]
- Default: [X]% from entry price

**Take Profit:**
- [Description of take profit methodology]
- Default: [X]% from entry price

**Time-based Exit:**
- [If applicable, describe any time-based exit rules]

## Parameters

| Parameter | Type | Default | Range | Description |
|-----------|------|---------|-------|-------------|
| Fast Length | Integer | 10 | 1-100 | [Description of fast period] |
| Slow Length | Integer | 20 | 1-200 | [Description of slow period] |
| Stop Loss (%) | Float | 2.0 | 0.1-10.0 | Stop loss percentage from entry |
| Take Profit (%) | Float | 4.0 | 0.1-20.0 | Take profit percentage from entry |

## Backtesting Results

### Test Configuration

- **Symbol**: [e.g., EURUSD, SPY, BTC/USD]
- **Timeframe**: [e.g., 1H, 4H, 1D]
- **Period**: [Start Date] to [End Date]
- **Initial Capital**: $10,000
- **Commission**: 0.1%
- **Slippage**: 1 point

### Performance Metrics

| Metric | Value | Benchmark (Buy & Hold) |
|--------|-------|------------------------|
| Net Profit | $[X,XXX] | $[X,XXX] |
| Total Return | [X]% | [X]% |
| Profit Factor | [X.XX] | N/A |
| Win Rate | [XX]% | N/A |
| Maximum Drawdown | [X]% | [X]% |
| Sharpe Ratio | [X.XX] | [X.XX] |
| Sortino Ratio | [X.XX] | [X.XX] |
| Total Trades | [XXX] | 1 |
| Average Trade | $[XXX] | N/A |
| Max Consecutive Wins | [XX] | N/A |
| Max Consecutive Losses | [XX] | N/A |

### Equity Curve Analysis

[Include description of equity curve behavior, drawdown periods, and performance consistency]

### Trade Distribution

[Analysis of winning vs losing trades, average holding period, etc.]

## Risk Management

### Position Sizing

[Describe how position sizes are determined]

### Risk Controls

- **Maximum Risk per Trade**: [X]%
- **Maximum Drawdown Limit**: [X]%
- **Correlation Limits**: [If applicable]

### Risk Metrics

- **Value at Risk (VaR)**: [X]% (95% confidence)
- **Maximum Daily Loss**: [X]%
- **Risk-Adjusted Return**: [X.XX]

## Performance Analysis

### Market Conditions

**Bull Markets:**
- [Performance characteristics during uptrends]

**Bear Markets:**
- [Performance characteristics during downtrends]

**Sideways Markets:**
- [Performance characteristics during consolidation]

### Seasonality

[Any seasonal patterns or time-of-day effects if applicable]

### Correlation with Market Indices

[How the strategy performs relative to major market indices]

## Optimization Notes

### Parameter Sensitivity

[Discussion of how sensitive the strategy is to parameter changes]

### Robustness Testing

[Results of walk-forward analysis, out-of-sample testing, or Monte Carlo simulation]

### Overfitting Concerns

[Discussion of measures taken to avoid curve-fitting]

## Usage Guidelines

### Best Practices

- [Recommendation 1]
- [Recommendation 2]
- [Recommendation 3]

### Market Conditions

**Recommended Markets:**
- [List of suitable markets/instruments]

**Avoid During:**
- [Market conditions to avoid]
- [Economic events that may impact performance]

### Position Management

[Guidelines for managing open positions, scaling in/out, etc.]

## Code Structure

### Key Functions

- `calculateSignal()`: [Description]
- [Other important functions]

### Variables

- `signal`: [Description]
- `longCondition`: [Description]
- `shortCondition`: [Description]

## Alerts

This strategy provides the following alerts:

- **Long Entry**: Triggered when [condition]
- **Short Entry**: Triggered when [condition]
- **Position Closed**: Triggered when [condition]

## Performance Monitoring

### Key Metrics to Track

- [Metric 1 and why it's important]
- [Metric 2 and why it's important]
- [Metric 3 and why it's important]

### Warning Signs

- [Red flag 1]
- [Red flag 2]
- [When to stop using the strategy]

## Future Enhancements

[Ideas for improving the strategy or areas for further research]

## Related Strategies

- [Similar strategy 1]
- [Similar strategy 2]
- [How they complement each other]

## References

- [Academic papers or books]
- [Trading methodology sources]
- [Market research references]

## Disclaimer

[Standard disclaimer about past performance, forward-looking statements, and risk warnings]

## Version History

- **v1.0**: Initial implementation
- [List version changes and improvements]
