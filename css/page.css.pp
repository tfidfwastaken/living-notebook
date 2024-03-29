#lang pollen

@charset "UTF-8";
@import url("style.css");

.main {
    margin-left: auto;
    margin-right: auto;
    max-width: 80%;
    display: grid;
    grid-template-columns: 1fr 30% 30% 1fr;
    grid-template-rows: 3em 1fr 4em;
    grid-template-areas:
        "nav nav nav nav"
        "page page page page"
        "footer footer footer footer";
    width: 1000px;
}

.nav {
    color: #7d4f27;
    font-size: ◊(* 0.85 base-font-size)em;
    grid-area: nav;
    justify-self: center;
    align-self: center;
}

.nav a {
    justify-self: center;
}

.nav a::after {
    content: "";
}

.footer {
    color: #7d4f27;
    font-size: ◊(* 0.85 base-font-size)em;
    grid-area: footer;
    justify-self: center;
    align-self: center;
}

.footer a {
    justify-self: center;
}

.footer a::after {
    content: "";
}

.content {
    display: grid;
    grid-area: page;
    grid-template-rows: auto 1fr;
    grid-template-columns: 1fr 35% 1fr;
    grid-template-areas:
        "title title title"
        "content content side";

}

.content .page-title {
    grid-area: title;
    margin-top: 0em;
    margin-bottom: -0.3em;
    font-family: ◊|sans-fonts|;
    font-size: 1.1em;
    color: #423434;
}

.content .page-content {
    align-self: start;
    grid-area: content;
    text-align: justify;
    line-height: 1.45;
}

.page-content .sidenote {
    color: #532;
    font-size: ◊(* 0.6 base-font-size)em;
    margin-right: -37%;
    position: relative;
    float: right;
    width: 30%;
    transform: translateY(-30%);
}

.section {
    margin-top: 1.5em;
    margin-bottom: -0.5em;
    font-family: ◊|sans-fonts|;
    font-size: 1em;
}

img {
    max-width: 100%;
}

figcaption {
    text-align: center;
    margin-top: -1em;
    font-size: ◊(* 0.65 base-font-size)em;
}

.theme-break {
    text-align: center;
}

.theme-break span {
    font-size: 1.2em;
    margin-right: 8px;
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

@media (max-width: 980px) {
    body {
        font-size: ◊(* 2 base-font-size)em;
    }
    .content {
        display: flex;
        flex-direction: column;
    }
    .main {
        display: flex;
        flex-direction: column;
    }
    .page-content .sidenote {
        background-color: #e3dad2;
        padding: 3px;
        width: 100%;
        transform: none;
        float: none;
    }
}
