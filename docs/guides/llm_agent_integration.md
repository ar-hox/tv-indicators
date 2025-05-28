# LLM Agent Integration Guide

## Introduction

This repository is designed with Large Language Model (LLM) agent interaction in mind. The structure of the code, comments, and accompanying Markdown documentation aims to provide a rich, machine-readable context that can be leveraged by LLMs for various tasks related to Pine Script development and analysis. This guide outlines how the repository facilitates such integration and explores potential use cases.

The careful structuring of the repository, with its well-commented code and detailed Markdown explanations, serves as a high-quality, domain-specific dataset. This dataset can be invaluable for fine-tuning LLMs specifically for Pine Script-related tasks or for use in Retrieval Augmented Generation (RAG) systems, significantly improving the accuracy and relevance of LLM outputs compared to general-purpose models.

## Key Repository Features for LLM Interaction

*   **Structured Comments in `.pine` Files:**
    *   Pine Script v6 supports special comment annotations like `//@function`, `//@param`, `//@returns`, `//@description`, `//@type`, `//@enum`, and `//@field`.
    *   This repository mandates their use for all user-defined functions and library exports.
    *   **LLM Benefit:** These annotations provide explicit metadata about functions (name, parameters, types, return values, description), allowing LLMs to understand their signatures and purposes more accurately, akin to how they might parse Javadoc or Python docstrings.
*   **Detailed `.md` Documentation:**
    *   Each indicator and strategy `.pine` file is accompanied by a corresponding `.md` file.
    *   These Markdown files contain natural language explanations of the script's purpose, parameters, calculation logic, trading signals, and usage examples.
    *   **LLM Benefit:** This narrative content provides crucial context that LLMs can process to understand the "why" and "how" behind a script, beyond just the raw code. This is essential for tasks like explaining code or modifying it based on conceptual changes.
*   **Sphinx Documentation Output:**
    *   The `.md` files are processed by Sphinx to generate a structured HTML documentation site.
    *   **LLM Benefit:** The generated HTML, with its clear hierarchy, cross-references, and searchability, can be scraped and indexed by LLMs to build a comprehensive knowledge base of the repository's content.
*   **`coding_guidelines.md`:**
    *   This file details the coding standards, naming conventions, and best practices for the repository.
    *   **LLM Benefit:** LLMs can be instructed to use these guidelines when generating new Pine Script code or modifying existing scripts, ensuring that AI-assisted contributions align with the repository's quality standards.
*   **`backtesting_and_optimization.md`:**
    *   This file explains backtesting metrics and concepts.
    *   **LLM Benefit:** LLMs can use this information to help analyze backtesting results provided in strategy `.md` files or to discuss optimization approaches.

The effectiveness of LLMs in tasks like code generation, modification, and analysis is directly proportional to the quality and structure of the input data. The more descriptive and well-organized the `.md` files and code comments are, the better an LLM can perform. This creates a strong incentive for maintaining high documentation standards, as it benefits both human developers and AI assistants.

## Use Cases for LLM Agents

LLMs can act as powerful assistants for various Pine Script related tasks within this repository:

1.  **Code Generation:**
    *   **Task:** Prompting an LLM to create a new indicator or strategy based on a natural language description.
    *   **Context:** Provide the LLM with `coding_guidelines.md`, relevant examples from the `Indicators/` or `Strategies/` directories, and potentially the Pine Script v6 language reference (if available to the LLM).
    *   **Example Prompt Structure:**
        ```
        You are an expert Pine Script v6 programmer. Using the coding guidelines from 'coding_guidelines.md' and the structure of 'Indicators/Trend/MovingAverage/moving_average.pine' and 'Indicators/Trend/MovingAverage/moving_average.md' as a template, generate a new Pine Script v6 indicator that calculates and plots a Hull Moving Average (HMA).
        The indicator should:
        - Be named 'Hull Moving Average'.
        - Have an input for the HMA period (integer, default 16).
        - Plot the HMA on the chart.
        - Include structured comments for the indicator declaration and any helper functions.
        - Also, generate the corresponding 'hull_moving_average.md' file explaining its parameters, calculation (briefly), and usage.
        ```
        This use case is supported by repositories like "Pydantic-AI-Pinescript-Expert" which aim to generate custom indicators/strategies.

2.  **Strategy Modification:**
    *   **Task:** Asking an LLM to modify an existing strategy based on new requirements.
    *   **Context:** Provide the `.pine` file of the strategy to be modified, its corresponding `.md` file, and the specific changes required.
    *   **Example Prompt Structure:**
        ```
        Given the 'Strategies/TrendFollowing/MACrossover/ma_crossover_strategy.pine' and 'Strategies/TrendFollowing/MACrossover/ma_crossover_strategy.md' files:
        1. Modify the Pine Script to add a condition where a long entry only occurs if the 14-period RSI is below 70, and a short entry only occurs if RSI is above 30.
        2. Update the risk management to use a fixed 2% stop loss and a 4% take profit from the entry price.
        3. Ensure all changes adhere to 'coding_guidelines.md'.
        4. Briefly explain the changes made and update the 'Entry Rules' and 'Risk Management' sections in the provided 'ma_crossover_strategy.md' content.
        ```

3.  **Code Explanation and Documentation:**
    *   **Task:** Requesting an LLM to explain a complex section of Pine Script or to generate an initial draft of the `.md` documentation for a new script.
    *   **Context:** Provide the `.pine` script.
    *   **Example Prompt Structure:**
        ```
        Explain the logic of the 'Silence Protocol' section in 'Indicators/Trend/SuperTrendSilentShadow/supertrend_silent_shadow.pine'. Then, draft the 'Parameters' and 'Calculation' sections for its 'supertrend_silent_shadow.md' file based on the script's inputs and logic.
        ```

4.  **Backtesting Analysis and Optimization Ideas:**
    *   **Task:** Feeding backtesting results (e.g., from a strategy's `.md` file or TradingView's Strategy Tester output) to an LLM for interpretation or to suggest optimization avenues.
    *   **Context:** Provide the strategy's `.pine` and `.md` files (including backtest results), and `backtesting_and_optimization.md`.
    *   **Example Prompt Structure:**
        ```
        The strategy 'Strategies/MeanReversion/BollingerBounce/bollinger_bounce_strategy.md' shows a Profit Factor of 1.2 and a Max Drawdown of 25% on EURUSD H1.
        1. Based on 'backtesting_and_optimization.md', interpret these results.
        2. Suggest 3 parameters from 'bollinger_bounce_strategy.pine' that could be optimized to potentially improve the Profit Factor while managing drawdown. Provide a brief rationale for each suggestion.
        ```

## Conceptual Workflow for LLM Interaction

1.  **Context Provision:** Supply the LLM with the necessary files and information. This might involve:
    *   Pasting the content of relevant `.pine` files.
    *   Providing the text of `.md` documentation files.
    *   Including the content of `coding_guidelines.md` or other relevant guideline documents in the prompt or as part of a pre-prompt/system message.
2.  **Effective Prompt Engineering:** Craft clear, specific, and context-rich prompts. The more precise the prompt, the better the LLM's output is likely to be.
3.  **Iterative Refinement:** LLM outputs may not be perfect on the first try. Be prepared to iterate, provide feedback, and refine prompts to achieve the desired outcome.
4.  **Human Review and Testing:** Crucially, all code generated or modified by an LLM must be thoroughly reviewed and tested by a human developer. LLMs can make mistakes, introduce subtle bugs, or misunderstand nuances of Pine Script or trading logic.

## Limitations and Considerations

*   **LLMs are Tools, Not Replacements:** LLMs should be viewed as powerful assistants, not infallible experts. Human oversight, domain knowledge, and critical thinking remain essential.
*   **Pine Script Nuances:** While LLMs are rapidly improving, they may not always grasp all the specific nuances, limitations, or best practices of Pine Script v6, especially its execution model.
*   **Hallucinations/Inaccuracies:** LLMs can sometimes generate plausible-sounding but incorrect information or code.
*   **Testing is Paramount:** Rigorous testing of any LLM-generated or modified code on historical data (backtesting) and preferably paper trading is non-negotiable before any live deployment.

By leveraging the structured nature of this repository, developers can significantly enhance their productivity and explore new possibilities in Pine Script development with the assistance of LLM agents. This integration has the potential to democratize script development, allowing traders with strong conceptual ideas but perhaps less coding expertise to bring their strategies to life more effectively, guided by the repository's established standards and high-quality examples.

## Table: Example LLM Prompts for Pine Script Tasks

| Task                                   | Example Prompt Snippet (Illustrative)                                                                                                                                                               |
| -------------------------------------- | --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| Generate RSI Indicator                 | "Generate a Pine Script v6 indicator named 'MyRSI' that calculates and plots a 14-period RSI. Include inputs for RSI length, overbought (70), and oversold (30) levels. Plot OB/OS lines. Follow `coding_guidelines.md`. Create a corresponding `.md` file explaining parameters and usage." |
| Modify MA Crossover Strategy           | "Take `Strategies/TrendFollowing/MACrossover/ma_crossover_strategy.pine`. Add an ATR-based trailing stop loss with a multiplier of 2. Update the `ma_crossover_strategy.md` to reflect this change in the 'Risk Management' section." |
| Explain OBV Calculation Logic          | "Explain the Pine Script code for calculating On-Balance Volume (OBV) found in `Indicators/Volume/OnBalanceVolume/on_balance_volume.pine`. Focus on the core calculation logic and how volume is accumulated based on price changes." |
| Analyze Backtest & Suggest Optimization | "Given the backtest results in `Strategies/Breakout/DonchianBreakout/donchian_breakout_strategy.md` (Net Profit: X, Max Drawdown: Y), and the code in `.pine` file, suggest two input parameters to optimize for potentially higher Sharpe Ratio. Explain your reasoning." |
