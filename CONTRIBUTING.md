# Contributing to the Pine Script V6 Master Repository

We welcome and encourage contributions from the community to help make this repository a valuable resource for Pine Script developers and traders. By contributing, you help improve the quality of examples, documentation, and tooling available.

## Philosophy

Our goal is to maintain a high standard of quality for all code and documentation within this repository. We believe in:

*   **Quality over Quantity:** Well-crafted, robust, and clearly documented scripts are preferred.
*   **Adherence to Guidelines:** Consistency in coding style and documentation format is crucial.
*   **Community Driven:** This is a collaborative effort, and respectful interaction is expected.
*   **Open Source:** All contributions will be under the repository's existing MIT License.

Detailed contribution guidelines are essential for preserving the "expert-level" quality envisioned for this project. Without such standards, the repository could quickly accumulate scripts of varying quality, diminishing its value and trustworthiness. These guidelines serve as both a filter and a roadmap for contributors, ensuring that new additions align with established benchmarks for code clarity, documentation thoroughness, and, where applicable, testing rigor. This commitment is fundamental to the long-term maintainability and utility of the repository.

## Ways to Contribute

There are many ways to contribute to this project:

*   **Adding New Indicators:** Propose and implement new, high-quality indicators.
*   **Adding New Strategies:** Develop and share well-backtested trading strategies.
*   **Improving Existing Scripts:** Enhance current indicators or strategies with new features, better performance, or clearer code.
*   **Enhancing Documentation:** Improve the `.md` files for existing scripts, or contribute to the root documentation files (`coding_guidelines.md`, etc.).
*   **Reporting Bugs:** Identify and report issues with existing scripts or documentation.
*   **Suggesting Features:** Propose new ideas for indicators, strategies, or repository features.
*   **Improving Tooling:** Contributions to the Docker setup or Sphinx configuration are also welcome.

## Getting Started

1.  **Fork the Repository:** Create your own fork of the main repository on GitHub.
2.  **Clone Your Fork:** Clone your forked repository to your local machine:
    ```bash
    git clone https://github.com/YOUR_USERNAME/pine-script-master-repository.git
    ```
3.  **Create a Feature Branch:** Create a new branch for your contribution:
    ```bash
    git checkout -b feature/your-feature-name or fix/your-bug-fix-name
    ```

## Code Contributions

When contributing new indicators or strategies, or modifying existing ones:

*   **Adherence to Coding Guidelines:** All Pine Script code MUST adhere to the standards outlined in `coding_guidelines.md`. This includes naming conventions, script organization, commenting practices, and performance considerations.
*   **File Structure:**
    *   Each new indicator must be placed in an appropriately named subdirectory within `/Indicators/` (e.g., `/Indicators/Momentum/AwesomeOscillator/`). It must include:
        *   `indicator_name.pine`: The Pine Script v6 source code.
        *   `indicator_name.md`: A detailed Markdown documentation file.
    *   Each new strategy must be placed in an appropriately named subdirectory within `/Strategies/` (e.g., `/Strategies/MeanReversion/BollingerBandBounce/`). It must include:
        *   `strategy_name.pine`: The Pine Script v6 source code.
        *   `strategy_name.md`: A detailed Markdown documentation file, including backtesting results and parameters.
*   **Testing:**
    *   **Indicators:** Manually test the indicator on TradingView across various symbols and timeframes to ensure it behaves as expected. Include screenshots in the `.md` file if they help illustrate its usage.
    *   **Strategies:** Rigorously backtest the strategy using TradingView's Strategy Tester. The `.md` file MUST include a summary of backtesting results, including key metrics (Net Profit, Profit Factor, Max Drawdown, Win Rate, Sharpe Ratio) and the parameters used for the test (Symbol, Timeframe, Date Range). Refer to `backtesting_and_optimization.md` for guidance.
*   **Commit Messages:** Write clear and concise commit messages explaining the changes made.

The mandatory inclusion of a `.md` documentation file alongside every `.pine` script submission is a cornerstone of this repository's design. This requirement directly supports the automated Sphinx documentation system and enhances the usability of the scripts for Large Language Models (LLMs). This creates a positive feedback loop: contributions inherently enrich the comprehensive knowledge base, making it more accessible and useful for both human developers and AI tools. If `.md` files were optional, they would likely be omitted frequently, leading to incomplete documentation and reduced utility for advanced features like LLM integration.

## Documentation Contributions

Improvements to documentation are highly valued.

*   Ensure all `.md` files are well-formatted and render correctly in Sphinx.
*   Follow the structure and style of existing documentation.
*   For new scripts, the `.md` file should explain the indicator/strategy's purpose, parameters, calculation logic (conceptually), trading signals (if any), and provide usage examples.
*   Use the provided templates (`TEMPLATE.md`) as starting points for new documentation.
*   Run `./build_docs.sh` to verify documentation builds correctly before submitting.

### AI Agent Guidelines for Documentation

When using AI agents to contribute documentation:

1.  **Template Adherence:** Always start with the appropriate TEMPLATE.md file
2.  **Consistency:** Maintain the established structure and style across all documentation
3.  **Cross-referencing:** Ensure all internal links and references are valid
4.  **Build Validation:** Test documentation builds before submission using `./build_docs.sh`

## Pull Request (PR) Process

1.  **Push to Your Fork:** Once your changes are complete and tested, push them to your forked repository:
    ```bash
    git push origin feature/your-feature-name
    ```
2.  **Create a Pull Request:** Open a pull request from your feature branch to the `main` branch of the upstream repository.
3.  **PR Title and Description:**
    *   Use a clear and descriptive title (e.g., "Add Awesome Oscillator Indicator", "Fix MA Crossover Strategy Stop Loss Logic").
    *   Provide a detailed description of the changes made, the reasoning behind them, and link to any relevant issues (e.g., "Closes #123").
4.  **Contribution Checklist:** Before submitting, ensure your contribution meets the following:

    | Item                                                              | Status (Contributor to fill) |
    | ----------------------------------------------------------------- | ---------------------------- |
    | Adhered to `coding_guidelines.md`?                                | ☐ Yes / ☐ No                 |
    | Included `.pine` file for new indicator/strategy?                 | ☐ Yes / ☐ No / ☐ N/A         |
    | Included comprehensive `.md` file for new indicator/strategy?     | ☐ Yes / ☐ No / ☐ N/A         |
    | Provided backtesting summary in `.md` (for strategies)?           | ☐ Yes / ☐ No / ☐ N/A         |
    | Code is well-commented (especially functions and complex logic)?  | ☐ Yes / ☐ No                 |
    | PR description is clear and links to relevant issues (if any)?    | ☐ Yes / ☐ No                 |
    | All tests (manual/backtesting) pass?                              | ☐ Yes / ☐ No                 |

5.  **Review Process:** Your PR will be reviewed by maintainers. Be prepared to respond to feedback and make changes if requested.

## Code of Conduct

All contributors are expected to adhere to the Contributor Covenant Code of Conduct. Please ensure your interactions are respectful and constructive.

By following these guidelines, you help us maintain the quality and integrity of this repository. Thank you for your contributions!
