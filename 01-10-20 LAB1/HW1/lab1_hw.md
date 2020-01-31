---
title: "Lab 1 Homework"
subtitle: "01/17/20"
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


## Question 1

```r
+ 5 - 3 * 2  
```

```
## [1] -1
```

```r
  + 8 / 2 ** 2  
```

```
## [1] 2
```
## Question 2

```r
(5-3)*2
```

```
## [1] 4
```

```r
(8/2)**2
```

```
## [1] 16
```
## Question 3

```r
pi <- 3.14159265359
```
## Question 4

```r
class(pi)
```

```
## [1] "numeric"
```
## Question 5
a)

```r
days <- c( "Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday", "Sunday")
```

```r
blackjack<- c(140, -20, 70, -120, 240, NA, NA)
```

```r
roulette<- c(60, 50, 120, -300, 10, NA, NA)
```
b)

```r
sum(blackjack)
```

```
## [1] NA
```
c)

```r
new_blackjack <- na.omit (blackjack)
```

```r
sum(new_blackjack)
```

```
## [1] 310
```
d)

```r
new_roulette <- na.omit (roulette)
```

```r
sum(new_roulette)
```

```
## [1] -60
```
e)

```r
total_week <- c(blackjack+roulette)
```

```r
total_week
```

```
## [1]  200   30  190 -420  250   NA   NA
```
f) Stick to blackjack

```r
blackjack>roulette
```

```
## [1]  TRUE FALSE FALSE  TRUE  TRUE    NA    NA
```




