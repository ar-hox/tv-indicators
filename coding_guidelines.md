# Pine Script V6 Coding Guidelines

## Introduction

The purpose of these guidelines is to ensure that all Pine Script code within this repository is of high quality, consistent, easily maintainable, performant, and leverages the features of Pine Script v6. Adherence to these standards is crucial for developers contributing to this project and for users who rely on these scripts.

*Pine Script is evolving, and version 6 introduces features like dynamic requests and improved boolean logic, pushing it towards a more robust programming language. This evolution necessitates more sophisticated coding guidelines that mirror general software engineering best practices, moving beyond simple scripting. This repository aims to establish these higher standards.*

## General Principles

All scripts should embody the following principles <sup>7</sup>:

*   **Clarity:** Code should be easy to read and understand. Logic should be straightforward.
*   **Conciseness:** Avoid unnecessary complexity. Write code that is to the point.
*   **Modularity:** Break down complex logic into smaller, reusable functions. Utilize Pine Script libraries where appropriate for broader reusability.
*   **Efficiency:** Write scripts that perform well on TradingView's servers, minimizing calculation time and resource usage.
*   **Robustness:** Scripts should handle potential issues gracefully (e.g., `na` values, edge cases).
*   **Self-Documentation:** Code should be commented appropriately to explain its purpose and logic, especially for complex sections.

## Naming Conventions

Consistent naming improves readability and maintainability.<sup>7</sup>

*   **Variables and Functions:** Use `camelCase` (e.g., `fastMa`, `calculateRsiValue`, `isEntryConditionMet`).
*   **Constants:** Use `SNAKE_CASE_ALL_CAPS` (e.g., `MAX_LOOKBACK_PERIOD`, `DEFAULT_COLOR`, `ATR_MULTIPLIER`). Constants should be declared using the `const` keyword where their value is known at compile time and does not change.
*   **Input Variables:** Use `camelCase` and suffix with `Input` for clarity (e.g., `lengthInput`, `sourceInput`, `useFeatureInput`).
*   **Descriptive Names:** Choose names that clearly indicate the variable's or function's purpose. Avoid overly short or cryptic names.
*   **Boolean Variables:** Often prefixed with `is` or `show` (e.g., `isLong`, `showLabels`).

| Type               | Convention             | Example                   |
| :----------------- | :--------------------- | :------------------------ |
| Constant           | `SNAKE_CASE_ALL_CAPS`  | `PLOT_COLOR_GREEN`        |
| Variable           | `camelCase`            | `averageTrueRange`        |
| Function           | `camelCase`            | `calculateMovingAverage`  |
| Input Parameter    | `camelCase` + `Input`  | `smaLengthInput`          |
| Boolean Variable   | `is` / `has` `camelCase` | `isSignalActive`, `hasCrossed` |

## Script Organization

A standard script structure enhances readability and makes it easier to locate specific parts of the code.<sup>7</sup> The recommended order for Pine Script v6 is:

1.  **Version Declaration:** `//@version=6` (Mandatory first line unless it's a license block).
2.  **License Information (Optional):** Standard license comment block (e.g., MPL 2.0).
3.  **Declaration Statement:** `indicator()`, `strategy()`, or `library()` call.
4.  **Import Statements:** `import Username/LibraryName/Version as alias` for any Pine Script libraries used.
5.  **Constant Declarations:** Global constants defined with `const`.
6.  **Input Definitions:** All `input.*()` calls, grouped logically using the `group` parameter.
7.  **User-Defined Function Definitions:** All custom functions used within the script.
8.  **Core Calculations:** The main logic of the indicator or strategy.
9.  **Strategy Calls (for strategies):** `strategy.entry()`, `strategy.exit()`, `strategy.order()`, etc.
10. **Plotting and Visuals:** `plot()`, `plotshape()`, `bgcolor()`, `hline()`, `label.new()`, `table.new()`, etc.
11. **Alert Definitions:** `alert()` or `alertcondition()` calls.

| Order | Section Name                     | Brief Description                          |
| :---- | :------------------------------- | :----------------------------------------- |
| 1     | `//@version=6`                   | Specifies Pine Script version.             |
| 2     | License (Optional)               | Copyright and licensing information.       |
| 3     | `indicator()`/`strategy()`/`library()` | Declares script type and properties.       |
| 4     | `import` Statements              | Imports external Pine Script libraries.    |
| 5     | Constant Declarations            | Global constants (`const`).                |
| 6     | Input Definitions (`input.*()`)    | User-configurable parameters.            |
| 7     | Function Definitions             | Custom helper functions.                   |
| 8     | Core Calculations                | Main logic for indicators/strategies.      |
| 9     | Strategy Calls (Strategies only) | Order execution logic.                     |
| 10    | Plotting and Visuals             | Chart display elements.                    |
| 11    | Alert Definitions                | `alert()` or `alertcondition()` calls.     |

## Commenting Practices

Effective commenting is crucial for both developer understanding and automated documentation generation.<sup>7</sup>

*   **General Clarity:**
    *   Use `//` for single-line comments.
    *   Explain complex algorithms, non-obvious logic, or important assumptions.
    *   Comment on the purpose of significant variables if not clear from the name.
    *   Keep comments up-to-date with code changes.

*   **Documentation Generation (for Sphinx/LLM):**
    *   **Libraries:**
        *   `//@description Your library description here.` (Above `library()` call) <sup>12</sup>
    *   **Functions (User-Defined and Exported Library Functions):**
        ```pinescript
        //@function functionName
        //@param {type} paramName Description of the parameter.
        //@param {type} [optionalParamName=defaultValue] Description for optional parameter.
        //@returns {type} Description of the return value.
        // Place these annotations directly above the function definition. 9
        ```
    *   **User-Defined Types (UDTs):**
        ```pinescript
        //@type TypeName
        //@field {type} fieldName Description of the field.
        ```
    *   **Variables:**
        ```pinescript
        //@variable {type} variableName Description of the variable. // (Less common, but available)
        ```

*The discipline of using structured comments like `//@function` and `//@param` is not merely for human readability. It forms a direct and critical pathway for enabling automated documentation generation through tools like Sphinx and significantly enhances the ability of Large Language Models (LLMs) to understand the code's structure, intent, and API. If comments are informal or missing, Sphinx cannot effectively parse them to create API-like documentation, and LLMs will find it much harder to analyze, modify, or generate similar code accurately. Therefore, mandating these specific comment formats ensures the functional integrity of these advanced repository features.*

## Modularity and Functions

*   **User-Defined Functions:** Encapsulate reusable logic into functions to improve script organization, readability, and reduce redundancy.<sup>6</sup>
    *   Functions should ideally perform a single, well-defined task.
    *   Strive for functions with clear inputs and outputs. Minimize reliance on global variables within functions to enhance portability, as this undermines their reusability.
    *   **Limitations:** Remember that Pine Script functions cannot be nested, do not support recursion, and certain built-in functions (like `plot()`, `strategy.*()`) cannot be called from within user-defined functions.<sup>13</sup>

*   **Pine Script Libraries:** For functions that need to be reused across multiple different scripts, create and use Pine Script Libraries.<sup>6</sup>
    *   Library functions must have typed parameters and use the `export` keyword.
    *   Use `//@description` for the library and `//@function`, `//@param`, `//@returns` for exported functions.

## Error Handling

Pine Script v6 does not include traditional `try-catch` exception handling blocks. Therefore, error handling must be proactive by anticipating and managing potential issues:

*   **`na` Value Checks:** Always check for `na` (Not a Number) values before using them in calculations, especially for values returned by `request.security()` or complex calculations that might fail under certain conditions. Use `nz()` for a quick replacement with 0 or another default, or use `na()` or `not na()` for explicit checks.<sup>6</sup>
*   **Division by Zero:** Ensure denominators in division operations cannot be zero. Add a small epsilon or use `max(denominator, 10e-10)` if appropriate.
*   **Array/Matrix Indexing:** Always check array/matrix bounds before accessing elements to prevent "Index out of bounds" errors.
*   **Loop Constraints:** Be aware of execution time limits for loops (500ms per loop, 50,000 iterations total per bar for `for` loops). Design loops to be efficient and exit early if possible.<sup>17</sup>
*   **`request.security()` Limits:** TradingView limits `request.security()` calls to 40 unique calls per script instance. Plan requests carefully.
*   **Historical Buffer (`max_bars_back`):** If a script references too far into the past, it can cause "StudyError: Series is too long" or issues with `max_bars_back`. Ensure `max_bars_back` in `indicator/strategy` declaration is sufficient for the longest lookback period used, or use the `max_bars_back()` function for specific series.<sup>17</sup>

## Performance Optimization

Efficient scripts provide a better user experience and are less likely to hit TradingView's execution limits.<sup>6</sup>

*   **Execution Model Awareness:** Understand that Pine Script executes on each historical bar and then on each tick or bar close for real-time data. Many performance issues arise from misunderstanding this model and applying patterns from other languages (like heavy looping for data processing) that are inefficient in Pine.<sup>10</sup> Prioritize series-based operations and built-in functions.
*   **Minimize Calculations in Loops:** If a calculation inside a loop produces the same result on each iteration for a given bar, move it outside the loop.
*   **Use Built-in Functions:** Native functions (e.g., `ta.sma()`, `ta.highest()`) are highly optimized. Prefer them over custom implementations for common tasks.
*   **`request.security()` Calls:**
    *   These are resource-intensive. Minimize the number of calls.
    *   Fetch multiple values from the same symbol/timeframe in a single `request.security()` call using tuples: `[val1, val2] = request.security(syminfo.tickerid, "D", [high, low])`.
    *   In Pine Script v6, `dynamic_requests = true` is the default, allowing more flexibility but potentially impacting performance if not managed. For static requests, consider if `dynamic_requests = false` offers benefits, though v6 is optimized for dynamic usage.<sup>19</sup>
*   **`var` and `varip` Keywords:**
    *   Use `var` to declare variables that should retain their state across bars and only be initialized on the first bar (or when their initial value changes if re-assigned).
    *   Use `varip` (variable initialized on first bar and persists) for variables whose values are calculated once on the very first bar and never change. This is generally more performant than `var` for true constants calculated at runtime.<sup>19</sup>
    *   Avoid using `var` or `varip` unnecessarily for variables that are recalculated on every bar.
*   **Historical Buffer (`max_bars_back`):** Set `max_bars_back` in the `indicator()` or `strategy()` declaration to the minimum required by the script's longest lookback period. This helps manage memory and can prevent errors.<sup>17</sup>
*   **Array and Collection Operations:**
    *   Pre-size arrays using `array.new<type>(size)` if the size is known, rather than dynamically pushing elements, which can be less efficient for very large arrays.
    *   Be mindful of TradingView's limits on collection sizes.
*   **Avoid Redundant Calculations:** Store the results of expensive calculations in variables instead of re-computing them multiple times on the same bar.
*   **Conditional Plotting/Coloring:** Instead of using `if` statements to conditionally call `plot()`, use conditional expressions within the `plot()` arguments (e.g., `plot(condition ? value : na)`).

## Alerts

Clear and configurable alerts enhance script usability.<sup>18</sup>

*   **`alert()` function:**
    *   Use for dynamic alert messages and flexible triggering conditions directly within the script's logic.
    *   The `message` argument can include dynamic placeholders like `{{close}}`, `{{plot_0}}`, `{{strategy.order.action}}`, etc.
    *   The `freq` argument controls how often the alert can trigger (e.g., `alert.freq_once_per_bar`, `alert.freq_once_per_bar_close`).
*   **`alertcondition()` function:**
    *   Use to define alert conditions that will appear in TradingView's "Create Alert" dialog. Users then configure the alert settings through the UI.
    *   Cannot be used inside local scopes (loops, `if`-statements).
*   **Clarity:** Alert messages should be clear, concise, and informative.

## Strategies

Strategy scripts require careful consideration of execution logic and risk management.<sup>22</sup>

*   **Declaration:** Use `strategy()` with appropriate parameters (e.g., `title`, `overlay`, `initial_capital`, `default_qty_type`, `default_qty_value`, `commission_type`, `commission_value`, `slippage_points`).
*   **Entry and Exit Logic:** Clearly define conditions for `strategy.entry()`, `strategy.order()`, and `strategy.exit()` or `strategy.close()`.
*   **Risk Management:**
    *   Implement stop-loss and take-profit levels (e.g., using `strategy.exit()` with `stop` and `limit` parameters, or `loss` and `profit` in ticks).
    *   Utilize `strategy.risk.*` functions for more advanced risk controls:
        *   `strategy.risk.max_position_size()`
        *   `strategy.risk.max_drawdown()`
        *   `strategy.risk.max_cons_loss_days()`
        *   `strategy.risk.max_intraday_loss()`
        *   (Note: `strategy.risk.allow_entry_in` can control if entries are allowed in the direction of the trade or against it).
*   **Backtesting:** Be aware of how the broker emulator works, `calc_on_order_fills`, and `process_orders_on_close` for realistic backtesting.
*   **Comments:** Clearly document the strategy's logic, entry/exit rules, and risk management approach.

## Templates and Examples

This repository provides comprehensive templates to ensure consistency and quality:

*   **Indicator Template:** Use `Indicators/TEMPLATE.pine` and `Indicators/TEMPLATE.md` as starting points for new indicators.
*   **Strategy Template:** Use `Strategies/TEMPLATE.pine` and `Strategies/TEMPLATE.md` as starting points for new strategies.
*   **Structure Guidelines:**
    *   Follow the exact structure and organization shown in templates
    *   Maintain consistent commenting practices as demonstrated
    *   Include all required sections in documentation files
    *   Use the template input grouping and naming conventions

*The templates serve multiple purposes: they accelerate development, ensure consistency across contributors, provide examples of best practices, and facilitate AI agent integration by establishing clear patterns for code generation and analysis.*

By adhering to these guidelines, contributors can help ensure this repository remains a high-quality, valuable resource for the Pine Script community.

---
<sup>6, 7, 9, 10, 12, 13, 17, 18, 19, 22</sup> Conceptual citations for Pine Script features or best practices.
