const url = "https://jkbath-bucket.s3.us-east-2.amazonaws.com/hotel_combined.json";

d3.json(url).then(function(data){
    console.log(data);
});