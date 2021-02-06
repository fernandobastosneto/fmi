
<!-- README.md is generated from README.Rmd. Please edit that file -->

# fmi

Dados atualizados do World Economic Outlook.

O FMI não oferece API específica para dados atualizados do World
Economic Outlook. Contudo, o
[dashboard](https://www.imf.org/external/datamapper) do datamapper
permite que determinados indicadores sejam baixados diretamente do site,
sem a necessidade de se perder nos muitos links do site do Fundo (nem
mesmo se aventurar no complicado mundo do smdx). Esse pacote atualizará
automaticamente os dados enquanto o datamapper existir.

Os dados, divididos por indicadores, estão em formato tidy e contêm,
todos, três colunas: país, ano e valor.

Dados disponíveis:

  - desemprego
  - inflação
  - dívida bruta do governo
  - dívida líquida (grau de endividamento)
  - pib a preços correntes
  - crescimento do pib
  - pip per capita
  - pip por paridade do poder de compra
  - saldo em transações correntes
  - saldo em transações correntes em porcentagem do pib

## Instalação

``` r
remotes::install.github("fernandobastosneto/fmi")
```

## Exemplos

``` r
library(fmi)
library(magrittr)

fmi::gdpgrowth %>%
  dplyr::filter(pais == "Brazil")
#> # A tibble: 46 x 3
#>    pais   ano   value
#>    <chr>  <chr> <dbl>
#>  1 Brazil 1980    9.2
#>  2 Brazil 1981   -4.4
#>  3 Brazil 1982    0.6
#>  4 Brazil 1983   -3.4
#>  5 Brazil 1984    5.3
#>  6 Brazil 1985    7.9
#>  7 Brazil 1986    7.5
#>  8 Brazil 1987    3.6
#>  9 Brazil 1988    0.3
#> 10 Brazil 1989    3.2
#> # … with 36 more rows
```

``` r

fmi::transacoescorrentes %>% 
  dplyr::filter(pais == "Brazil")
#> # A tibble: 46 x 3
#>    pais   ano     value
#>    <chr>  <chr>   <dbl>
#>  1 Brazil 1980  -12.8  
#>  2 Brazil 1981  -11.7  
#>  3 Brazil 1982  -16.3  
#>  4 Brazil 1983   -6.84 
#>  5 Brazil 1984    0.04 
#>  6 Brazil 1985   -0.228
#>  7 Brazil 1986   -5.65 
#>  8 Brazil 1987   -1.44 
#>  9 Brazil 1988    4.17 
#> 10 Brazil 1989    1.03 
#> # … with 36 more rows
```

``` r
fmi::dividaliquida %>% 
  dplyr::filter(pais == "Brazil")
#> # A tibble: 46 x 3
#>    pais   ano   value
#>    <chr>  <chr> <dbl>
#>  1 Brazil 1980     NA
#>  2 Brazil 1981     NA
#>  3 Brazil 1982     NA
#>  4 Brazil 1983     NA
#>  5 Brazil 1984     NA
#>  6 Brazil 1985     NA
#>  7 Brazil 1986     NA
#>  8 Brazil 1987     NA
#>  9 Brazil 1988     NA
#> 10 Brazil 1989     NA
#> # … with 36 more rows
```

``` r
fmi::dividabruta %>% 
  dplyr::filter(pais == "Brazil") %>% 
  dplyr::arrange(desc(ano))
#> # A tibble: 46 x 3
#>    pais   ano   value
#>    <chr>  <chr> <dbl>
#>  1 Brazil 2025  104. 
#>  2 Brazil 2024  104. 
#>  3 Brazil 2023  104. 
#>  4 Brazil 2022  104. 
#>  5 Brazil 2021  103. 
#>  6 Brazil 2020  101. 
#>  7 Brazil 2019   89.5
#>  8 Brazil 2018   87.1
#>  9 Brazil 2017   83.7
#> 10 Brazil 2016   78.3
#> # … with 36 more rows
```
