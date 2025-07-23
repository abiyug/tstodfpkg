## tstodfpkg 
<img src="image/tsTOdfHex.png" alt="My Hex Sticker" style="width: 25%; float: right; margin-left: 15px;">

`tstodfpkg` is an R package that contains `ts_to_df` function and a single `ts` dataset `synth_gap`. `ts_to_ds` is a flexible function that converts R’s `ts` objects into a tabular `data.frame` format, making it easier to analyze or visualize time series data with standard R tools. Key features include:

- **Input Flexibility**: Accepts any `ts` object, whether univariate or multivariate, with automatic detection of frequency (e.g., 4 for quarterly, 12 for monthly).
- **Output Structure**: Returns a `data.frame` with:
  - `Year`: The integer year extracted from the time index.
  - `Period`: A label based on frequency (e.g., "Q1" for quarterly, "Jan" for monthly using `month.abb`, or numeric for other frequencies).
  - Value column(s): Named according to the `name` parameter (default "Value") for univariate series, or retaining original names for multivariate series.
- **Customization**: The `name` argument allows users to specify the value column name (e.g., "Sales"), enhancing readability for specific use cases.
- **Monthly Support**: For monthly data (`freq == 12`), it generates period labels like "Jan", "Feb", etc., using `month.abb`. Example:

- **Output:**

```bash
    Year Period  Temp
  1 2020    Jan -0.626
  2 2020    Feb  0.184
  3 2020    Mar -0.836
  4 2020    Apr  1.595
  5 2020    May  0.330
  6 2020    Jun -0.820
```
- **Compatibility**: Designed to work across R versions 3.0.0 to 4.5.1 (tested on 3.5.0), using only base R functions for maximum portability.

Example usage with a multivariate `ts` object:

```r
# Create a multivariate ts
multi_ts <- ts(matrix(rnorm(8), ncol = 2), start = c(2000, 1), frequency = 4)
head(ts_to_df(multi_ts))
```


### Steps to Update
- **Command** (in the `tstodfpkg` directory):

```bash
  cat > README.md << 'EOF'
  # tstodfpkg

  A lightweight R package designed to simplify the conversion of time series (`ts`) objects into structured `data.frame` objects, enhancing data analysis workflows. This package includes a versatile `ts_to_df` function and a synthetic dataset, `synth_gap`, to demonstrate its capabilities. Built with base R tools, it ensures broad compatibility and ease of use for R users.

## Installation

  Install the package from GitHub:

```

```r
  library(devtools)
  install_github("abiyug/tstodfpkg")
```

## Usage

  Load the package and use the `ts_to_df` function to convert a time series to a data frame:


```r
  library(tstodfpkg)
  data(synth_gap)  # Load the synthetic dataset
  head(ts_to_df(synth_gap, name = "Sales"))
```

### Example Output

```bash
    Year Period Sales
  1 2000     Q1  3176
  2 2000     Q2  3208
  3 2000     Q3  3347
  4 2000     Q4  3439
  5 2001     Q1  3430
  6 2001     Q2  3372
```

## Features

  - **`ts_to_df` Function**: Transforms any `ts` object into a `data.frame` with columns for `Year`, `Period`, and the time series values, adaptable to various frequencies (e.g., quarterly, monthly).
  - **`synth_gap` Dataset**: A synthetic quarterly time series mimicking the `gap` dataset from the `UsingR` package, featuring a trend, seasonality, and noise, ideal for testing and examples.

## Functionality of `ts_to_df`

  The `ts_to_df` function is a flexible tool for converting R’s `ts` objects into a tabular `data.frame` format, making it easier to analyze or visualize time series data with standard R tools. Key features include:

  - **Input Flexibility**: Accepts any `ts` object, whether univariate or multivariate, with automatic detection of frequency (e.g., 4 for quarterly, 12 for monthly).
  - **Output Structure**: Returns a `data.frame` with:
    - `Year`: The integer year extracted from the time index.
    - `Period`: A label based on frequency (e.g., "Q1" for quarterly, "Jan" for monthly using `month.abb`, or numeric for other frequencies).
    - Value column(s): Named according to the `name` parameter (default "Value") for univariate series, or retaining original names for multivariate series.
  - **Customization**: The `name` argument allows users to specify the value column name (e.g., "Sales"), enhancing readability for specific use cases.
  - **Monthly Support**: For monthly data (`freq == 12`), it generates period labels like "Jan", "Feb", etc., using `month.abb`. Example:

```r
    monthly_ts <- ts(rnorm(24), start = c(2020, 1), frequency = 12)
    head(ts_to_df(monthly_ts, name = "Temp"))
```
    **Output:**

```bash
      Year Period  Temp
    1 2020    Jan -0.626
    2 2020    Feb  0.184
    3 2020    Mar -0.836
    4 2020    Apr  1.595
    5 2020    May  0.330
    6 2020    Jun -0.820
```
  - **Compatibility**: Designed to work across R versions 3.0.0 to 4.5.1 (tested on 3.5.0), using only base R functions for maximum portability.

  Example usage with a multivariate `ts` object:

```r
  # Create a multivariate ts
  multi_ts <- ts(matrix(rnorm(8), ncol = 2), start = c(2000, 1), frequency = 4)
  head(ts_to_df(multi_ts))
```

## Compatibility
  - Supports R versions 3.0.0 to 4.5.1 (tested on 3.5.0).

## License
  MIT

## Contributing
  Feel free to submit issues or pull requests on [GitHub](https://github.com/abiyug/tstodfpkg).

## Acknowledgements
  Inspired by the structure of `gap` from the `UsingR` package.
  - EOF
  - git add README.md
  - git commit -m "Add monthly support details to README"
  - git push origin master


