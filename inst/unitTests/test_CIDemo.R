library(CIDemo)
library(RUnit)
#------------------------------------------------------------------------------------------------------------------------
runTests <- function()
{
   test_constructor()
   test_methods()

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
if(!interactive())
   runTests()

