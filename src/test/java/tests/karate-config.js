function fn(){

    var config = {
        name : "Deniz"
    };
    karate.configure('connectTimeout',50);
    karate.configure('readTimeout',50);
    return config;
}