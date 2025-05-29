# Indicators

This directory contains Pine Script v6 indicators organized by category.

## Structure

- **Trend/**: Trend-following and trend-identification indicators
- **Momentum/**: Momentum and oscillator indicators
- **Volume/**: Volume-based indicators
- **Volatility/**: Volatility and range-based indicators

## Adding New Indicators

When adding a new indicator:

1. Create a subdirectory under the appropriate category
2. Include both `.pine` and `.md` files
3. Follow the coding guidelines in `coding_guidelines.md`
4. Ensure comprehensive documentation in the `.md` file

## Example Structure

```
Indicators/
├── Trend/
│   └── MovingAverage/
│       ├── moving_average.pine
│       └── moving_average.md
└── Momentum/
    └── RSI/
        ├── rsi.pine
        └── rsi.md
```
