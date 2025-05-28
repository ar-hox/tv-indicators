# Templates

This directory contains template files to help contributors create consistent, high-quality indicators and strategies.

## Structure

```
templates/
├── indicators/              # Indicator templates
│   ├── indicator_template.pine    # Pine Script template
│   └── indicator_template.md      # Documentation template
└── strategies/              # Strategy templates
    ├── strategy_template.pine     # Pine Script template
    └── strategy_template.md       # Documentation template
```

## Available Templates

### Indicators (`/indicators/`)

- **`indicator_template.pine`**: Complete Pine Script v6 template for indicators
- **`indicator_template.md`**: Comprehensive documentation template for indicators

### Strategies (`/strategies/`)

- **`strategy_template.pine`**: Complete Pine Script v6 template for trading strategies
- **`strategy_template.md`**: Documentation template with backtesting sections

## How to Use Templates

1. **Copy the Template**: Copy the appropriate `.pine` and `.md` template files to your new indicator/strategy directory in `/src/`
2. **Rename Files**: Rename files to match your indicator/strategy name
3. **Replace Placeholders**: Replace all `[placeholder text]` with your specific content
4. **Follow Guidelines**: Ensure your implementation follows the coding guidelines in `/docs/guides/coding_guidelines.md`
5. **Test Thoroughly**: Test your implementation before submitting

## Template Features

### Pine Script Templates

- ✅ Proper Pine Script v6 structure and syntax
- ✅ Standardized commenting with `//@` annotations
- ✅ Organized sections (constants, inputs, functions, calculations, plotting)
- ✅ Error handling and performance optimization patterns
- ✅ Alert implementations and best practices
- ✅ Professional code organization

### Documentation Templates

- ✅ Consistent structure across all documentation
- ✅ Required sections for both indicators and strategies
- ✅ Comprehensive backtesting result templates for strategies
- ✅ Parameter documentation tables and usage examples
- ✅ Performance analysis and best practices sections

## Quality Checklist

Before submitting your indicator or strategy, ensure:

### Code Quality
- [ ] All `[placeholder text]` has been replaced with actual content
- [ ] Code follows the guidelines in `/docs/guides/coding_guidelines.md`
- [ ] Pine Script compiles without errors on TradingView
- [ ] All functions have proper `//@` documentation annotations
- [ ] Code is well-organized and follows template structure

### Documentation Quality
- [ ] Documentation is complete and accurate
- [ ] All parameter tables are filled out correctly
- [ ] Usage examples are provided and tested
- [ ] Backtesting results are included (for strategies)
- [ ] Files are placed in appropriate `/src/` category directories

### Testing
- [ ] Indicator/strategy tested on multiple timeframes
- [ ] Tested on different market conditions
- [ ] Performance is acceptable (no excessive lag)
- [ ] Alerts work correctly (if implemented)

## File Placement

After customizing templates, place your files in the appropriate directories:

### Indicators
```
src/indicators/
├── trend/              # Moving averages, MACD, etc.
├── momentum/           # RSI, Stochastic, etc.
├── volume/             # Volume indicators
└── volatility/         # Bollinger Bands, ATR, etc.
```

### Strategies
```
src/strategies/
├── trend-following/    # Trend-following strategies
├── mean-reversion/     # Mean reversion strategies
└── breakout/          # Breakout strategies
```

## Getting Help

If you need help using these templates:

1. **Review Guidelines**: Check `/docs/guides/coding_guidelines.md` for detailed standards
2. **Study Examples**: Look at existing indicators/strategies in `/src/` as examples
3. **Contributing Guide**: Refer to `/docs/guides/CONTRIBUTING.md` for submission guidelines
4. **Ask Questions**: Open an issue on GitHub if you have specific questions

## Best Practices

- **Start Simple**: Begin with the basic template structure before adding complexity
- **Test Early**: Test your code frequently during development
- **Document Everything**: Good documentation is as important as good code
- **Follow Conventions**: Consistent naming and structure help maintainability
- **Performance Matters**: Consider execution efficiency in your implementations
