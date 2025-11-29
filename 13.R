library(ggplot2)

sales <- data.frame(
  Month = factor(c("Jan","Feb","Mar","Apr","May","Jun","Jul","Aug","Sep","Oct","Nov")),
  A = c(500,600,700,800,750,850,900,950,1000,1050,1100),
  B = c(300,320,350,400,420,450,480,500,550,580,600),
  C = c(200,250,300,350,400,420,450,470,500,530,550)
)

long_sales <- reshape2::melt(sales, id.vars="Month",
                             variable.name="Product",
                             value.name="Sales")

ggplot(long_sales, aes(Product, Sales, fill=Product)) +
  geom_violin(trim=FALSE) +
  labs(title="Monthly Sales Performance - Violin Plot",
       x="Product", y="Sales") +
  theme_minimal()
