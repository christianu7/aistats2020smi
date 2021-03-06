#' @title Set default ggplot2 theme
#' @title Configures ggplot2 theme to be used in our plots
#' @param resize Resize some of the text elements
#' @import ggplot2
#' @export
set_ggtheme <- function( resize=FALSE ){
  theme_set( theme_bw() )
  theme_update( legend.position = "bottom",
                legend.title = element_blank())
  if(resize){
    theme_update( axis.text.x = element_text(size = 20),
                  axis.text.y = element_text(size = 20),
                  axis.title.x = element_text(size = 25, margin = margin(20, 0, 0, 0)),
                  axis.title.y = element_text(size = 25, angle = 90, margin = margin(0, 20, 0, 0)),
                  legend.text = element_text(size = 20),
                  # legend.title = element_text(size = 20),
                  title = element_text(size = 30),
                  strip.text = element_text(size = 25),
                  strip.background = element_rect(fill = "white"),
                  legend.position = "bottom")
  }
}

# Default colors in ggplot
#' @importFrom grDevices hcl
gg_color_hue <- function(n) {
  # https://stackoverflow.com/questions/8197559/emulate-ggplot2-default-color-palette
  hues = seq(15, 375, length = n + 1)
  grDevices::hcl(h = hues, l = 65, c = 100)[1:n]
}

#' @importFrom stats var
R_hat.mcmc <- function(x,m) {
  # Computes the Potential Scale Reduction Coefficient
  # Gelman et al. (2014) sec. 11.4 page 285
  n <- floor(length(x)/m)
  chain_split <- matrix(NA,nrow=n,ncol=m)
  for(i in 1:m) {
    chain_split[,i] <- x[(1+n*(i-1)):(n*i)]
  }
  B <- n * stats::var(apply(chain_split,2,mean))
  W <- mean(apply(chain_split,2,stats::var))
  var_hat <- ((n-1)/n)*W + (1/n)*B
  R_hat <- sqrt(var_hat/W)
  R_hat
}

bounce_limit <- function(x,a,b){
  while( (x<a) || (x>b) ) {
    if(x < a) {
      x <- a + (a-x)
    }
    if(x > b) {
      x <- b - (x-b)
    }
  }
  return(x)
}

mapto01 <- function(x,na.rm=T){
  # Function to map one variable to the range 0 1
  (x-min(x,na.rm=na.rm))/diff(range(x,na.rm=na.rm))
}

#' @importFrom grid grid.newpage pushViewport viewport grid.layout
multiplot <- function(..., plotlist=NULL, cols) {

  # Make a list from the ... arguments and plotlist
  plots <- c(list(...), plotlist)

  numPlots = length(plots)

  # Make the panel
  plotCols = cols                          # Number of columns of plots
  plotRows = ceiling(numPlots/plotCols) # Number of rows needed, calculated from # of cols

  # Set up the page
  grid::grid.newpage()
  grid::pushViewport(grid::viewport(layout = grid::grid.layout(plotRows, plotCols)))
  vplayout <- function(x, y)
    grid::viewport(layout.pos.row = x, layout.pos.col = y)

  # Make each plot, in the correct location
  for (i in 1:numPlots) {
    curRow = ceiling(i/plotCols)
    curCol = (i-1) %% plotCols + 1
    print(plots[[i]], vp = vplayout(curRow, curCol ))
  }

}
