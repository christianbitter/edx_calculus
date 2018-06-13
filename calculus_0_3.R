rm(list = ls());

library(ggplot2);
library(dplyr);

# explore the limits to the function 
# f_x = sqrt( 3 - 5x + x^2 + x^3) / (x - 1)
# getting closer from the right and from the left


f_x <- function(x){
  return(sqrt(3 - 5*x + x^2 + x^3) / (x - 1));
}


from_left  <- seq(0, 1, .005);
from_right <- seq(2, 1, -.005);

xl <- from_left;
yl <- f_x(from_left);
xr <- from_right;
yr <- f_x(from_right);

df <- data.frame(x = c(xl, xr), y = c(yl, yr));

df %>% ggplot(aes(x = x, y = y)) + geom_point() + geom_line() + 
  ggtitle(label = "Calculus 0.3 - Moving closer and closer",
          subtitle = "Approaching from the left shows that the limit is -2\r\nApproaching from the right shows that the limit is 2");

# 
# 
