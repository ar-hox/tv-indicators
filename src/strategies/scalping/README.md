# Scalping Strategies

This directory contains high-frequency scalping strategies designed for short-term trading opportunities.

## Available Strategies

### Bitcoin Scalping Beast
- **File**: `bitcoin_scalping_beast.pine`
- **Documentation**: `bitcoin_scalping_beast.md`
- **Timeframes**: 1m, 5m
- **Optimized for**: BTCUSD
- **Strategy Type**: Volume-weighted momentum scalping with dynamic S/R

**Key Features:**
- Volume-weighted RSI for enhanced momentum detection
- Dynamic support/resistance levels
- Volatility-based entry filtering
- Multi-timeframe trend confirmation
- Advanced risk management with ATR-based stops

## General Scalping Guidelines

### Best Practices
1. **Risk Management**: Never risk more than 1-3% per trade
2. **Market Conditions**: Focus on high volatility periods
3. **Session Timing**: Trade during major session overlaps
4. **Backtesting**: Test thoroughly with realistic commission/slippage
5. **Position Sizing**: Use proper risk-based position sizing

### Common Scalping Challenges
- **Execution Speed**: Ensure fast order execution
- **Commission Impact**: Account for higher frequency of trades
- **Emotional Discipline**: Maintain strict entry/exit rules
- **Market Noise**: Filter out false signals effectively

### Recommended Markets for Scalping
- Major cryptocurrency pairs (BTC, ETH)
- High-volume forex pairs (EUR/USD, GBP/USD)
- Liquid stock indices during active sessions
- Futures contracts with tight spreads

## Development Guidelines

When adding new scalping strategies to this directory:

1. Include comprehensive documentation
2. Implement proper risk management
3. Add performance metrics and tables
4. Include alert conditions
5. Test on multiple timeframes
6. Optimize for specific instruments when possible

## Risk Warning

Scalping strategies involve:
- High frequency trading with increased commission costs
- Significant emotional stress and decision fatigue
- Potential for rapid losses during adverse conditions
- Requirement for constant market monitoring

Always practice with paper trading before implementing with real capital.
