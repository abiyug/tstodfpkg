
# tstodfpkg

A simple R package to convert time series objects to data frames, including a synthetic example dataset.

## Installation

Install the package from GitHub:

```{r, eval = FALSE}
library(devtools)
install_github("abiyug/tstodfpkg")
```

##Usage
Load the package and use the **ts_to_df** function to convert a time series to a data frame:
```{r, eval=FALASE}
library(tstodfpkg)
data(synth_gap)  # Load the synthetic dataset
head(ts_to_df(synth_gap, name = "Sales"))
```

## Example Output
```{r, eval=FALSE}
  Year Period Sales
1 2000     Q1  3176
2 2000     Q2  3208
3 2000     Q3  3347
4 2000     Q4  3439
5 2001     Q1  3430
6 2001     Q2  3372

```

## Features
- **ts_to_df:** Converts **ts** objects to data frames with Year, Period, and Value columns.
- **synth_gap:** A synthetic quarterly time series inspired by the _gap_ dataset from _UsingR_.

## Compatibility
- Works with R versions 3.0.0 to 4.5.1 (tested on 3.5.0).

## License
MIT

## Contributing
Feel free to submit issues or pull requests on GitHub.AcknowledgementsInspired by the structure of gap from the UsingR package.




