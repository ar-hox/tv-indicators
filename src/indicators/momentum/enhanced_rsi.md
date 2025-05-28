# Enhanced RSI with Divergence Detection

## Overview

The Enhanced RSI (Relative Strength Index) indicator builds upon the traditional RSI with advanced features including dynamic overbought/oversold levels, divergence detection, and comprehensive signal generation. This enhanced version adapts to market volatility and provides more sophisticated analysis capabilities.

## Features

- **Traditional RSI calculation** with customizable period
- **Dynamic overbought/oversold levels** that adjust based on market volatility
- **Automatic divergence detection** for both bullish and bearish signals
- **Multiple signal types** including oversold/overbought and midline crosses
- **Visual enhancements** with background fills and clear signal markers
- **Comprehensive alert system** for all signal types
- **Real-time information table** with current values and market state

## Parameters

| Parameter | Type | Default | Description |
|-----------|------|---------|-------------|
| RSI Length | Integer | 14 | Period for RSI calculation |
| Source | Price Source | close | Price source for RSI calculation |
| Overbought Level | Float | 70 | Static overbought threshold |
| Oversold Level | Float | 30 | Static oversold threshold |
| Use Dynamic Levels | Boolean | false | Enable volatility-adjusted levels |
| Volatility Period | Integer | 20 | Period for volatility calculation |
| Show Divergence | Boolean | true | Enable divergence detection |
| Divergence Lookback | Integer | 5 | Lookback period for divergence analysis |
| RSI Line Color | Color | Purple | Color of the main RSI line |
| Show Background Fill | Boolean | true | Enable background color coding |

## Logic

### RSI Calculation
The RSI is calculated using the standard formula:
```
RSI = 100 - (100 / (1 + RS))
RS = Average Gain / Average Loss over N periods
```

### Dynamic Level Adjustment
When dynamic levels are enabled:
```
Volatility = ATR(period) / SMA(close, period) * 100
Dynamic OB = min(90, static_ob + volatility * 0.5)
Dynamic OS = max(10, static_os - volatility * 0.5)
```

### Divergence Detection

#### Bullish Divergence
- Price makes a lower low
- RSI makes a higher low
- Occurs when RSI is below 50
- Suggests potential upward price reversal

#### Bearish Divergence
- Price makes a higher high
- RSI makes a lower high
- Occurs when RSI is above 50
- Suggests potential downward price reversal

## Signal Types

### Primary Signals
1. **Oversold Recovery**: RSI crosses above oversold level
2. **Overbought Decline**: RSI crosses below overbought level
3. **Bullish Momentum**: RSI crosses above 50 (midline)
4. **Bearish Momentum**: RSI crosses below 50 (midline)

### Advanced Signals
5. **Bullish Divergence**: Price and RSI divergence suggesting upward reversal
6. **Bearish Divergence**: Price and RSI divergence suggesting downward reversal

## Usage

### Basic RSI Trading
- **Buy signals**: RSI oversold recovery, bullish divergence
- **Sell signals**: RSI overbought decline, bearish divergence
- **Trend confirmation**: RSI above/below 50 for trend direction

### Advanced Strategies
- **Divergence trading**: Focus on divergence signals for reversal opportunities
- **Dynamic level trading**: Use volatility-adjusted levels for better timing
- **Multi-timeframe analysis**: Combine with higher timeframe RSI for confirmation

### Risk Management
- **False signals**: RSI can remain overbought/oversold for extended periods
- **Trend strength**: Strong trends may invalidate traditional RSI signals
- **Volume confirmation**: Use volume indicators to confirm RSI signals

## Dynamic vs. Static Levels

### Static Levels (Traditional)
- Fixed overbought (70) and oversold (30) levels
- Simple and widely recognized
- May not adapt to changing market conditions

### Dynamic Levels (Enhanced)
- Adjust based on current market volatility
- More responsive to market conditions
- Reduce false signals in volatile markets
- May be less familiar to traditional RSI users

## Best Practices

### Timeframe Selection
- **Short-term**: 5M, 15M for scalping with lower RSI periods (9-11)
- **Medium-term**: 1H, 4H with standard period (14)
- **Long-term**: Daily, Weekly with higher periods (21-25)

### Market Conditions
- **Trending markets**: Focus on momentum signals (midline crosses)
- **Range-bound markets**: Emphasize overbought/oversold signals
- **Volatile markets**: Enable dynamic levels for better adaptation

### Confirmation Indicators
- **Volume**: Confirm signals with volume spikes
- **Price action**: Look for support/resistance at signal levels
- **Trend indicators**: Ensure signals align with overall trend direction

## Alert Conditions

The indicator provides six alert types:
1. RSI Oversold - When RSI crosses above oversold level
2. RSI Overbought - When RSI crosses below overbought level
3. Bullish Divergence - When bullish divergence is detected
4. Bearish Divergence - When bearish divergence is detected
5. RSI Bullish - When RSI crosses above 50
6. RSI Bearish - When RSI crosses below 50

## Limitations

- **Lagging nature**: RSI is based on historical price data
- **False signals**: May generate signals in choppy, sideways markets
- **Extreme conditions**: Can remain overbought/oversold longer than expected
- **Divergence subjectivity**: Divergence interpretation may vary between traders

## Performance Tips

- **Combine with trend analysis**: Use with moving averages or trend lines
- **Multiple timeframe confirmation**: Verify signals across different timeframes
- **Market context**: Consider overall market conditions and news events
- **Backtesting**: Test settings on historical data before live trading

## Version History

- v1.0: Basic enhanced RSI with divergence detection
- v1.1: Added dynamic overbought/oversold levels
- v1.2: Improved divergence algorithm and visual enhancements
- v1.3: Enhanced alert system and information table
