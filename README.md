# TradingView Indicators & Strategies

This repository serves as my personal collection of custom indicators and strategies developed for the TradingView platform using Pine Script.

## Table of Contents

*   [Indicators](#indicators)
    *   [MA Panel](#ma-panel)
*   [Strategies](#strategies)
*   [License](#license)

## Indicators

### MA Panel (`moving-averages.pine`)

**Description:**

This indicator plots multiple Simple Moving Averages (SMAs) and Exponential Moving Averages (EMAs) on the chart. It also features a customizable information panel that displays the current values of each MA, dynamically sorted by their distance from the current closing price. This allows traders to quickly identify the nearest support/resistance levels based on the selected moving averages.

**Features:**

*   **Configurable MAs:**
    *   5 SMAs with customizable lengths and colors.
    *   5 EMAs with customizable lengths and colors.
*   **Dynamic Info Panel:**
    *   Displays the ID (e.g., "SMA 20", "EMA 9") and current value of each enabled MA.
    *   Sorts the MAs in the panel based on their absolute distance from the current close price (closest MA listed first).
    *   Customizable panel position, size, background color, border, and text alignment.
    *   Option to toggle the panel's visibility.
*   **Configurable Alerts:**
    *   Price crossing above/below the first SMA (SMA 1).
    *   Price crossing above/below the first EMA (EMA 1).
    *   SMA 1 crossing above/below SMA 2 (Golden/Death Cross).
    *   EMA 1 crossing above/below EMA 2 (Golden/Death Cross).
    *   Alerts are restricted to specific timeframes (60m, 240m, D, W) by default to reduce noise, but this can be modified in the script.
*   **Customizable Plotting:**
    *   Adjustable line width for all plotted MAs.

**How to Use:**

1.  Open the Pine Editor in TradingView.
2.  Copy the contents of `moving-averages.pine`.
3.  Paste the code into the Pine Editor.
4.  Click "Add to Chart".
5.  Configure the indicator settings (MA lengths, colors, panel options, alerts) as desired.

*(Add descriptions for future indicators here)*

## Strategies

*(Add descriptions for strategies here when available)*

## License

This project is proprietary and all rights are reserved.