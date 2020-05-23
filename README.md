Timesheet generator
=====

I have had immense difficulty trying to generate a timesheet which corresponds to the requirements of funders. For example, I work with a team in Haiti on a development project who track their time in Google Sheets, but we then need to generate a PDF with singatures in a specific format mandated by Foreign Affairs Canada.

Trying to do this with Google Docs API or LibreOffice Mail Merge has been an exercise in frustration, hence this project.

Requirements
-----

* Google sheets, [see this example](https://docs.google.com/spreadsheets/d/1lfjIoTKzx6xQs1hDsLWBGUQcQhPVLC20h5jXkryTTEM/edit#gid=0): if you can make your spreadsheet look exactly like that, you're good to go.
* [Docker desktop](https://www.docker.com/products/docker-desktop).
* Very basic knowledge on how to use the command line to interact with your computer.

Technologies used
-----

You don't have to understand how it works if you don't want to, but in addition to Docker Desktop and Google Sheets, we are [using Jekyll for this](https://jekyllrb.com).

Quickstart
-----

* First, downdload the "timesheet" sheet of the [example Google sheets](https://docs.google.com/spreadsheets/d/1lfjIoTKzx6xQs1hDsLWBGUQcQhPVLC20h5jXkryTTEM/edit#gid=0) as CSV format.
* Completely replace `./_data/timesheets.csv` with the exported CSV (if you're just testing this, you won't need to do this step; only do it if you want to try it with your own data).
* Make sure Docker desktop is running and run `./scripts/deploy.sh`
* Visit http://0.0.0.0:8081, which should [look real nice, something like this](http://timesheet-generator.dcycle.com), and print it!
* Run `./scripts/destroy.sh`

Customizing
-----

With a little HTML and CSS knowledge, fixing this for your needs is not rocket science.
