# Strategy Name Template

## Overview

Brief description of the trading strategy and its market approach.

## Strategy Logic

### Entry Rules
- **Long Entry**: Detailed conditions for long positions
- **Short Entry**: Detailed conditions for short positions

### Exit Rules
- **Take Profit**: Profit-taking conditions
- **Stop Loss**: Risk management rules
- **Time-based Exit**: Any time-based exit conditions

## Parameters

| Parameter | Type | Default | Description |
|-----------|------|---------|-------------|
| `fast_length` | int | 10 | Fast moving average period |
| `slow_length` | int | 21 | Slow moving average period |
| `stop_loss_pct` | float | 2.0 | Stop loss percentage |
| `take_profit_pct` | float | 4.0 | Take profit percentage |

## Risk Management

- **Position Sizing**: How position size is determined
- **Maximum Risk**: Maximum risk per trade
- **Portfolio Allocation**: Recommended allocation

## Backtesting Results

### Test Parameters
- **Symbol**: BTCUSD (or specify test symbol)
- **Timeframe**: 1H (or specify timeframe)
- **Date Range**: 2023-01-01 to 2024-01-01
- **Initial Capital**: $10,000

### Performance Metrics
| Metric | Value |
|--------|-------|
| Net Profit | $X,XXX |
| Profit Factor | X.XX |
| Win Rate | XX% |
| Maximum Drawdown | XX% |
| Sharpe Ratio | X.XX |
| Total Trades | XXX |

### Monthly Returns
*Include monthly performance breakdown*

## Usage Examples

### Basic Configuration
```pinescript
// Example strategy setup
strategy("Strategy Name", overlay=true)
```

### Custom Parameters
```pinescript
// Advanced configuration
// Parameter optimization examples
```

## Market Conditions

- **Best Performance**: Market conditions where strategy excels
- **Poor Performance**: Conditions to avoid or modify approach
- **Seasonal Effects**: Any seasonal considerations

## Optimization Notes

- **Parameter Sensitivity**: Which parameters are most sensitive
- **Overfitting Risks**: Warnings about over-optimization
- **Robustness**: How robust the strategy is across different markets

## Related Strategies

- [Related Strategy 1](../path/to/strategy1.md)
- [Related Strategy 2](../path/to/strategy2.md)

## Version History

- v1.0: Initial implementation
- v1.1: Improved risk management
- v1.2: Added parameter optimization