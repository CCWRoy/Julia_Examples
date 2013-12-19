# Julia 0.2 RC1
# Created: 29.10.13
# Last Edit: 31.10.13

using PyPlot

close("all") # Close all currently open figures

#################
#  Create Data  #
#################
x = [1:1:50]
y = 100*rand(50);

################
##  Bar Plot  ##
################
fig = figure(figsize=(10,10))
subplot(211)
b = bar(x,y,color="#0f87bf",align="center",alpha=0.4)
axis("tight")
title("Vertical Bar Plot")
grid("on")
xlabel("X")
ylabel("Y")

subplot(212)
b = barh(x,y,color="#0f87bf",align="center",alpha=0.4)

axis("tight")
title("Horizontal Bar Plot")
grid("on")
xlabel("X")
ylabel("Y")

suptitle("Bar Plot Examples")