# Multi-Period Simple Moving Average

## Overview

The Multi-Period Simple Moving Average indicator displays three customizable simple moving averages on the chart simultaneously. This allows traders to analyze multiple timeframes of trend information at once and identify trend strength and direction.

## Features

- **Three configurable SMA periods** with default values of 20, 50, and 200
- **Visual trend analysis** with fill areas between moving averages
- **Automatic signal generation** for bullish and bearish trend changes
- **Real-time value display** in a convenient table format
- **Customizable colors and line styles**
- **Built-in alert conditions** for trend changes

## Parameters

| Parameter | Type | Default | Description |
|-----------|------|---------|-------------|
| SMA 1 Length | Integer | 20 | Period for the first (fastest) moving average |
| SMA 2 Length | Integer | 50 | Period for the second (medium) moving average |
| SMA 3 Length | Integer | 200 | Period for the third (slowest) moving average |
| Source | Price Source | close | Price source for calculations |
| SMA 1 Color | Color | Blue | Color for the first moving average |
| SMA 2 Color | Color | Orange | Color for the second moving average |
| SMA 3 Color | Color | Red | Color for the third moving average |
| Line Width | Integer | 2 | Width of the moving average lines |
| Show Fill | Boolean | true | Enable/disable fill between first two SMAs |

## Logic

The indicator calculates three simple moving averages using the formula:

```
SMA = (Sum of closing prices over N periods) / N
```

### Trend Detection

- **Bullish Trend**: SMA1 > SMA2 > SMA3 (shorter periods above longer periods)
- **Bearish Trend**: SMA1 < SMA2 < SMA3 (shorter periods below longer periods)
- **Neutral/Sideways**: Mixed arrangement of moving averages

### Visual Signals

- **Green fill**: When SMA1 > SMA2 (short-term bullish momentum)
- **Red fill**: When SMA1 < SMA2 (short-term bearish momentum)
- **▲ symbol**: New bullish trend formation
- **▼ symbol**: New bearish trend formation

## Usage

### Basic Trend Analysis
1. **Uptrend**: All three lines sloping upward with price above SMAs
2. **Downtrend**: All three lines sloping downward with price below SMAs
3. **Consolidation**: SMAs clustered together with mixed price action

### Signal Interpretation
- **Golden Cross**: When shorter SMA crosses above longer SMA (bullish)
- **Death Cross**: When shorter SMA crosses below longer SMA (bearish)
- **Multiple confirmation**: Look for alignment of all three SMAs for stronger signals

### Best Practices
- Use on higher timeframes (4H, Daily) for more reliable signals
- Combine with volume analysis for confirmation
- Consider market context and overall trend direction
- Adjust periods based on asset volatility and trading style

## Alert Conditions

The indicator includes two built-in alert conditions:
- **Bullish Trend Alert**: Triggered when a new bullish trend is detected
- **Bearish Trend Alert**: Triggered when a new bearish trend is detected

## Common Configurations

### Day Trading (Short-term)
- SMA Periods: 9, 21, 50
- Timeframe: 5M, 15M

### Swing Trading (Medium-term)
- SMA Periods: 20, 50, 200 (default)
- Timeframe: 1H, 4H, Daily

### Position Trading (Long-term)
- SMA Periods: 50, 100, 200
- Timeframe: Daily, Weekly

## Limitations

- Lagging indicator (based on historical prices)
- May generate false signals in choppy/sideways markets
- Performance varies across different market conditions
- Requires confirmation from other technical indicators

## Version History

- v1.0: Initial release with basic multi-SMA functionality
- v1.1: Added visual enhancements and signal generation
- v1.2: Improved alert system and table display
