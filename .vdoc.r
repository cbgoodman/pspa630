#
#
#
#
#
library(dplyr)
library(tibble)
library(pander)
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
assignments <- tribble(
  ~Points,  ~Assignment,
  7 * 10  , "Discussion Boards (7 × 10)",
  7 * 10  , "Weekly Check-ins (7 × 10)",
  100     , "Case Analysis 1: Adoption of Home Rule",
  100     , "Case Analysis 2: Responding to Preemption",
  100     , "Case Analysis 3: To Cooperate or Not",
  200     , "Building Municipal Capacity Paper",
  50      , "Building Municipal Capacity Presentation"
) %>%
  mutate(Percent = Points / sum(Points),
         Percent = scales::label_percent(accuracy = 1)(Percent))
#
#
#
assignments_total <- tibble(Assignment = "Total",
                            Points = sum(assignments$Points),
                            Percent = NA)

bind_rows(assignments, assignments_total) %>% 
  select(Assignment, Points, Percent) %>% 
  pandoc.table(justify = "lcc", missing = "—", digits = c(1, 3))
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
