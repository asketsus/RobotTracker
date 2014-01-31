#RobotTracker

RobotTracker is an open-source project which gives us the info of the file robots.txt of any website.

######Version:
20140131
######Author:
Antonio J. González
######Email and bug report address:
antonioj85 at gmail.com

##What is ‘robots.txt’?
The Robot Exclusion Standard, also known as the Robots Exclusion Protocol or robots.txt protocol, is a convention to advising cooperating web crawlers and other web robots about accessing all or part of a website which is otherwise publicly viewable. Robots are often used by search engines to categorize and archive web sites, or by webmasters to proofread source code. The standard is different from, but can be used in conjunction with, Sitemaps, a robot inclusion standard for websites.

##Usage
`perl robottracker.pl www.casareal.es`

This commands show the info which www.casareal.es do not like to make it available to crawlers. It is an info that you can't get in a search engine. For our example, we can give this output:

```sh
URLs disallowed from: http://www.casareal.es/
http://www.casareal.es/_*/	400 Bad Request
http://www.casareal.es/ES/FamiliaReal/Urdangarin/	404 NOT FOUND
http://www.casareal.es/CA/FamiliaReal/Urdangarin/	404 NOT FOUND
http://www.casareal.es/EU/FamiliaReal/Urdangarin/	404 NOT FOUND
http://www.casareal.es/GL/FamiliaReal/Urdangarin/	404 NOT FOUND
http://www.casareal.es/VA/FamiliaReal/Urdangarin/	404 NOT FOUND
http://www.casareal.es/EN/FamiliaReal/Urdangarin/	404 NOT FOUND
```

###License
>Copyright (C) 2014  Antonio Jesús González León
>
>This program is free software: you can redistribute it and/or modify it under the terms of the GNU General Public License as published by the Free Software Foundation, either version 3 of the License, or (at your option) any later version.
>
>This program is distributed in the hope that it will be useful, but WITHOUT ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License for more details.
>
>You should have received a copy of the GNU General Public License along with this program. If not, see [http://www.gnu.org/licenses/](http://www.gnu.org/licenses/).
