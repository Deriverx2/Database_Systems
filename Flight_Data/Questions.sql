--QUE01--()Display how many passengers are flying with AirIndia
select count(PassNo) as AirIndiaPassengers from Pass_tb where Pass_tb.FNo in (select Flight_tb.FNo from Flight_tb where Fl_Name='AirIndia');

--QUE02--()Which flight has got 2nd largest fare
 select FNo,Fl_Name from Flight_tb where
    -> fare=(select max(fare) from flight_tb where
    -> fare!=(select max(fare) from flight_tb));

--QUE03--()Which all flights has got fare less than AirIndia
 select FNo,Fl_Name from Flight_tb where
    -> (select Fare < (select max(Fare) from Flight_tb where Fl_Name='AirIndia'));

--QUE04--()In which flight there are no passengers
select Fl_Name from Flight_tb where
    -> (select FNo not in (select FNo from Pass_tb));

--QUE05--()How many flights from Cochin
select count(Fl_Name) from Flight_tb where Fl_from='Cochin';

