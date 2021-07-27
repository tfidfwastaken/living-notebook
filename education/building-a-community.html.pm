#lang pollen

◊(define-meta title "On Building a FOSS Community in My University")

Naïve me from a childhood now past thought Universities were a place of innovation and exploration. Shortly after becoming an adult, I joined college. Shortly after I joined college, I experienced what I feared. My University is as much in the business of systematically slaughtering curiosity as schools are. Their approach is more indigestion-inducing though, for it is accompanied by vastly more theatrics and snobbery to show how cutting edge they think they are. They truly believe their syllabi built from material stolen from shady internet resources are the forefront of knowledge and innovation.

My friends and contacts in various institutions across India have confirmed to me that this is a common phenomenon. Engineering colleges in India are more often than not, terrible vocational schools, and a marketplace to sell parents the promise of a degree and placements.

Just around the time I decided to take my chump stamp and move on with my life, I noticed one phenomenon that gave me hope and promise in this dystopia I found myself in.

◊sec{An ex-college club}

In the outdated list of clubs that my University maintained, I saw an entry that piqued my curiosity, a club named "PES Open Source".

◊sn{Typically, college clubs in my University are "allowed to exist", mostly because they serve as marketing for the admission season.}

I was interested, because my previous glimpses into Open Source communities gave me the impression that they attract innovators, tinkerers, and folks whose philosophy is driven by the satisfaction of eating up knowledge and serving it to others. A contrast to our higher education institutes.

I found the club's website and past activities, but no trace of the actual club. It was a dead community. Their past was a moment of inspiration for me. They were a group of students who were tinkerers at heart, and decided to form a student-led community of bottom-up learning. It is telling that one of the first things they did as a community is to bunk a week of college lectures to attend conf.kde.in, and meet members of the global KDE community to just to learn and push themselves in ways college could not.

◊sn{This was impressive given how strict attendance requirements usually are in Indian colleges.}

The club lasted for a few years. With no succession plan, it faded to obscurity. Until that day, where I found a link to a Slack workspace. That workspace still had those original founders in them. The founders were surprised at this blip of activity, so I had a good talk with them.

I decided, we needed this back in our college. Over the next two years I found a set of like-minded collaborators, and we tried to create a community focused around Open Source, but more importantly, around bottom-up learning, ie, tinkering and sharing with each other ideas that excite us, in the hopes of achieving a sum greater than our parts.

Much like other stories in a dystopian setting, this one does not have a fairytale ending, or an ending at all. The results have been a mixed bag, and here I shall outline the struggles we have met so far, in the hopes that others interested in similar ventures can learn from our experiences.

◊sec{Most students don't share our ideals}

A reason why Universities in India are so anti-curiosity and anti-exploratotion is because they are merely serving an economic demand. Degrees are misconstrued as a stamp that guarantees stable jobs. An important pillar of Indian societal values is pride to the family name, and a stable (ideally overflowing) income. These ideas drive the marketing departments of Universities, and they are happy to promote the idea that they can satisfy both these demands.

My initial expectations from college and the people in it only existed because of my highly privileged upbringing and background. Not all students even have this privilege to conceive that a University should be a community, and not exclusively a career incubator. We often found that many of our peers are merely concerned with career advancement, through a traditional path of scoring marks, padding résumés with whatever they are told attracts recruiters, and cracking placement interviews. All of this without leaving room for any other pursuit.

These attitudes are often at odds with our philosophy, which at its core is the anti-thesis to current University learning. We adopted a non-hierarchical organisation structure, with a core team that exists to handles administrative tasks. We made it clear that this core team has no elevated status---they are just volunteers that moderate discourse, make our weekly meetups happen, and encourage projects. We also prided ourselves in being open and welcoming. Anyone interested can join and volunteer, with no interview process (which is the norm in college clubs).

This did not stop a significant number of students from joining the core team, not because they shared our beliefs. They instead joined to pad their LinkedIn profiles so that they can claim to be "active core members of a student society". I think they believed that looked attractive to recruiters. Not a problem, if they actually did any work in their brief tenure. The profile of students who joined the community was not very different. We tried to weed out the laziest of participants to join our Slack workspace, by requiring that they actually put a token effort of making a pull request to a repository that adds their name in a "member's list". This trivial barrier helped keep out a large swathe of students who wanted to join just to probe or lurk.

It did not address that issue strongly enough though. In a span of a few months we got around 150 members in the workspace, of which hardly 15-20 ever participated in any significant way. This is a measure of surface-level participation, not a deep dedication to our ideal. Our meetups looked rather empty for a community with such high levels of membership.

There were occasions where we got high levels of participation though. We once hosted a physical Hacktoberfest event in 2019. It was our first large community event, and many of our core members worked tirelessly to ensure we bring to life the then non-existent Open Source community. We wanted to make Open Source projects and contributions the norm, and we believed such an event would kickstart it.

Under a tight schedule, and an oppressive bureaucracy of our University to secure the auditorium, we still managed to get some Open Source leaders and tinkerers from our local community to give talks, ranging from Open Source hardware to philosophy. To this day, I am still happy with getting Zainab Bawa, CEO of HasGeek, to give a talk for us, who brought with her a memorable discourse.

This was followed by an event where we booked the auditorium and got a room full of beginners to Open Source to make contributions to repositories around the world for Hacktoberfest. The event, much like other Hacktoberfest events had many goodies ("swags") associated with it. These were given to people with the most contributions, best contributions, etc. And obviously free stickers for all those who showed up, and last but not the least, the t-shirts that come from Hacktoberfest itself.

◊sn{About 90 people showed up, although around 250 registered. We anticipated this, and if it did not happen, we would have been vastly over capacity.}

We tried to be responsible hosts, emphasizing why Open Source is awesome, and what is good etiquette when approaching projects. We also tried inviting an Open Source startup and maintainers of a popular Open Source project to address the audience (the startup folks misread the date, and did not show up). Me and a lot of my collaborators were guiding people who were stuck.

We had also arranged for a team to actually audit the contributions that were being made. There were about two hundred Pull Requests opened by the end of the event. Only about ten of them were legitimate. The rest of them were more or less spam or junk. All that proselytizing and tireless efforts to build an Open Source community only to end with us hurting maintainers of projects around the world with spam. I was in denial about this for almost a whole year. Our college happened to be ahead of the curve in this aspect, for there was a whole media debacle that followed in next year's Hacktoberfest around spam Pull Requests made by college students just for a free t-shirts, and the opportunity to pad their résumé with "Open Source contributions" to impress recruiters.

◊sn{In the year that followed, I was wise enough to not conduct a local Hacktoberfest event.}

I want to re-emphasize one point here. The people who behave in these ways are not bad people. They don't have malicious intent. The problem is cultural and systemic, and to this day I have no solution, other than to keep doing what's right, and keep being honest and passionate. Authenticity and philosophical consistency can be infectious.

The discourse on the Slack workspace died out, and people weren't stepping up for meetups. The work put into that whole event burnt me out. We were dormant for months. A pandemic hit and college was shut down.

◊thematic-break[]

Several months later, we slowly felt the pull to make our community work again. A bunch of our members started pitching ideas for Open Source projects. Past efforts for this never really took off, because my collaborators (the only ones taking initiative) were too busy to be hacking on projects. Now that there was nothing going on, they started making fun little Open Source projects, designed to be contributor friendly. We could individually mentor people wanting to break in, and give them a space where it was okay to get things wrong. We made special help channels for these projects, so that the maintainers can help them learn the codebase and guide people.

◊url["https://github.com/pesos/browser-history"]{These} ◊url["https://github.com/pesos/grofer"]{little} ◊url["https://github.com/psiayn/heiko"]{projects} did well. Slowly, but surely, the new batch of juniors started making contributions. What really surprised us was that many of these projects started getting a bunch of external contributors from around the world as well. I have not contributed to these projects personally, but the members of our community that actively participated in these projects found something to be excited about again.

We started pushing these projects further and they are going fairly well. They are not "serious" software to drive a product or a business (despite having users, and one being showcased in a conference), but they are really fun to work on and learn new things.

We collectively started working on improving the discourse in the chatrooms as well. We hoped that people would share what they learnt, but that never really happened. So we started leading by example more than ever before---we regularly shared things we learnt in a particular week, and talked about developments in Open Source around the world. Among our little racket, we gave thoughtful replies to each other, and just had the conversations we usually do, but this time in public.

Over time, more people started participating, and asking questions. We started learning things from others as well. Eventually, the discussions started forming and sustaining themselves, without us having to take initiative. The virtual meetups were met with a small, but far more interested group of people. We managed to assemble a new core team, smaller and more focused. They will be the administrative backbone after we graduate from college.

Even with all these developments, I was not satisfied. We had found a dedicated set of participants, but the rest of the members in the Slack workspace were either lurkers or dead accounts. We realised we do not want to be big, or to throw big events. What we really should be doing is to build a community that works, by being small and authentic. We want people to network and develop a sense of belonging. We need people to know all the other people. That's what a friendly-neighbourhood community is, no?

Around this time, we also started feeling that we were hitting the bottom of the barrel with all the like-minded people we could find in our college. Through my Open Source internship I started talking to and finding people with a tinkerer's mindset who share the same values that we did. There were always such students found in obscure pockets and little bubbles.

◊sn{I use the word "innovation" with a broader meaning here. It covers technical, social, and cultural changes, that transform the current way of approaching things.}

Connecting a diverse set of people with shared ideals is a superadditive function. One plus one is more than two. Creating innovation is non-linear with the number of effective connections we make.

This coincided with me being influenced by Nassim Taleb's "Antifragile", without which I won't even have the vocabulary to say what I was ◊em{really} trying to build with our Open Source community. We used to run our projects in a centralized way---meet our specifications so that we can standardize, and make it easier to new contributors. This is nice, but it constrains the ability for chance events that may benefit us, yet do not fit in our framework.

I pitched an idea that was unorthodox for a college club to my collaborators. Why limit or affiliate with only our own college. Let's instead individually seek out the creative and passionate people and create an invite-only community. A smaller community with a larger impact. Every member has the power to invite another person into our community. Invite only those we trust, so there's always a chain of trust that can be followed to everyone. This lets us keep the upside like the spark that led to our fruitful projects, and the thoughtful discourse, all started by the "good" members, while keeping none of the downside, ie, dormant members in it for the wrong reasons.

Most importantly, we do ◊em{not} control or dictate the activities, or the direction of any of the members. Our job is to connect, not conduct. We create a large metaorganisation that houses many Units, ie, groups of collaborators for just about any activity. Units are fully autonomous. This also lets us accomodate existing groups of people who were doing things similar to what we are. A highly federated and decentralized structure that supports highly motivated people to connect and make potentially awesome things happen. This formed the basis for ◊url["https://unifoss.github.io/"]{UniFOSS}.

We have since made this transition, and managed to get like-minded people outside our college to participate. It's still the early days, and even though I am only an year away from graduation, it feels like we are just getting started.

A large part of my teenage years was filled with disillusionment on learning about the true face of our society and education, but I have made peace with that. I strongly believe that the antidote to this dystopian society and culture is resistance. Resistance, not by revolt or being righteous, rather, resistance by refusing to be satisfied with what is handed to us. Resistance by taking initiative and seeking what we truly deserve. Who's to stop us from being curious again?

◊sec{Appendix: The current struggle with diversity}

We still face one challenge that confounds us to this day. We have done poorly with diversity. Most of our members, even after the transition are men, and people with plenty of privilege. Women and members of other marginalized groups in tech haven't been participating in the same ratio as their presence in our college. We are hoping that our invite-only system lets us take affirmative action and choose invite people from more diverse and marginalized backgrounds.

If you are belong to a historically marginalized community in tech, or identify as a woman, and want to be a part of UniFOSS, please reach out to me at raykar dot ath (at) gmail dot com.
