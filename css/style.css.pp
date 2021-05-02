#lang pollen

@charset "UTF-8";

@import url('https://fonts.googleapis.com/css2?family=Source+Sans+Pro:wght@400;700&family=Source+Serif+Pro:ital,wght@0,400;0,700;1,400;1,700&display=swap');

html {
    font-size: ◊|base-font-size|em;
}

body {
    background-color: #FAF9F6;
    margin-left: auto;
    margin-right: auto;
    font-family: ◊|body-fonts|;
    color: #111;
}

a {
    color: #333;
    border-radius: 4px;
    outline: none;
    text-decoration: none;
    padding: 2px 1px 0;
    transition: 0.2s ease-in-out;
}

a::after {
    font-size: 70%;
    vertical-align: top;
    content: "\200a𐩒";
}

a:hover {
    background-color: #fff5b9;
}
