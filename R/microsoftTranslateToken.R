microsoftTranslateToken<-function(x, access.token, source.lang, target.lang){
  if (missing(source.lang)) {
    params = paste("text=", URLencode(x), "&from=", source.lang, sep = "")
  } else {
    params = paste("text=", URLencode(x), "&to=", target.lang, "&from=", source.lang, sep = "")
  }
  translateUrl = paste("http://api.microsofttranslator.com/v2/Http.svc/Translate?", params, sep = '')
  
  return(
    cleanFun(
      GET(translateUrl, add_headers(Authorization = paste('Bearer', access.token)))
    )
  )
}
