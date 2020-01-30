---
title: "Lab 2 Homework"
author: "Vincent Castillo"
date: "Winter 2020"
output:
  html_document:
    keep_md: TRUE
    theme: darkly
    toc: yes
    toc_float: yes
    code_folding: show 
---

## Instructions
Answer the following questions and complete the exercises in RMarkdown. Please embed all of your code and push your final work to your repository. Your final lab report should be organized, clean, and run free from errors. Remember, you must remove the `#` for the included code chunks to run.  


```r
library("tidyverse")
```

```
## ── Attaching packages ─────────────────────────────────────────────────────────────────────────────────────── tidyverse 1.3.0 ──
```

```
## ✓ ggplot2 3.2.1     ✓ purrr   0.3.3
## ✓ tibble  2.1.3     ✓ dplyr   0.8.3
## ✓ tidyr   1.0.0     ✓ stringr 1.4.0
## ✓ readr   1.3.1     ✓ forcats 0.4.0
```

```
## ── Conflicts ────────────────────────────────────────────────────────────────────────────────────────── tidyverse_conflicts() ──
## x dplyr::filter() masks stats::filter()
## x dplyr::lag()    masks stats::lag()
```

## Question 1
### From which publication are these data taken from? Don't do an internet search; show the code that you would use to find out in R. 

```r
?msleep
```
_V. M. Savage and G. B. West. A quantitative, theoretical framework for understanding mammalian sleep. Proceedings of the National Academy of Sciences, 104 (3):1051-1056, 2007._

## Question 2  
### Put these data into a new object `sleep`. Make sure they are organized as a data frame.  

```r
sleep <- data.frame(msleep)
```

## Question 3  
### Show a list of the column names in this data frame.  

```r
colnames(sleep)
```

```
##  [1] "name"         "genus"        "vore"         "order"        "conservation"
##  [6] "sleep_total"  "sleep_rem"    "sleep_cycle"  "awake"        "brainwt"     
## [11] "bodywt"
```

## Question 4  
### Use `glimpse()` to summarize the data in `sleep`.  

```r
glimpse(sleep)
```

```
## Observations: 83
## Variables: 11
## $ name         <chr> "Cheetah", "Owl monkey", "Mountain beaver", "Greater sho…
## $ genus        <chr> "Acinonyx", "Aotus", "Aplodontia", "Blarina", "Bos", "Br…
## $ vore         <chr> "carni", "omni", "herbi", "omni", "herbi", "herbi", "car…
## $ order        <chr> "Carnivora", "Primates", "Rodentia", "Soricomorpha", "Ar…
## $ conservation <chr> "lc", NA, "nt", "lc", "domesticated", NA, "vu", NA, "dom…
## $ sleep_total  <dbl> 12.1, 17.0, 14.4, 14.9, 4.0, 14.4, 8.7, 7.0, 10.1, 3.0, …
## $ sleep_rem    <dbl> NA, 1.8, 2.4, 2.3, 0.7, 2.2, 1.4, NA, 2.9, NA, 0.6, 0.8,…
## $ sleep_cycle  <dbl> NA, NA, NA, 0.1333333, 0.6666667, 0.7666667, 0.3833333, …
## $ awake        <dbl> 11.9, 7.0, 9.6, 9.1, 20.0, 9.6, 15.3, 17.0, 13.9, 21.0, …
## $ brainwt      <dbl> NA, 0.01550, NA, 0.00029, 0.42300, NA, NA, NA, 0.07000, …
## $ bodywt       <dbl> 50.000, 0.480, 1.350, 0.019, 600.000, 3.850, 20.490, 0.0…
```

## Question 5  
### Use `summary()` to summarize the data in `sleep`.  

```r
summary(sleep)
```

```
##      name              genus               vore              order          
##  Length:83          Length:83          Length:83          Length:83         
##  Class :character   Class :character   Class :character   Class :character  
##  Mode  :character   Mode  :character   Mode  :character   Mode  :character  
##                                                                             
##                                                                             
##                                                                             
##                                                                             
##  conservation        sleep_total      sleep_rem      sleep_cycle    
##  Length:83          Min.   : 1.90   Min.   :0.100   Min.   :0.1167  
##  Class :character   1st Qu.: 7.85   1st Qu.:0.900   1st Qu.:0.1833  
##  Mode  :character   Median :10.10   Median :1.500   Median :0.3333  
##                     Mean   :10.43   Mean   :1.875   Mean   :0.4396  
##                     3rd Qu.:13.75   3rd Qu.:2.400   3rd Qu.:0.5792  
##                     Max.   :19.90   Max.   :6.600   Max.   :1.5000  
##                                     NA's   :22      NA's   :51      
##      awake          brainwt            bodywt        
##  Min.   : 4.10   Min.   :0.00014   Min.   :   0.005  
##  1st Qu.:10.25   1st Qu.:0.00290   1st Qu.:   0.174  
##  Median :13.90   Median :0.01240   Median :   1.670  
##  Mean   :13.57   Mean   :0.28158   Mean   : 166.136  
##  3rd Qu.:16.15   3rd Qu.:0.12550   3rd Qu.:  41.750  
##  Max.   :22.10   Max.   :5.71200   Max.   :6654.000  
##                  NA's   :27
```

## Question 6  
### Print out the first column of the data frame and then print out the first row.  

```r
sleep[, 1]
```

```
##  [1] "Cheetah"                        "Owl monkey"                    
##  [3] "Mountain beaver"                "Greater short-tailed shrew"    
##  [5] "Cow"                            "Three-toed sloth"              
##  [7] "Northern fur seal"              "Vesper mouse"                  
##  [9] "Dog"                            "Roe deer"                      
## [11] "Goat"                           "Guinea pig"                    
## [13] "Grivet"                         "Chinchilla"                    
## [15] "Star-nosed mole"                "African giant pouched rat"     
## [17] "Lesser short-tailed shrew"      "Long-nosed armadillo"          
## [19] "Tree hyrax"                     "North American Opossum"        
## [21] "Asian elephant"                 "Big brown bat"                 
## [23] "Horse"                          "Donkey"                        
## [25] "European hedgehog"              "Patas monkey"                  
## [27] "Western american chipmunk"      "Domestic cat"                  
## [29] "Galago"                         "Giraffe"                       
## [31] "Pilot whale"                    "Gray seal"                     
## [33] "Gray hyrax"                     "Human"                         
## [35] "Mongoose lemur"                 "African elephant"              
## [37] "Thick-tailed opposum"           "Macaque"                       
## [39] "Mongolian gerbil"               "Golden hamster"                
## [41] "Vole "                          "House mouse"                   
## [43] "Little brown bat"               "Round-tailed muskrat"          
## [45] "Slow loris"                     "Degu"                          
## [47] "Northern grasshopper mouse"     "Rabbit"                        
## [49] "Sheep"                          "Chimpanzee"                    
## [51] "Tiger"                          "Jaguar"                        
## [53] "Lion"                           "Baboon"                        
## [55] "Desert hedgehog"                "Potto"                         
## [57] "Deer mouse"                     "Phalanger"                     
## [59] "Caspian seal"                   "Common porpoise"               
## [61] "Potoroo"                        "Giant armadillo"               
## [63] "Rock hyrax"                     "Laboratory rat"                
## [65] "African striped mouse"          "Squirrel monkey"               
## [67] "Eastern american mole"          "Cotton rat"                    
## [69] "Mole rat"                       "Arctic ground squirrel"        
## [71] "Thirteen-lined ground squirrel" "Golden-mantled ground squirrel"
## [73] "Musk shrew"                     "Pig"                           
## [75] "Short-nosed echidna"            "Eastern american chipmunk"     
## [77] "Brazilian tapir"                "Tenrec"                        
## [79] "Tree shrew"                     "Bottle-nosed dolphin"          
## [81] "Genet"                          "Arctic fox"                    
## [83] "Red fox"
```


```r
sleep[1, ]
```

```
##      name    genus  vore     order conservation sleep_total sleep_rem
## 1 Cheetah Acinonyx carni Carnivora           lc        12.1        NA
##   sleep_cycle awake brainwt bodywt
## 1          NA  11.9      NA     50
```

## Question 7  
### We are interested in two groups; small and large mammals. Let's define small as less than or equal to 1kg body weight and large as greater than or equal to 200kg body weight. Make two new dataframes (large and small) based on these parameters.  

```r
small_sleep <- 
  filter(sleep, bodywt <=1)

small_sleep_bodywtdataframe <- 
  select(small_sleep, bodywt)

small_sleep_bodywtdataframe
```

```
##    bodywt
## 1   0.480
## 2   0.019
## 3   0.045
## 4   0.728
## 5   0.420
## 6   0.060
## 7   1.000
## 8   0.005
## 9   0.023
## 10  0.770
## 11  0.071
## 12  0.200
## 13  0.370
## 14  0.053
## 15  0.120
## 16  0.035
## 17  0.022
## 18  0.010
## 19  0.266
## 20  0.210
## 21  0.028
## 22  0.550
## 23  0.021
## 24  0.320
## 25  0.044
## 26  0.743
## 27  0.075
## 28  0.148
## 29  0.122
## 30  0.920
## 31  0.101
## 32  0.205
## 33  0.048
## 34  0.112
## 35  0.900
## 36  0.104
```


```r
big_sleep <- 
  filter(sleep, bodywt >=200)

big_sleep_bodywtdataframe <- 
  select(big_sleep, bodywt)

big_sleep_bodywtdataframe
```

```
##     bodywt
## 1  600.000
## 2 2547.000
## 3  521.000
## 4  899.995
## 5  800.000
## 6 6654.000
## 7  207.501
```

## Question 8  
### What is the mean weight for both the large and small mammals?  

```r
summary(small_sleep$bodywt)
```

```
##    Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
## 0.00500 0.04475 0.11600 0.25967 0.38250 1.00000
```

```r
summary(big_sleep$bodywt)
```

```
##    Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
##   207.5   560.5   800.0  1747.1  1723.5  6654.0
```

## Question 9  
### Let's try to figure out if large mammals sleep, on average, longer than small mammals. What is the average sleep duration for large mammals as we have defined them?  

```r
summary(big_sleep$sleep_total)
```

```
##    Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
##    1.90    2.80    3.30    3.30    3.95    4.40
```

## Question 10  
### What is the average sleep duration for small mammals as we have defined them?  

```r
summary(small_sleep$sleep_total) 
```

```
##    Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
##    7.00    9.75   12.65   12.66   14.90   19.90
```

## Question 11  
### Which animals are the sleepiest? Which sleep least 18 hours per day?  

```r
sleepiest_sleep <- 
  filter(sleep, sleep_total >= 18)
sleepiest_sleep
```

```
##                     name      genus    vore           order conservation
## 1 North American Opossum  Didelphis    omni Didelphimorphia           lc
## 2          Big brown bat  Eptesicus insecti      Chiroptera           lc
## 3   Thick-tailed opposum Lutreolina   carni Didelphimorphia           lc
## 4       Little brown bat     Myotis insecti      Chiroptera         <NA>
## 5        Giant armadillo Priodontes insecti       Cingulata           en
##   sleep_total sleep_rem sleep_cycle awake brainwt bodywt
## 1        18.0       4.9   0.3333333   6.0 0.00630  1.700
## 2        19.7       3.9   0.1166667   4.3 0.00030  0.023
## 3        19.4       6.6          NA   4.6      NA  0.370
## 4        19.9       2.0   0.2000000   4.1 0.00025  0.010
## 5        18.1       6.1          NA   5.9 0.08100 60.000
```
The Little Brown Bat is the sleepiest animal!  

## Push your final code to GitHub!
Please be sure that you check the `keep md` file in the knit preferences.  
