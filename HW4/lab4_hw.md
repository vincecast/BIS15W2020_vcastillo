---
title: "Lab 4 Homework"
author: "Vincent Castillo"
date: "02/02/2020"
output:
  html_document:
    keep_md: yes
    theme: darkly
    toc: yes
    toc.float: yes
---



## Instructions
Answer the following questions and complete the exercises in RMarkdown. Please embed all of your code and push your final work to your repository. Your final lab report should be organized, clean, and run free from errors. Remember, you must remove any `#` for included code chunks to run.  

## Load the tidyverse

```r
library(tidyverse)
```

For this assignment we are going to work with a large dataset from the [United Nations Food and Agriculture Organization](http://www.fao.org/about/en/) on world fisheries. First, load the data.  

1. Load the data `FAO_1950to2012_111914.csv` as a new object titled `fisheries`.


```r
fisheries <- readr::read_csv("data/FAO_1950to2012_111914.csv")
```

```
## Parsed with column specification:
## cols(
##   .default = col_character(),
##   `ISSCAAP group#` = col_double(),
##   `FAO major fishing area` = col_double()
## )
```

```
## See spec(...) for full column specifications.
```


2. What are the names of the columns? Do you see any potential problems with the column names?


```r
colnames(fisheries)
```

```
##  [1] "Country"                 "Common name"            
##  [3] "ISSCAAP group#"          "ISSCAAP taxonomic group"
##  [5] "ASFIS species#"          "ASFIS species name"     
##  [7] "FAO major fishing area"  "Measure"                
##  [9] "1950"                    "1951"                   
## [11] "1952"                    "1953"                   
## [13] "1954"                    "1955"                   
## [15] "1956"                    "1957"                   
## [17] "1958"                    "1959"                   
## [19] "1960"                    "1961"                   
## [21] "1962"                    "1963"                   
## [23] "1964"                    "1965"                   
## [25] "1966"                    "1967"                   
## [27] "1968"                    "1969"                   
## [29] "1970"                    "1971"                   
## [31] "1972"                    "1973"                   
## [33] "1974"                    "1975"                   
## [35] "1976"                    "1977"                   
## [37] "1978"                    "1979"                   
## [39] "1980"                    "1981"                   
## [41] "1982"                    "1983"                   
## [43] "1984"                    "1985"                   
## [45] "1986"                    "1987"                   
## [47] "1988"                    "1989"                   
## [49] "1990"                    "1991"                   
## [51] "1992"                    "1993"                   
## [53] "1994"                    "1995"                   
## [55] "1996"                    "1997"                   
## [57] "1998"                    "1999"                   
## [59] "2000"                    "2001"                   
## [61] "2002"                    "2003"                   
## [63] "2004"                    "2005"                   
## [65] "2006"                    "2007"                   
## [67] "2008"                    "2009"                   
## [69] "2010"                    "2011"                   
## [71] "2012"
```


3. What is the structure of the data? Show the classes of each variable.


```r
str(fisheries)
```

```
## Classes 'spec_tbl_df', 'tbl_df', 'tbl' and 'data.frame':	17692 obs. of  71 variables:
##  $ Country                : chr  "Albania" "Albania" "Albania" "Albania" ...
##  $ Common name            : chr  "Angelsharks, sand devils nei" "Atlantic bonito" "Barracudas nei" "Blue and red shrimp" ...
##  $ ISSCAAP group#         : num  38 36 37 45 32 37 33 45 38 57 ...
##  $ ISSCAAP taxonomic group: chr  "Sharks, rays, chimaeras" "Tunas, bonitos, billfishes" "Miscellaneous pelagic fishes" "Shrimps, prawns" ...
##  $ ASFIS species#         : chr  "10903XXXXX" "1750100101" "17710001XX" "2280203101" ...
##  $ ASFIS species name     : chr  "Squatinidae" "Sarda sarda" "Sphyraena spp" "Aristeus antennatus" ...
##  $ FAO major fishing area : num  37 37 37 37 37 37 37 37 37 37 ...
##  $ Measure                : chr  "Quantity (tonnes)" "Quantity (tonnes)" "Quantity (tonnes)" "Quantity (tonnes)" ...
##  $ 1950                   : chr  NA NA NA NA ...
##  $ 1951                   : chr  NA NA NA NA ...
##  $ 1952                   : chr  NA NA NA NA ...
##  $ 1953                   : chr  NA NA NA NA ...
##  $ 1954                   : chr  NA NA NA NA ...
##  $ 1955                   : chr  NA NA NA NA ...
##  $ 1956                   : chr  NA NA NA NA ...
##  $ 1957                   : chr  NA NA NA NA ...
##  $ 1958                   : chr  NA NA NA NA ...
##  $ 1959                   : chr  NA NA NA NA ...
##  $ 1960                   : chr  NA NA NA NA ...
##  $ 1961                   : chr  NA NA NA NA ...
##  $ 1962                   : chr  NA NA NA NA ...
##  $ 1963                   : chr  NA NA NA NA ...
##  $ 1964                   : chr  NA NA NA NA ...
##  $ 1965                   : chr  NA NA NA NA ...
##  $ 1966                   : chr  NA NA NA NA ...
##  $ 1967                   : chr  NA NA NA NA ...
##  $ 1968                   : chr  NA NA NA NA ...
##  $ 1969                   : chr  NA NA NA NA ...
##  $ 1970                   : chr  NA NA NA NA ...
##  $ 1971                   : chr  NA NA NA NA ...
##  $ 1972                   : chr  NA NA NA NA ...
##  $ 1973                   : chr  NA NA NA NA ...
##  $ 1974                   : chr  NA NA NA NA ...
##  $ 1975                   : chr  NA NA NA NA ...
##  $ 1976                   : chr  NA NA NA NA ...
##  $ 1977                   : chr  NA NA NA NA ...
##  $ 1978                   : chr  NA NA NA NA ...
##  $ 1979                   : chr  NA NA NA NA ...
##  $ 1980                   : chr  NA NA NA NA ...
##  $ 1981                   : chr  NA NA NA NA ...
##  $ 1982                   : chr  NA NA NA NA ...
##  $ 1983                   : chr  NA NA NA NA ...
##  $ 1984                   : chr  NA NA NA NA ...
##  $ 1985                   : chr  NA NA NA NA ...
##  $ 1986                   : chr  NA NA NA NA ...
##  $ 1987                   : chr  NA NA NA NA ...
##  $ 1988                   : chr  NA NA NA NA ...
##  $ 1989                   : chr  NA NA NA NA ...
##  $ 1990                   : chr  NA NA NA NA ...
##  $ 1991                   : chr  NA NA NA NA ...
##  $ 1992                   : chr  NA NA NA NA ...
##  $ 1993                   : chr  NA NA NA NA ...
##  $ 1994                   : chr  NA NA NA NA ...
##  $ 1995                   : chr  "0 0" "1" NA "0 0" ...
##  $ 1996                   : chr  "53" "2" NA "3" ...
##  $ 1997                   : chr  "20" "0 0" NA "0 0" ...
##  $ 1998                   : chr  "31" "12" NA NA ...
##  $ 1999                   : chr  "30" "30" NA NA ...
##  $ 2000                   : chr  "30" "25" "2" NA ...
##  $ 2001                   : chr  "16" "30" NA NA ...
##  $ 2002                   : chr  "79" "24" NA "34" ...
##  $ 2003                   : chr  "1" "4" NA "22" ...
##  $ 2004                   : chr  "4" "2" "2" "15" ...
##  $ 2005                   : chr  "68" "23" "4" "12" ...
##  $ 2006                   : chr  "55" "30" "7" "18" ...
##  $ 2007                   : chr  "12" "19" NA NA ...
##  $ 2008                   : chr  "23" "27" NA NA ...
##  $ 2009                   : chr  "14" "21" NA NA ...
##  $ 2010                   : chr  "78" "23" "7" NA ...
##  $ 2011                   : chr  "12" "12" NA NA ...
##  $ 2012                   : chr  "5" "5" NA NA ...
##  - attr(*, "spec")=
##   .. cols(
##   ..   Country = col_character(),
##   ..   `Common name` = col_character(),
##   ..   `ISSCAAP group#` = col_double(),
##   ..   `ISSCAAP taxonomic group` = col_character(),
##   ..   `ASFIS species#` = col_character(),
##   ..   `ASFIS species name` = col_character(),
##   ..   `FAO major fishing area` = col_double(),
##   ..   Measure = col_character(),
##   ..   `1950` = col_character(),
##   ..   `1951` = col_character(),
##   ..   `1952` = col_character(),
##   ..   `1953` = col_character(),
##   ..   `1954` = col_character(),
##   ..   `1955` = col_character(),
##   ..   `1956` = col_character(),
##   ..   `1957` = col_character(),
##   ..   `1958` = col_character(),
##   ..   `1959` = col_character(),
##   ..   `1960` = col_character(),
##   ..   `1961` = col_character(),
##   ..   `1962` = col_character(),
##   ..   `1963` = col_character(),
##   ..   `1964` = col_character(),
##   ..   `1965` = col_character(),
##   ..   `1966` = col_character(),
##   ..   `1967` = col_character(),
##   ..   `1968` = col_character(),
##   ..   `1969` = col_character(),
##   ..   `1970` = col_character(),
##   ..   `1971` = col_character(),
##   ..   `1972` = col_character(),
##   ..   `1973` = col_character(),
##   ..   `1974` = col_character(),
##   ..   `1975` = col_character(),
##   ..   `1976` = col_character(),
##   ..   `1977` = col_character(),
##   ..   `1978` = col_character(),
##   ..   `1979` = col_character(),
##   ..   `1980` = col_character(),
##   ..   `1981` = col_character(),
##   ..   `1982` = col_character(),
##   ..   `1983` = col_character(),
##   ..   `1984` = col_character(),
##   ..   `1985` = col_character(),
##   ..   `1986` = col_character(),
##   ..   `1987` = col_character(),
##   ..   `1988` = col_character(),
##   ..   `1989` = col_character(),
##   ..   `1990` = col_character(),
##   ..   `1991` = col_character(),
##   ..   `1992` = col_character(),
##   ..   `1993` = col_character(),
##   ..   `1994` = col_character(),
##   ..   `1995` = col_character(),
##   ..   `1996` = col_character(),
##   ..   `1997` = col_character(),
##   ..   `1998` = col_character(),
##   ..   `1999` = col_character(),
##   ..   `2000` = col_character(),
##   ..   `2001` = col_character(),
##   ..   `2002` = col_character(),
##   ..   `2003` = col_character(),
##   ..   `2004` = col_character(),
##   ..   `2005` = col_character(),
##   ..   `2006` = col_character(),
##   ..   `2007` = col_character(),
##   ..   `2008` = col_character(),
##   ..   `2009` = col_character(),
##   ..   `2010` = col_character(),
##   ..   `2011` = col_character(),
##   ..   `2012` = col_character()
##   .. )
```


4. Think about the classes. Will any present problems? Make any changes you think are necessary below.


```r
fisheries$`FAO major fishing area` <-  as.character(fisheries$`FAO major fishing area`)
fisheries$`ISSCAAP group#` <- as.character(fisheries$`ISSCAAP group#`)
class(fisheries$`ISSCAAP group#`)
```

```
## [1] "character"
```

```r
class(fisheries$`FAO major fishing area`)
```

```
## [1] "character"
```


5. How many countries are represented in the data? Provide a count.


```r
fisheries %>%
  summarise(totcountry=n_distinct(Country))
```

```
## # A tibble: 1 x 1
##   totcountry
##        <int>
## 1        204
```


6. What are the names of the countries?


```r
fisheries %>%
  count(Country, sort = T)
```

```
## # A tibble: 204 x 2
##    Country                      n
##    <chr>                    <int>
##  1 Spain                      915
##  2 Portugal                   763
##  3 United States of America   627
##  4 Korea, Republic of         620
##  5 Japan                      611
##  6 Russian Federation         523
##  7 Un. Sov. Soc. Rep.         515
##  8 France                     489
##  9 United Kingdom             362
## 10 Taiwan Province of China   310
## # … with 194 more rows
```


7. Use `rename()` to rename the columns and make them easier to use. The new column names should be:  
+ country
+ commname
+ ASFIS_sciname
+ ASFIS_spcode
+ ISSCAAP_spgroup
+ ISSCAAP_spgroupname
+ FAO_area
+ unit


```r
newfisheries <- fisheries %>%
  rename(
    country=Country,
    commname=`Common name`,
    ASFIS_sciname=`ASFIS species name`,
    ASFIS_spcode=`ASFIS species#`,
    ISSCAAP_spgroup=`ISSCAAP group#`,
    ISSCAAP_spgroupname=`ISSCAAP taxonomic group`,
    FAO_area=`FAO major fishing area`,
    unit=Measure)
newfisheries
```

```
## # A tibble: 17,692 x 71
##    country commname ISSCAAP_spgroup ISSCAAP_spgroup… ASFIS_spcode ASFIS_sciname
##    <chr>   <chr>    <chr>           <chr>            <chr>        <chr>        
##  1 Albania Angelsh… 38              Sharks, rays, c… 10903XXXXX   Squatinidae  
##  2 Albania Atlanti… 36              Tunas, bonitos,… 1750100101   Sarda sarda  
##  3 Albania Barracu… 37              Miscellaneous p… 17710001XX   Sphyraena spp
##  4 Albania Blue an… 45              Shrimps, prawns  2280203101   Aristeus ant…
##  5 Albania Blue wh… 32              Cods, hakes, ha… 1480403301   Micromesisti…
##  6 Albania Bluefish 37              Miscellaneous p… 1702021301   Pomatomus sa…
##  7 Albania Bogue    33              Miscellaneous c… 1703926101   Boops boops  
##  8 Albania Caramot… 45              Shrimps, prawns  2280100117   Penaeus kera…
##  9 Albania Catshar… 38              Sharks, rays, c… 10801003XX   Scyliorhinus…
## 10 Albania Common … 57              Squids, cuttlef… 3210200202   Sepia offici…
## # … with 17,682 more rows, and 65 more variables: FAO_area <chr>, unit <chr>,
## #   `1950` <chr>, `1951` <chr>, `1952` <chr>, `1953` <chr>, `1954` <chr>,
## #   `1955` <chr>, `1956` <chr>, `1957` <chr>, `1958` <chr>, `1959` <chr>,
## #   `1960` <chr>, `1961` <chr>, `1962` <chr>, `1963` <chr>, `1964` <chr>,
## #   `1965` <chr>, `1966` <chr>, `1967` <chr>, `1968` <chr>, `1969` <chr>,
## #   `1970` <chr>, `1971` <chr>, `1972` <chr>, `1973` <chr>, `1974` <chr>,
## #   `1975` <chr>, `1976` <chr>, `1977` <chr>, `1978` <chr>, `1979` <chr>,
## #   `1980` <chr>, `1981` <chr>, `1982` <chr>, `1983` <chr>, `1984` <chr>,
## #   `1985` <chr>, `1986` <chr>, `1987` <chr>, `1988` <chr>, `1989` <chr>,
## #   `1990` <chr>, `1991` <chr>, `1992` <chr>, `1993` <chr>, `1994` <chr>,
## #   `1995` <chr>, `1996` <chr>, `1997` <chr>, `1998` <chr>, `1999` <chr>,
## #   `2000` <chr>, `2001` <chr>, `2002` <chr>, `2003` <chr>, `2004` <chr>,
## #   `2005` <chr>, `2006` <chr>, `2007` <chr>, `2008` <chr>, `2009` <chr>,
## #   `2010` <chr>, `2011` <chr>, `2012` <chr>
```

8. Are these data tidy? Why or why not, and, how do you know? Use the appropriate pivot function to tidy the data. Remove the NA's. Put the tidy data frame into a new object `fisheries_tidy`.  


```r
fisheries_tidy <- newfisheries %>%
  pivot_longer("1950":"2012",
               names_to = "year", 
               values_to = "tonnes",
               values_drop_na = T)
fisheries_tidy
```

```
## # A tibble: 376,771 x 10
##    country commname ISSCAAP_spgroup ISSCAAP_spgroup… ASFIS_spcode ASFIS_sciname
##    <chr>   <chr>    <chr>           <chr>            <chr>        <chr>        
##  1 Albania Angelsh… 38              Sharks, rays, c… 10903XXXXX   Squatinidae  
##  2 Albania Angelsh… 38              Sharks, rays, c… 10903XXXXX   Squatinidae  
##  3 Albania Angelsh… 38              Sharks, rays, c… 10903XXXXX   Squatinidae  
##  4 Albania Angelsh… 38              Sharks, rays, c… 10903XXXXX   Squatinidae  
##  5 Albania Angelsh… 38              Sharks, rays, c… 10903XXXXX   Squatinidae  
##  6 Albania Angelsh… 38              Sharks, rays, c… 10903XXXXX   Squatinidae  
##  7 Albania Angelsh… 38              Sharks, rays, c… 10903XXXXX   Squatinidae  
##  8 Albania Angelsh… 38              Sharks, rays, c… 10903XXXXX   Squatinidae  
##  9 Albania Angelsh… 38              Sharks, rays, c… 10903XXXXX   Squatinidae  
## 10 Albania Angelsh… 38              Sharks, rays, c… 10903XXXXX   Squatinidae  
## # … with 376,761 more rows, and 4 more variables: FAO_area <chr>, unit <chr>,
## #   year <chr>, tonnes <chr>
```

9. Refocus the data only to include country, ISSCAAP_spgroupname, ASFIS_spcode, ASFIS_sciname, year, and catch.


```r
fisheries_tidy %>%
  select(country, ISSCAAP_spgroupname, ASFIS_spcode, ASFIS_sciname, year, tonnes)
```

```
## # A tibble: 376,771 x 6
##    country ISSCAAP_spgroupname     ASFIS_spcode ASFIS_sciname year  tonnes
##    <chr>   <chr>                   <chr>        <chr>         <chr> <chr> 
##  1 Albania Sharks, rays, chimaeras 10903XXXXX   Squatinidae   1995  0 0   
##  2 Albania Sharks, rays, chimaeras 10903XXXXX   Squatinidae   1996  53    
##  3 Albania Sharks, rays, chimaeras 10903XXXXX   Squatinidae   1997  20    
##  4 Albania Sharks, rays, chimaeras 10903XXXXX   Squatinidae   1998  31    
##  5 Albania Sharks, rays, chimaeras 10903XXXXX   Squatinidae   1999  30    
##  6 Albania Sharks, rays, chimaeras 10903XXXXX   Squatinidae   2000  30    
##  7 Albania Sharks, rays, chimaeras 10903XXXXX   Squatinidae   2001  16    
##  8 Albania Sharks, rays, chimaeras 10903XXXXX   Squatinidae   2002  79    
##  9 Albania Sharks, rays, chimaeras 10903XXXXX   Squatinidae   2003  1     
## 10 Albania Sharks, rays, chimaeras 10903XXXXX   Squatinidae   2004  4     
## # … with 376,761 more rows
```

10. Re-check the classes of `fisheries_tidy2`. Notice that "catch" is shown as a character! This is a problem because we will want to treat it as a numeric. How will you deal with this?


```r
fisheries_tidy$catch <- as.numeric(fisheries_tidy$tonnes)
```

```
## Warning: NAs introduced by coercion
```

```r
str(fisheries_tidy)
```

```
## Classes 'tbl_df', 'tbl' and 'data.frame':	376771 obs. of  11 variables:
##  $ country            : chr  "Albania" "Albania" "Albania" "Albania" ...
##  $ commname           : chr  "Angelsharks, sand devils nei" "Angelsharks, sand devils nei" "Angelsharks, sand devils nei" "Angelsharks, sand devils nei" ...
##  $ ISSCAAP_spgroup    : chr  "38" "38" "38" "38" ...
##  $ ISSCAAP_spgroupname: chr  "Sharks, rays, chimaeras" "Sharks, rays, chimaeras" "Sharks, rays, chimaeras" "Sharks, rays, chimaeras" ...
##  $ ASFIS_spcode       : chr  "10903XXXXX" "10903XXXXX" "10903XXXXX" "10903XXXXX" ...
##  $ ASFIS_sciname      : chr  "Squatinidae" "Squatinidae" "Squatinidae" "Squatinidae" ...
##  $ FAO_area           : chr  "37" "37" "37" "37" ...
##  $ unit               : chr  "Quantity (tonnes)" "Quantity (tonnes)" "Quantity (tonnes)" "Quantity (tonnes)" ...
##  $ year               : chr  "1995" "1996" "1997" "1998" ...
##  $ tonnes             : chr  "0 0" "53" "20" "31" ...
##  $ catch              : num  NA 53 20 31 30 30 16 79 1 4 ...
```

11. Based on the ASFIS_spcode, how many distinct taxa were caught as part of these data?


```r
fisheries_tidy %>%
  summarise(total_taxa=n_distinct(ASFIS_spcode))
```

```
## # A tibble: 1 x 1
##   total_taxa
##        <int>
## 1       1551
```


12. Which country had the largest overall catch in the year 2000?


```r
fisheriestidy_2 <- fisheries_tidy %>%
  select(country, year, catch) %>%
  filter(year == "2000") %>%
  unnest(year)

fisheriestidy_2 <- drop_na(fisheriestidy_2)
fisheriestidy_3 <- fisheriestidy_2 %>%
  pivot_wider(
    names_from = year,
    values_from = catch,
    values_fn = list(catch = sum)) 
fisheriestidy_3 <- fisheriestidy_3 %>%
  arrange(desc(`2000`))
fisheriestidy_3
```

```
## # A tibble: 173 x 2
##    country                    `2000`
##    <chr>                       <dbl>
##  1 Peru                     10625010
##  2 Japan                     4921013
##  3 United States of America  4692229
##  4 Chile                     4297928
##  5 Indonesia                 3761769
##  6 Russian Federation        3678828
##  7 Thailand                  2795719
##  8 India                     2760632
##  9 Norway                    2698506
## 10 Iceland                   1982369
## # … with 163 more rows
```


13. Which country caught the most sardines (_Sardina_) between the years 1990-2000?


```r
fisheries_tidy4 <- drop_na(fisheries_tidy)
fisheries_tidy4 <- fisheries_tidy4 %>%
  select(country, ASFIS_sciname, year, catch) %>%
  filter(year >= 1990, year <= 2000 & ASFIS_sciname == "Sardina pilchardus")

fisheries_tidysardina <- fisheries_tidy4 %>%
  select(country, ASFIS_sciname, catch) %>%
  pivot_wider(
    names_from = ASFIS_sciname,
    values_from = catch,
    values_fn = list(catch = sum))

fisheries_tidysardina %>%
  arrange(desc(`Sardina pilchardus`))
```

```
## # A tibble: 36 x 2
##    country            `Sardina pilchardus`
##    <chr>                             <dbl>
##  1 Morocco                         4785190
##  2 Spain                           1425317
##  3 Russian Federation              1035139
##  4 Portugal                         926318
##  5 Ukraine                          784730
##  6 Italy                            377907
##  7 Algeria                          311733
##  8 Turkey                           273565
##  9 France                           263871
## 10 Denmark                          242017
## # … with 26 more rows
```


14. Which five countries caught the most cephalopods between 2008-2012?


```r
fisheries_tidycepha <- drop_na(fisheries_tidy)
fisheries_tidycepha <- fisheries_tidycepha %>%
  select(country, ASFIS_sciname, year, catch) %>%
  filter(year >= 2008, year <= 2012 & ASFIS_sciname == "Cephalopoda")

fisheries_tidycepha2 <- fisheries_tidycepha %>%
  select(country, ASFIS_sciname, catch) %>%
  pivot_wider(
    names_from = ASFIS_sciname,
    values_from = catch,
    values_fn = list(catch = sum))
fisheries_tidycepha2 %>%
  arrange(desc(`Cephalopoda`))
```

```
## # A tibble: 12 x 2
##    country                  Cephalopoda
##    <chr>                          <dbl>
##  1 India                         429670
##  2 China                         268557
##  3 Cambodia                       15505
##  4 Madagascar                      7971
##  5 Mozambique                      6511
##  6 Taiwan Province of China        6123
##  7 Croatia                          647
##  8 Spain                            329
##  9 Mauritania                       197
## 10 Algeria                          162
## 11 France                           101
## 12 Italy                             66
```


15. Given the top five countries from question 12 above, which species was the highest catch total? The lowest?


```r
fisheries_na <- drop_na(fisheries_tidy)
fisheriestidytot <- fisheries_na %>%
  select(country, ASFIS_sciname, catch) %>%
  filter(country == "Peru" | country == "Japan" | country == "United States of America" | country == "Chile" | country == "Indonesia") %>%
  pivot_wider(
    names_from = ASFIS_sciname,
    values_from = catch,
    values_fn = list(catch = sum))
fisheriestidytot <- fisheriestidytot %>%
  pivot_longer(
    `Aplodactylus punctatus`:`Ocyurus chrysurus`,
    names_to = "species",
    values_to = "catch")
fisheriestidymax <- fisheriestidytot %>%
  arrange(desc(catch))
fisheriestidymax
```

```
## # A tibble: 3,050 x 3
##    country                  species                     catch
##    <chr>                    <chr>                       <dbl>
##  1 Peru                     Engraulis ringens       278401317
##  2 Japan                    Sardinops melanostictus  62013941
##  3 Chile                    Trachurus murphyi        61379611
##  4 Japan                    Theragra chalcogramma    56710448
##  5 Chile                    Engraulis ringens        45944454
##  6 Peru                     Sardinops sagax          41879666
##  7 Japan                    Scomber japonicus        39983858
##  8 United States of America Theragra chalcogramma    36501087
##  9 United States of America Brevoortia patronus      33511931
## 10 Chile                    Sardinops sagax          28939921
## # … with 3,040 more rows
```

```r
fisheriestidymin <- fisheriestidytot %>%
  arrange(catch)
fisheriestidymin
```

```
## # A tibble: 3,050 x 3
##    country                  species                       catch
##    <chr>                    <chr>                         <dbl>
##  1 Chile                    Chaenocephalus aceratus           1
##  2 Chile                    Muraenolepis spp                  1
##  3 Chile                    Pseudochaenichthys georgianus     1
##  4 Japan                    Pseudochaenichthys georgianus     1
##  5 Japan                    Salilota australis                1
##  6 Japan                    Brevoortia tyrannus               1
##  7 Japan                    Merluccius polli                  1
##  8 Japan                    Thyrsitops lepidopoides           1
##  9 United States of America Istiophorus albicans              1
## 10 United States of America Notothenia rossii                 1
## # … with 3,040 more rows
```

Peru, Japan, United States of America, Chile, Indonesia

16. In some cases, the taxonomy of the fish being caught is unclear. Make a new data frame called `coastal_fish` that shows the taxonomic composition of "Miscellaneous coastal fishes" within the ISSCAAP_spgroupname column.


```r
coastal_fish <- fisheries_tidy %>%
  select(ISSCAAP_spgroupname, commname) %>%
  filter(ISSCAAP_spgroupname == "Miscellaneous coastal fishes")
coastal_fish
```

```
## # A tibble: 69,821 x 2
##    ISSCAAP_spgroupname          commname
##    <chr>                        <chr>   
##  1 Miscellaneous coastal fishes Bogue   
##  2 Miscellaneous coastal fishes Bogue   
##  3 Miscellaneous coastal fishes Bogue   
##  4 Miscellaneous coastal fishes Bogue   
##  5 Miscellaneous coastal fishes Bogue   
##  6 Miscellaneous coastal fishes Bogue   
##  7 Miscellaneous coastal fishes Bogue   
##  8 Miscellaneous coastal fishes Bogue   
##  9 Miscellaneous coastal fishes Bogue   
## 10 Miscellaneous coastal fishes Bogue   
## # … with 69,811 more rows
```


17. Use the data to do at least one exploratory analysis of your choice. What can you learn?
Most common fish caught in the U.S.


```r
fisheries_US <- fisheries_tidy %>%
  select(country, ASFIS_sciname, catch ) %>%
  filter(country == "United States of America")
fisheries_US %>%
  arrange(desc(catch))
```

```
## # A tibble: 18,080 x 3
##    country                  ASFIS_sciname           catch
##    <chr>                    <chr>                   <dbl>
##  1 United States of America Theragra chalcogramma 1547359
##  2 United States of America Theragra chalcogramma 1542598
##  3 United States of America Theragra chalcogramma 1524904
##  4 United States of America Theragra chalcogramma 1519928
##  5 United States of America Theragra chalcogramma 1515515
##  6 United States of America Theragra chalcogramma 1477815
##  7 United States of America Theragra chalcogramma 1442170
##  8 United States of America Theragra chalcogramma 1432190
##  9 United States of America Theragra chalcogramma 1417278
## 10 United States of America Theragra chalcogramma 1396849
## # … with 18,070 more rows
```

## Push your final code to GitHub!
Please be sure that you check the `keep md` file in the knit preferences.   
