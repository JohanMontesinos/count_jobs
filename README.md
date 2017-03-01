### Scraping the number of job offers by country

It's a simple Bash script that allows you to query how many jobs are available by country using data from `indeed.com`.

To use, just type `./count_jobs.sh` followed by the keyword you want to query. Let's suppose that you want to know the 10 countries with most positions containing the phrase project manager, then:

```bash
$ ./count_jobs.sh project+manager | head
        355873 United_States
         92372 United_Kingdom
         28406 Canada
         26116 India
         18575 Netherlands
         15496 Australia
         12937 Belgium
         11765 Singapore
          9618 China
          8459 Hong_Kong
```
