pkgname <- "tstodfpkg"
source(file.path(R.home("share"), "R", "examples-header.R"))
options(warn = 1)
library('tstodfpkg')

base::assign(".oldSearch", base::search(), pos = 'CheckExEnv')
base::assign(".old_wd", base::getwd(), pos = 'CheckExEnv')
cleanEx()
nameEx("synth_gap")
### * synth_gap

flush(stderr()); flush(stdout())

### Name: synth_gap
### Title: Synthetic Gap Sales Data
### Aliases: synth_gap

### ** Examples

data(synth_gap)
head(ts_to_df(synth_gap, name = "Sales"))



cleanEx()
nameEx("ts_to_df")
### * ts_to_df

flush(stderr()); flush(stdout())

### Name: ts_to_df
### Title: Convert Time Series to Data Frame
### Aliases: ts_to_df

### ** Examples

data(synth_gap)
ts_to_df(synth_gap, name = "Sales")



### * <FOOTER>
###
cleanEx()
options(digits = 7L)
base::cat("Time elapsed: ", proc.time() - base::get("ptime", pos = 'CheckExEnv'),"\n")
grDevices::dev.off()
###
### Local variables: ***
### mode: outline-minor ***
### outline-regexp: "\\(> \\)?### [*]+" ***
### End: ***
quit('no')
