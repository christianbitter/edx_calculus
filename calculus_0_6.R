rm(list = ls());

library(ggplot2);
library(dplyr);


g <- function(x){
  return(x / tan(2*x))
}

h <- function(x){
  return((abs(x) + sin(x))/x^2)
}

j <- function(x){
  return(sin(13/x))
}

xr <- seq(1, 0, -.001);
xl <- seq(-1, 0, .001);
x  <- c(xl, xr);
f  <- c(rep("xl", length(xl)), rep("xr", length(xr)));

df <- data.frame(x = x, "g" = g(x), "h" = h(x), "j" = j(x), type = f);

df %>% ggplot(aes(x = x, y = g, colour = type)) + 
  geom_point() + 
  ggtitle(label = "Calculus 0.6 - A few more limits",
          subtitle = "the limit from the left is -2 and from the right is +2.")

df %>% ggplot(aes(x = x, y = h, colour = type)) + 
  geom_point() + 
  ggtitle(label = "Calculus 0.6 - A few more limits",
          subtitle = "the limit from the left is 0 and from the right is DNE.");

df %>% ggplot(aes(x = x, y = j, colour = type)) + 
  geom_point() + 
  ggtitle(label = "Calculus 0.6 - A few more limits",
          subtitle = "the limit from the left is 0 and from the right is DNE.")