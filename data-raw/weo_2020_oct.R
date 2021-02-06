library(magrittr)

url <- "https://www.imf.org/external/datamapper//export/excel.php?indicator=NGDP_RPCH"

httr::GET(url, httr::write_disk(here::here("data-raw", "realgdpgrowth.xls"), overwrite = T))

gdpgrowth <- readxl::read_excel(here::here("data-raw", "realgdpgrowth.xls"))

url <- "https://www.imf.org/external/datamapper//export/excel.php?indicator=NGDPD"
httr::GET(url, httr::write_disk(here::here("data-raw", "gdpcurrent.xls"), overwrite = T))

gdpcurrent <- readxl::read_excel(here::here("data-raw", "gdpcurrent.xls"))

url <- "https://www.imf.org/external/datamapper//export/excel.php?indicator=NGDPDPC"
httr::GET(url, httr::write_disk(here::here("data-raw", "gdppercapita.xls"), overwrite = T))

gdppercapita <- readxl::read_excel(here::here("data-raw", "gdppercapita.xls"))

url <- "https://www.imf.org/external/datamapper//export/excel.php?indicator=PPPGDP"
httr::GET(url, httr::write_disk(here::here("data-raw", "gdpppp.xls"), overwrite = T))

gdpppp <- readxl::read_excel(here::here("data-raw", "gdpppp.xls"))

url <- "https://www.imf.org/external/datamapper//export/excel.php?indicator=PCPIPCH"
httr::GET(url, httr::write_disk(here::here("data-raw", "inflacao.xls"), overwrite = T))

inflacao <- readxl::read_excel(here::here("data-raw", "inflacao.xls"))

url <- "https://www.imf.org/external/datamapper//export/excel.php?indicator=LUR"
httr::GET(url, httr::write_disk(here::here("data-raw", "desemprego.xls"), overwrite = T))

desemprego <- readxl::read_excel(here::here("data-raw", "desemprego.xls"))

url <- "https://www.imf.org/external/datamapper//export/excel.php?indicator=BCA"
httr::GET(url, httr::write_disk(here::here("data-raw", "transacoescorrentes.xls"), overwrite = T))

transacoescorrentes <- readxl::read_excel(here::here("data-raw", "transacoescorrentes.xls"))

url <- "https://www.imf.org/external/datamapper//export/excel.php?indicator=BCA_NGDPD"
httr::GET(url, httr::write_disk(here::here("data-raw", "transacoescorrentes_gdp.xls"), overwrite = T))

transacoescorrentes_gdp <- readxl::read_excel(here::here("data-raw", "transacoescorrentes_gdp.xls"))

url <- "https://www.imf.org/external/datamapper//export/excel.php?indicator=GGXCNL_NGDP"
httr::GET(url, httr::write_disk(here::here("data-raw", "dividaliquida.xls"), overwrite = T))

dividaliquida <- readxl::read_excel(here::here("data-raw", "dividaliquida.xls"))

url <- "https://www.imf.org/external/datamapper//export/excel.php?indicator=GGXWDG_NGDP"
httr::GET(url, httr::write_disk(here::here("data-raw", "dividabruta.xls"), overwrite = T))

dividabruta <- readxl::read_excel(here::here("data-raw", "dividabruta.xls"))

fun <- . %>%
  tibble::as_tibble() %>%
  tidyr::pivot_longer(2:tidyselect::last_col(), names_to = "ano", values_to = "value") %>%
  tidyr::drop_na() %>%
  dplyr::mutate(value = dplyr::na_if(value, "no data"),
                value = as.numeric(value)) %>%
  dplyr::rename(pais = 1)

desemprego <- fun(desemprego)
dividabruta <- fun(dividabruta)
dividaliquida <- fun(dividaliquida)
gdpgrowth <- fun(gdpgrowth)
gdpcurrent <- fun(gdpcurrent)
gdppercapita <- fun(gdppercapita)
gdpppp <- fun(gdpppp)
inflacao <- fun(inflacao)
transacoescorrentes <- fun(transacoescorrentes)
transacoescorrentes_gdp <- fun(transacoescorrentes_gdp)


usethis::use_data(desemprego, dividabruta, dividaliquida, gdpcurrent,
                  gdppercapita, gdpppp, gdpgrowth, inflacao,
                  transacoescorrentes, transacoescorrentes_gdp, overwrite = T)
