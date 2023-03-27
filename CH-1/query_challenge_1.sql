'''Jumlah total kasus Covid-19 aktif yang baru di setiap provinsi lalu
diurutkan berdasarkan jumlah kasus yang paling besar:'''
#Query:
select Province, sum(New_Active_Cases) as Total from `my-first-project-380507.covid19.data`
where Province != 'null'
group by Province
order by sum(New_Active_Cases) desc

'"Mengambil 2 (dua) location iso code yang memiliki jumlah total
kematian karena Covid-19 paling sedikit''
#Query:
select Location_ISO_Code, sum(Total_Deaths) as Total_death
from `my-first-project-380507.covid19.data`
group by Location_ISO_Code
order by sum(Total_Deaths) asc
limit 2;

#Data tentang tanggal-tanggal ketika rate kasus recovered di Indonesia paling tinggi beserta jumlah ratenya
#Query:
select Date, Case_Recovered_Rate, Total_Recovered
from `my-first-project-380507.covid19.data`
order by Total_Recovered desc

#Total case fatality rate dan case recovered rate dari masing-masing location iso code yang diurutkan dari data yang paling rendah
#Query:
select Location_ISO_Code, sum(Case_Fatality_Rate) as Total_CaseFatalityRate, 
sum(Case_Recovered_Rate) as Total_CaseRecoveredRate
from `my-first-project-380507.covid19.data`
group by Location_ISO_Code
order by sum(Case_Fatality_Rate)

#Data tentang tanggal-tanggal saat total kasus Covid-19 mulai menyentuh angka 30.000-an
#Query:
select Date, Total_Cases
from `my-first-project-380507.covid19.data`
where Total_Cases >= 30000

#Jumlah data yang tercatat ketika kasus Covid-19 lebih dari atau sama dengan 30.000
#Query:
select sum(Total_Cases) as All_Total_Case
from `my-first-project-380507.covid19.data`
where Total_Cases >= 30000
