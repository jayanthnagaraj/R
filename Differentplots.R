library(ggplot2)

df<-read.csv("B:\\MLtried\\Rbasics\\BM_data.csv")
#View(df)

df$Item_Outlet_Sales=as.factor(df$Item_Outlet_Sales)
df$Outlet_Location_Type=as.factor(df$Outlet_Location_Type)

ggplot(df, aes(x=Item_Identifier)) +
  geom_histogram(stat="count")+
  labs(title=" Sale of different Items")

ggplot(df, aes(x=Item_Type )) +
  geom_bar()+
  theme_bw()+
  facet_wrap(~ Outlet_Location_Type)+
  labs(title="  sales in different tier cities ")

ggplot(df, aes(x=Item_Type )) +
  geom_histogram(binwidth=2,stat="count",)+
  theme_bw()+
  labs(y="Sales Count",x="Item Type" ,title=" item types sales")



ggplot(df, aes(x=Item_Type , fill= Item_Fat_Content)) +
  geom_bar()+
  theme_bw()+
  labs(title=" Fat contents for different products")


