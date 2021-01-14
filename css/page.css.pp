#lang pollen

@charset "UTF-8";
@import url("style.css");

.main {
    max-width: 80%;
    display: grid;
    grid-template-columns: 1fr 30% 30% 1fr;
    grid-template-rows: 3em 1fr;
    grid-template-areas:
        "nav nav nav nav"
        "page page page page";
}

.nav {
    color: #7d4f27;
    font-size: ◊(* 0.65 base-font-size)em;
    grid-area: nav;
    justify-self: center;
    align-self: center;
}

.nav a {
    border-bottom: none;
    justify-self: center;
}

.content {
    display: grid;
    grid-area: page;
    grid-template-rows: 4em 1fr;
    grid-template-columns: 1fr 20% 20% 1fr;
    grid-template-areas:
        "title title title title"
        "content content content side";

}

.content h1 {
    grid-area: title;
}

.content .page-content {
    grid-area: content;
    text-align: justify;
    line-height: 1.45;
}

.page-content .sidenote {
    color: #532;
    font-size: ◊(* 0.5 base-font-size)em;
    margin-right: -37%;
    position: relative;
    float: right;
    width: 30%;
    transform: translateY(-30%);
}
