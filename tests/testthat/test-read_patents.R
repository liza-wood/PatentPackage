patents <- read_patents("~/Box/d-rug/data_small/")
write.csv(patents, "scratch/patents.csv", row.names = F,
          fileEncoding = 'UTF-8')

test_that("patent reading works", {
  patents <- read_patents("~/Box/d-rug/data_small/")
  expect_known_output(patents, "scratch/patents.csv")
})

# Then connect this to a github action
use_github_actions_badge("check-release")
