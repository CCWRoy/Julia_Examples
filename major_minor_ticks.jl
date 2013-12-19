# Demonstration of major and minor ticks
# Julia 0.2
# 19.12.13
# Last Edit: 19.12.13

using PyPlot

close("all")

###################
#  Generate Data  #
###################
x = [0.0:0.01:100.0]
y = sin(0.1pi*x).*exp(-0.01x)

##########
#  Plot  #
##########
fig = figure(figsize=(10,10))
p = plot(x,y)
ax = gca()
xlabel("X Axis")
ylabel("Y Axis")
grid("on")
title("Major and Minor Ticks")

###########################
#  Set the tick interval  #
###########################
Mx = matplotlib[:ticker][:MultipleLocator](20) # Define interval of major ticks
f = matplotlib[:ticker][:FormatStrFormatter]("%1.2f") # Define format of tick labels
ax[:xaxis][:set_major_locator](Mx) # Set interval of major ticks
ax[:xaxis][:set_major_formatter](f) # Set format of tick labels

mx = matplotlib[:ticker][:MultipleLocator](5) # Define interval of minor ticks
ax[:xaxis][:set_minor_locator](mx) # Set interval of minor ticks

My = matplotlib[:ticker][:MultipleLocator](0.5) # Define interval of major ticks
ax[:yaxis][:set_major_locator](My) # Set interval of major ticks

my = matplotlib[:ticker][:MultipleLocator](0.1) # Define interval of minor ticks
ax[:yaxis][:set_minor_locator](my) # Set interval of minor ticks

#########################
#  Set tick dimensions  #
#########################
ax[:xaxis][:set_tick_params](which="major",length=10,width=2)
ax[:xaxis][:set_tick_params](which="minor",length=5,width=2)

fig[:canvas][:draw]() # Update the figure