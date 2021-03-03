#' @importFrom tibble tibble
NULL

#' FMI - World Economic Outlook
#'
#' Agregado de todos os dados disponíveis no pacote "fmi".
#' Crescimento do PIB; PIB a preços correntes; PIB per capita, a preços correntes;
#' PIB por Paridade do Poder de Compra, preços correntes; Inflação; Desemprego;
#' Saldo em Transações Correntes; Saldo em Transações Correntes, \% do PIB;
#' Dívida Líquida do Governo; Dívida Bruta do Governo
"fmi"

#' Crescimento do PIB
#'
#' Gross domestic product is the most commonly used single measure
#' of a country's overall economic activity. It represents the total
#' value at constant prices of final goods and services produced within
#' a country during a specified time period, such as one year.
#' Source: World Economic Outlook
#' \describe{
#'   \item{gdpgrowth}{crescimento do PIB, em porcentagem}
#'}
#' @source \url{https://www.imf.org/external/datamapper/datasets/WEO}
"gdpgrowth"

#'  PIB a preços correntes
#'
#'  Gross domestic product is the most commonly used single measure
#'  of a country's overall economic activity. It represents the total
#'  value at current prices of final goods and services produced within
#'  a country during a specified time period, such as one year.
#'  Source: World Economic Outlook
#' \describe{
#'   \item{gdpcurrent}{bilhões de U.S. dólares}
#'}
#' @source \url{https://www.imf.org/external/datamapper/datasets/WEO}
"gdpcurrent"

#' PIB per capita, a preços correntes
#'
#' Gross domestic product is the most commonly used single measure
#' of a country's overall economic activity. It represents the total
#' value at current prices of final goods and services produced within
#' a country during a specified time period divided by the average
#' population for the same one year.
#' Source: World Economic Outlook
#' \describe{
#'   \item{gdppercapita}{dólares per capita}
#'}
#' @source \url{https://www.imf.org/external/datamapper/datasets/WEO}
"gdppercapita"

#' PIB por Paridade do Poder de Compra, preços correntes
#'
#' Gross domestic product is the most commonly used
#' single measure of a country's overall economic activity.
#' It represents the total value in PPP terms of final
#' goods and services produced within a country during
#' a specified time period. Purchasing Power Parity (PPP) is
#' a theory which relates changes in the nominal exchange rate
#' between two countries currencies to changes in the countries' price levels.
#' More information on PPP methodology can be found on the World Economic Outlook FAQ.
#' Source: World Economic Outlook
#'
#' The Purchasing-power-parity (PPP) exchange rate (or conversion rate)
#' between two countries is the rate at which the currency of one country
#' needs to be converted into that of a second country to ensure that a given
#' amount of the first country's currency will purchase the same volume
#' of goods and services in the second country as it does in the first.
#' In the WEO online database, the implied PPP conversion rate is expressed
#' as national currency per current international dollar.
#'
#' The International Comparisons Program (ICP) is a global statistical
#' initiative that produces internationally comparable Purchasing Power Parity (PPP)
#' estimates. The PPP estimates maintained and published by the World Bank, the OECD,
#' and other international organizations, are used by WEO to calculate
#' its own PPP weight time series. Currently, WEO PPP exchange rates are
#' based on the ICP’s 2017 report. For more information, you can go to the
#' World Bank’s ICP page.
#'
#' # The PPP exchange rate in the WEO database comes from a calculation
#' that starts with the PPPs reported by the ICP for 2011–17, which is
#' then extended backwards and forwards by the growth in relative GDP
#' deflators (the deflator of a country divided by the deflator of the United States).
#'
#' The advantages and disadvantages of using PPP exchange rates rather
#' than market exchange rates are discussed in the Finance & Development
#'  article "PPP Versus the Market, Which Weight Matters?" (March 2007)
#'  and Box 1.2 of the September 2003 World Economic Outlook (WEO).
#'  For the latest PPP weights revision, please see Box 1.1. from the
#'  October 2020 WEO. For the 2014 PPP weights revision, see “Revised
#'  Purchasing Power Parity Weights” section in the July 2014 WEO Update.
#'  For the 2008 revision, see figure 1.16 from Chapter 1 of the April 2008 WEO.
#'  For 2003 revision, see Box A2 from the April 2004 WEO. For the 2000 revision,
#'  see Box A1 from the May 2000 WEO.
#' \describe{
#'   \item{gdpppp}{bilhões de dólares, paridade de poder de compra}
#'}
#' @source \url{https://www.imf.org/external/datamapper/datasets/WEO}
"gdpppp"

#' Inflação
#'
#' \describe{
#'   \item{inflacao}{porcentagem, variação anual}
#'}
#' @source \url{https://www.imf.org/external/datamapper/datasets/WEO}
"inflacao"

#' Desemprego
#'
#' \describe{
#'   \item{desemprego}{porcentagem, variação anual}
#'}
#' @source \url{https://www.imf.org/external/datamapper/datasets/WEO}
"desemprego"

#' Saldo em Transações Correntes
#'
#' \describe{
#'   \item{transacoescorrentes}{bilhões de dólares}
#'}
#' @source \url{https://www.imf.org/external/datamapper/datasets/WEO}
"transacoescorrentes"

#' Saldo em Transações Correntes, \% do PIB
#'
#' \describe{
#'   \item{transacoescorrentes_gdp}{porcentagem do pib}
#'}
#' @source \url{https://www.imf.org/external/datamapper/datasets/WEO}
"transacoescorrentes_gdp"

#' Dívida Líquida do Governo
#'
#' \describe{
#'   \item{dividaliquida}{porcentagem do pib, variação anual}
#'}
#' @source \url{https://www.imf.org/external/datamapper/datasets/WEO}
"dividaliquida"

#' Dívida Bruta do Governo
#'
#' \describe{
#'   \item{dividabruta}{porcentagem do pib}
#'}
#' @source \url{https://www.imf.org/external/datamapper/datasets/WEO}
"dividabruta"
