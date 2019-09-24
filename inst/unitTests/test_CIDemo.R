library(CIDemo)
library(RUnit)
#------------------------------------------------------------------------------------------------------------------------
runTests <- function()
{
   test_constructor()
   test_methods()
   test_localWebBrowserAvailability()

} # runTests
#------------------------------------------------------------------------------------------------------------------------
test_constructor = function ()
{
  message(sprintf("--- test_constructor"))

  ciDemo <- CIDemo("minimal")
  checkTrue("CIDemo" %in% is(ciDemo))

} # test_constructor
#------------------------------------------------------------------------------------------------------------------------
test_methods = function ()
{
  message(sprintf("--- test_methods"))

  project.name <- "minimal"
  ciDemo <- CIDemo(project.name)

  checkEquals(getProjectName(ciDemo), project.name)
  checkEquals(addTwo(ciDemo, -2), 0)

} # test_methods
#------------------------------------------------------------------------------------------------------------------------
test_localWebBrowserAvailability = function ()
{
  message(sprintf("--- test_localWebBrowserAvailability"))

  browseURL("http://google.com")
  Sys.sleep(10)


} # test_localWebBrowserAvailability
#------------------------------------------------------------------------------------------------------------------------
if(!interactive())
   runTests()

