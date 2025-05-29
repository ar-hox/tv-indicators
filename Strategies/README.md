# Strategies

This directory contains Pine Script v6 trading strategies organized by category.

## Structure

- **TrendFollowing/**: Strategies that follow market trends
- **MeanReversion/**: Strategies that trade mean reversion patterns
- **Breakout/**: Strategies that trade breakouts and momentum

## Adding New Strategies

When adding a new strategy:

1. Create a subdirectory under the appropriate category
2. Include both `.pine` and `.md` files
3. Follow the coding guidelines in `coding_guidelines.md`
4. Include comprehensive backtesting results in the `.md` file
5. Document risk management and entry/exit rules

## Example Structure

```
Strategies/
├── TrendFollowing/
│   └── MACrossover/
│       ├── ma_crossover_strategy.pine
│       └── ma_crossover_strategy.md
└── MeanReversion/
    └── BollingerBounce/
        ├── bollinger_bounce_strategy.pine
        └── bollinger_bounce_strategy.md
```

## Required Documentation

Each strategy must include:
- Strategy overview and logic
- Entry and exit conditions
- Risk management rules
- Backtesting results with key metrics
- Parameter descriptions
