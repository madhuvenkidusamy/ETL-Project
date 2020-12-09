drop table if exists happiness;
drop table if exists facebook;
drop table if exists smartphone;
drop table if exists final1;

CREATE TABLE happiness (
	Overall_rank_happiness integer NOT NULL,
	Country varchar NOT NULL,
	Score_happiness decimal NOT NULL,
	Primary key(Country)
);

CREATE TABLE facebook (
	Country varchar NOT NULL,
	Facebook_users decimal NOT NULL,
	Primary key(Country)
);

CREATE TABLE smartphone (
	Country varchar NOT NULL,
	Smartphone_usage decimal NOT NULL,
	Primary key(Country)
);

SELECT * from happiness;
SELECT * from facebook;
SELECT * from smartphone;

Select happiness.overall_rank_happiness, happiness.country, happiness.score_happiness, facebook.facebook_users, smartphone.smartphone_usage
from happiness
inner join facebook
on happiness.country = facebook.country
inner join smartphone
on facebook.country = smartphone.country
order by overall_rank_happiness asc;