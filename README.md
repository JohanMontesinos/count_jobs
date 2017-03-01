### Scraping the number of job offers by country

It's a simple Bash script that allows you to query how many jobs are available by country using data from `indeed.com`.

To use, just type `./count_jobs.sh` followed by the keyword you want to query. Let's suppose that you want to know the 10 countries with most positions containing the phrase project manager. Then:

```bash
$ ./count_jobs.sh project+management | head
        533590 United_States
        111393 United_Kingdom
         63110 South_Korea
         42164 India
         40046 Canada
         21408 Australia
         18521 Netherlands
         16965 Singapore
         15668 China
         13064 Hong_Kong
```
