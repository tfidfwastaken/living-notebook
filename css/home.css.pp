#lang pollen

@charset "UTF-8";
@import url("style.css");

img {
    max-width: 100%;
    justify-self: center;
    align-self: stretch;
}

.container {
    max-width: 80%;
    margin-top: 15vh;
    display: grid;
    grid-template-columns: 65% auto;
    grid-template-areas: "main side";
}

.main-side {
    grid-area: side;
    display: grid;
    grid-template-areas: "art"
                         "links";
}

#side-links {
    font-size: ◊(* 0.65 base-font-size)em;
    grid-area: links;
    justify-self: center;
}

.home-header {
    cursor: default;
    font-family: ◊|sans-fonts|;
    color: #333;
    margin-bottom: 0.3em;
    font-size: 3em;
    font-weight: 600;
    transition: color 1.5s ease-in-out;
}

.home-header:hover {
    color: #000;
}

.main {
    grid-area: main;
}

.section-header {
    cursor: default;
    width: 70%;
    font-size: 0.85em;
    color: #555;
    font-family: ◊|sans-fonts|;
    padding-bottom: 0.25em;
    border-bottom: 1px solid #777;
}

ul {
    display: grid;
    margin-top: 0.4em;
    padding-left: 0;
    list-style-type: none;
    grid-template-columns: repeat(auto-fit,minmax(132px, 1fr));
}

#sketch {
    min-height: 350px;
}

#sketch canvas {
    clip-path: circle(45%);
    border: 1px solid #999;
    border-radius: 50%;
    transition: clip-path 1.5s ease-in-out;
}

#sketch canvas:hover {
    clip-path: circle(100%);
}
