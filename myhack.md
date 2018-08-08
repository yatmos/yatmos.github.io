# List of adjustment for this webpage

### In order to have multiple taxonomies  
For examples, I wanted to create a separate taxonomy for "People" and "Education".  
Then, I need to define those taxonomies in 'config.toml'.

First, I have to list all the taxonomies being used in the webpage.
```
[taxonomies]
    category = "categories"
    team = "teams"
    education = "educations"
```
Then, add new taxonomies to the switch.
```
[params.widgets]
    categories = true
    tags = false
    search = true
    teams = true
    educations = true
```

Then we use these new taxonomies in the front matter of the contents. For example, in ```content/people/faculty.md```,

```
+++
title = "Faculty"
date = "2015-08-03T13:39:46+02:00"
teams = ["faculty"]
+++
```

Now, we need to add html templates for new taxonomies.
In the 'universal' theme, the block for the taxonomy is treated as the widget that is located in ```layouts/partials/widgets/```.
So I duplicated ```categories.html``` in that directory and named it as ```teams.html``` and ```educations.html```.
Then we need to edit those files by replacing ```categories``` with ```teams``` or ```educations```.  
For example, the ```teams.html``` looks like
```
{{ if .Site.Params.widgets.teams }}
{{ if isset .Site.Taxonomies "teams" }}
{{ if not (eq (len .Site.Taxonomies.teams) 0) }}
<div class="panel panel-default sidebar-menu">

    <div class="panel-heading">
      <h3 class="panel-title">People</h3>
    </div>

    <div class="panel-body">
        <ul class="nav nav-pills nav-stacked">
            {{ range $name, $items := .Site.Taxonomies.teams }}
            <li><a href="{{ $.Site.BaseURL }}teams/{{ $name | urlize | lower }}">{{ $name }} ({{ len $items }})</a>
            </li>
            {{ end }}
        </ul>
    </div>
</div>
{{ end }}
{{ end }}
{{ end }}
```
I hardcoded the title of the taxonomy as "People".  

Now, we need to edit the layout html files.
The ```sidebar.html``` under ```layouts/partials``` looks like,

```
{{ if or (isset .Params "categories") (eq .Type "categories") }}
{{ partial "widgets/categories.html" . }}
{{ end }}

{{ if or (isset .Params "teams") (eq .Type "teams") }}
{{ partial "widgets/teams.html" . }}
{{ end }}

{{ if or (isset .Params "educations") (eq .Type "educations") }}
{{ partial "widgets/educations.html" . }}
{{ end }}

{{ partial "widgets/tags.html" . }}

{{ partial "widgets/search.html" . }}
```
So, there will be a list of category taxonomy values when there is "categories" in the front matter, or the type of the content is "categories". The second one is necessary for the webpage for chosen taxonomy value to have the sidebar.

#### list.html
When the taxonomy is selected, we want to have a list page dedicated for that taxonomy. 
So we have to change the line associated with "paginator" to allow any type of the contents to be listed.  
So, I  removed ```(where .Data.Pages "Type" "blog")``` and it now looks as
```
{{ $paginator := (.Paginate .Data.Pages) }}
```

Furthermore, I want to have a different type of list for "People".
So I added "if" statement to use different list format when the content type is "People".

```
                        {{ if or (isset .Params "teams") (eq .Type "teams") }}
                        <section class="post">
                        <div class="row">
                        <div class="row text-center">
                        {{ $paginator := (.Paginate .Data.Pages) }}
                        {{ range $paginator.Pages }}
                            <div class="col-md-3 col-sm-3">
                                <div class="team-member">
                                    <div class="image"><a href="{{ .Permalink }}"><img src="img/person-2.jpg" alt="" class="img-fluid rounded-circle"></a></div>
                                    <h3><a href="team-member.html">Luke Skywalker</a></h3>
                                    <p class="role">CTO</p>
                                </div>
                            </div>
                        {{ end }}
                        </div>
                        </div>
                        </section>
```
right below the ```<div class="col-md-9" id="blog-listing-medium">```.

We want to have an appropriate sidebar depending on the section.
For example, we want to have "People" sidebar under "People" pages.
To do this, we need to create "_index.md" and add the front matter like this.

```
+++
title = "People"
teams = []
+++
```

I think this is it.
