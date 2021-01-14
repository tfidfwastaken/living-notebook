#lang pollen

@charset "UTF-8";

html {
    font-size: ◊|base-font-size|em;
}

body {
    background-color: #FAF9F6;
    width: 87.5%;
    margin-left: auto;
    margin-right: auto;
    padding-left: 12.5%;
    font-family: ◊|body-fonts|;
    color: #111;
    max-width: 1400px;
}

a {
    outline: none;
    text-decoration: none;
    padding: 2px 1px 0;
    border-bottom: 2px solid #666;
    transition: 0.2s ease-in-out;
}

a:hover {
    background-color: #fff5b9;
    border-bottom: 2px solid #333;
}
