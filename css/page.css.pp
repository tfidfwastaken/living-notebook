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

.nav a::after {
    content: "";
}

.content {
    display: grid;
    grid-area: page;
    grid-template-rows: auto 1fr;
    grid-template-columns: 1fr 40% 1fr;
    grid-template-areas:
        "title title title"
        "content content side";

}

.content .page-title {
    grid-area: title;
    margin-top: 1em;
    margin-bottom: 0;
}

.content .page-content {
    align-self: start;
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

#me {
    display: block;
    border: 10px solid #fff;
    box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);
    margin-left: auto;
    margin-top: 2em;
    margin-right: auto;
    width: 60%;
    transform: rotate(◊(random -3 3)deg);
}
