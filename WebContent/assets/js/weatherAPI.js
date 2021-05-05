const APP_ID = '083b20c2d00eade007428884842324f3';
const DEFAULT_VALUE = '--';

var date = document.querySelector('.date');
var searchLocation = document.querySelector('.searchLocation').value;

const cityName = document.querySelector('.city-name');
const weatherState = document.querySelector('.weather-state');
const weatherIcon = document.querySelector('.weather-icon');
const temperature = document.querySelector('.temperature');
const sunrise = document.querySelector('.sunrise');
const sunset = document.querySelector('.sunset');
const humidity = document.querySelector('.humidity');
const windSpeed = document.querySelector('.wind-speed');



var inputdate = new Date(date.value);
var city = searchLocation; 
inputdate = inputdate.toDateString();
console.log("Location: " + searchLocation);
console.log("date: " + inputdate);
$.ajax({
url: "https://api.openweathermap.org/data/2.5/forecast", //API Call
dataType: "json",
type: "GET",
data: {
 q: searchLocation,
 appid: APP_ID,
 units: "Metric"
},
success: function (data) {
	 for (let i = 0; i < data.list.length; i = i + 8) {
		 var d = new Date(data.list[i].dt_txt);
         var returndate = d.toDateString();
         var weathState = data.list[i].weather[0].main + " - " + data.list[i].weather[0].description || DEFAULT_VALUE;
         console.log("returndate: " + returndate);
         console.log("weathState: " + weathState);
         if (inputdate == returndate) {
        	 cityName.innerHTML = data.city.name || DEFAULT_VALUE;
             weatherState.innerHTML = weathState;
             weatherIcon.setAttribute('src', `http://openweathermap.org/img/wn/${data.list[0].weather[0].icon}@2x.png`);
             temperature.innerHTML = Math.round(data.list[i].main.temp) || DEFAULT_VALUE;

             // sunrise.innerHTML = moment.unix(data.list[0].sys.sunrise).format('H:mm') || DEFAULT_VALUE;
             sunrise.innerHTML = Math.round(data.list[i].main.temp_max) || DEFAULT_VALUE;
             sunset.innerHTML = Math.round(data.list[i].main.temp_min) || DEFAULT_VALUE;
             humidity.innerHTML = data.list[i].main.humidity || DEFAULT_VALUE;
             windSpeed.innerHTML = (data.list[i].wind.speed * 3.6).toFixed(2) || DEFAULT_VALUE;
         }
	 }
	 console.log(data.list);
}
});