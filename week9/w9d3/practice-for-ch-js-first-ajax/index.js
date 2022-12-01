console.log("Hello from the console!");

// Your code here
//const london = $.ajax ({
  //  url: 'https://api.openweathermap.org/data/2.5/weather?q=London,UK&appid=bcb83c4b54aee8418983c2aff3073b3b',
    //type: 'GET',
    //dataType: 'json',
    //success: function(res) { 
    //   console.log(res);
    //    alert(res);

//    }
//});

const newFetch = { content: "What a pleasant day!" };
fetch('https://api.openweathermap.org/data/2.5/weather?q=London,UK&appid=bcb83c4b54aee8418983c2aff3073b3b', {
    method: "GET",
    //body: JSON.stringify(newFetch),
    headers: {
        "Content-Type": "application/json"
    }
});

