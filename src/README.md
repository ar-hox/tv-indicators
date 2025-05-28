# Source Code

This directory contains all Pine Script source code for the repository.

## Structure

```
src/
├── indicators/          # Technical indicators
│   ├── trend/          # Trend-following indicators (MA, MACD, etc.)
│   ├── momentum/       # Momentum indicators (RSI, Stochastic, etc.)
│   ├── volume/         # Volume-based indicators (OBV, Volume Profile, etc.)
│   └── volatility/     # Volatility indicators (Bollinger Bands, ATR, etc.)
└── strategies/         # Trading strategies
    ├── trend-following/    # Trend-following strategies
    ├── mean-reversion/     # Mean reversion strategies
    └── breakout/          # Breakout strategies
```

## Categories

### Indicators

**Trend Indicators**
- Moving averages and crossover systems
- Trend identification and momentum
- Support and resistance levels

**Momentum Indicators**
- Oscillators and momentum measures
- Relative strength and rate of change
- Divergence detection

**Volume Indicators**
- Volume analysis and patterns
- Money flow and accumulation/distribution
- Volume-price relationship

**Volatility Indicators**
- Volatility measures and bands
- Range expansion and contraction
- Risk and uncertainty metrics

### Strategies

**Trend Following**
- Strategies that ride market trends
- Momentum-based entry and exit
- Trend continuation patterns

**Mean Reversion**
- Strategies that trade against the trend
- Overbought/oversold conditions
- Range-bound market exploitation

**Breakout**
- Strategies that trade price breakouts
- Support/resistance level breaks
- Volume-confirmed breakouts

## Quality Standards

All source code in this directory follows:

- **Pine Script v6** standards and best practices
- **Comprehensive documentation** for each script
- **Standardized naming conventions** and code structure
- **Thorough backtesting** for strategies
- **Performance optimization** and error handling

## Usage

1. Browse to the appropriate category directory
2. Each indicator/strategy has its own subdirectory
3. Copy the `.pine` file content to TradingView Pine Editor
4. Refer to the `.md` file for documentation and usage instructions

## Contributing

When adding new indicators or strategies:

1. Use the templates in `/templates/`
2. Follow the coding guidelines in `/docs/guides/coding_guidelines.md`
3. Place files in the appropriate category directory
4. Include comprehensive documentation
