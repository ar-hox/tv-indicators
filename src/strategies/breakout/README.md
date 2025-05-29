# Breakout Strategies

This directory contains Pine Script v6 trading strategies focused on breakout trading methodologies.

## Available Strategies

### Adaptive Volatility Compression Breakout (AVCB-MSC)
- **File**: `adaptive_volatility_compression_breakout.pine`
- **Documentation**: `adaptive_volatility_compression_breakout.md`
- **Type**: Multi-stage confirmation breakout strategy
- **Features**: 
  - Bollinger Band and Keltner Channel squeeze detection
  - Multi-timeframe trend filtering
  - Momentum and regime confirmation
  - ATR-based risk management
  - Trailing stop functionality

## Strategy Categories

Breakout strategies in this collection focus on identifying and trading price movements that break through significant support or resistance levels, often following periods of consolidation or compression.

Common characteristics:
- Volatility-based entry signals
- Multiple confirmation filters
- Adaptive risk management
- Trend and momentum alignment

## Usage Notes

- All strategies include comprehensive risk management
- Backtest thoroughly before live implementation
- Consider market conditions and instrument characteristics
- Monitor performance metrics and adjust parameters as needed

## Contributing

When adding new breakout strategies to this directory:
1. Follow the coding guidelines in `/docs/guides/coding_guidelines.md`
2. Include comprehensive documentation using the strategy template
3. Implement proper risk management and position sizing
4. Add appropriate alerts and visualization
5. Test across multiple market conditions