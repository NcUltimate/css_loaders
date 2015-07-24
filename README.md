## Loading.CSS

![Loading.css Image](http://i.imgur.com/vKHjGy0.png)

A series of basic animated loaders using only 1 HTML element and 100% CSS. Sort of inspired by [FontAwesome](http://fortawesome.github.io/Font-Awesome/) but instead focuses on building a library of themed loaders. 

## Themes (more coming)
 * Science -- Thermometer, Speedometer, Gyroscope, Newton's Cradle, etc.
 * Sports -- Table Tennis, Football, Basketball (more coming)
 * Fun -- Balloon, Pac Man, Bouncing Ball, Fireworks, etc.
 * General -- Spinners, Portals, Flippers, etc.

Using 1 HTML element guarantees a minimal addition to your project. Simply download the corresponding css file for the loader you want to use, and anywhere in your HTML make an element with its class. For example, to use a Clock loader, put the line

    <div class="container">
        <div class="ld ld-clock"></div>
    </div>

into your HTML or

    .container 
      .ld.ld-clock

into your HAML wherever it is desired.