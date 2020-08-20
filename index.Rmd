---
title       : Exploring Calculus
subtitle    : Surfing the Derivative and Rectangles for the Integral
author      : Ken Peters
job         : Looking!
framework   : io2012        # {io2012, html5slides, shower, dzslides, ...}
highlighter : highlight.js  # {highlight.js, prettify, highlight}
hitheme     : tomorrow      # 
widgets     : [mathjax]            # {mathjax, quiz, bootstrap}
mode        : selfcontained # {standalone, draft}
knit: slidify::knit2slides 
github:
  user: kwpeters58
  repo: Slide_Demo

---
Quick Calculus Background
Calculus has 2 major components (at least initially)  
1. The Derivative    
2. The Integral  
*One motivational for the Derivative is the tangent line.*  
In geometry, the tangent line (or simply tangent) to a plane curve at a given point is the straight line that "just touches" the curve at that point. Leibniz defined it as the line through a pair of infinitely close points on the curve.More precisely, a straight line is said to be a tangent of a curve y = f(x) at a point x = c on the curve if the line passes through the point (c, f(c)) on the curve and has slope f'(c), where f' is the derivative of f.

---

The first 4 graphs illustrate the tangent line by "Surfing the Derivative". This means that we can view a line segment centered at a point on the graph, where that the line segment is part of the tangent. You can choose (from the drop-down menu) both the color of the "surfboard" and the "surfer". As we move the slider for "x", we surf along the curve, using the tangent line.

The functions used are:

1. $f(x) = sin(x)$    
2. $f(x) = x^2$  
3. $f(x) = x^3 - 8x$  
4. $f(x) = e^x$  


--- 
*One motivational for the Integral (definite) is the Riemann Sum Process.*  
In mathematics, a Riemann sum is a certain kind of approximation of an integral by a finite sum. It is named after nineteenth century German mathematician Bernhard Riemann. One very common application is approximating the area of functions.

The sum is calculated by partitioning the region into shapes (rectangles, trapezoids, parabolas, or cubics) that together form a region that is similar to the region being measured, then calculating the area for each of these shapes, and finally adding all of these small areas together. 

Because the region filled by the small shapes is usually not exactly the same shape as the region being measured, the Riemann sum will differ from the area being measured. This error can be reduced by dividing up the region more finely, using smaller and smaller shapes. As the shapes get smaller and smaller, the sum approaches the Riemann integral.

--- 
The last 4 graphs illustrate the sum by using rectangles. We can use the slider to change the value for n, the number of rectangles. As we slide along the n values, the output draws the rectangles and also outputs the approximation( the sum of the areas)

The functions used are:

1. $f(x) = sin(x)$    
2. $f(x) = x^2$  
3. $f(x) = e^x$  
4. $f(x) = \sqrt{9 - x^2}$; A semi-circle of radius 3  

[Go to the Exploring Calculus Web Site](https://kenpeters58.shinyapps.io/Exploring_Calculus/?_ga=2.172743843.1657274201.1597770319-1787456175.1597770319)  
[The code for this project can be found here](https://github.com/kwpeters58/Exploring-Calculus)

