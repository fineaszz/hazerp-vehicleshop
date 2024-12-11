const Root = document.querySelector(":root");
var mainColor = '#EFDB2E';
var playerMoney = 0;
var category = "#rowery";
let isOpen = false;
var cars = {}

window.onload = function(e) {
    window.addEventListener('message', function(event) {
        switch(event.data.action) {
            case 'openui':
                OpenUi(event.data.vehicle);
                break;
            case 'closeui':
                CloseUi();
                break;
            case 'updateColor':
                mainColor = event.data.data.mainColor
                Root.style.setProperty("--mainColor", event.data.data.mainColor);
                Root.style.setProperty("--backgroundColor", event.data.data.secondaryColor + 'e7');
                Root.style.setProperty("--secondaryColor", event.data.data.secondaryColor + 'f5');
                Root.style.setProperty("--textColor", event.data.data.textColor);
    
                Root.style.setProperty("--borderColor", event.data.data.secondaryColor + '80');
                break;
            default:
                break;
        }
    })
}

function OpenUi(data) {
    isOpen = true
    cars = data;
    for (var carType in cars) {

        $(`#${carType} .row`).html('');

        for (var carId in cars[carType]) {
            var car = cars[carType][carId];

            if (car.price > playerMoney) {
                playerMoney = car.price
            } 

            addCars(carType, car.img, car.label, car.price, carId, car.stats.speed, car.stats.acceleration, car.stats.adhesion, car.stats.brakes)
        }
    }

    $("#price-range-span").text(`$0 - $${playerMoney}`);
    $('body').fadeIn();

    new RangeSlider(".price-range", {
        values: [0, playerMoney],
        step: 1,
        min: 0,
        max: playerMoney,
        pointRadius: 12,
        railHeight: 8,
        trackHeight: 8,
        colors: {
            points: mainColor,
            rail: "#121211",
            tracks: mainColor
        }
    }).onChange(val => {
        $("#price-range-span").text(`$${val[0]}$ -  $${val[1]}`);
        $(`${category} .row`).empty();
    
        for (var carType in cars) {
            if (`#${carType}` == category) {
                for (var carId in cars[carType]) {
                    var car = cars[carType][carId];
                    addCars(carType, car.img, car.label, car.price, carId, car.stats.speed, car.stats.acceleration, car.stats.adhesion, car.stats.brakes)
                }
            }
        }
    });
}

function CloseUi() {
    isOpen = false
    $('body').fadeOut();
}

function changeProgress(progressBarId, progressValue, animDurPerStep = 15) {
    var progressBar = document.getElementById(progressBarId);
    var oldProgressValue = -parseInt(
      window.getComputedStyle(progressBar).getPropertyValue("background-position")
    );
    if (progressValue > 100) progressValue = 100;
    else if (progressValue < 0) progressValue = 0;
    else progressValue = Math.round(progressValue / 10) * 10;
  
    var steps = Math.abs(oldProgressValue - progressValue) / 10;
    var totalAnimDur = animDurPerStep * steps;
  
    progressBar.style.transition = totalAnimDur + "ms steps(" + steps + ")";
    progressBar.style.backgroundPosition = -progressValue + "%";
}
  

function search(arr, label) {

    for (const category in arr) {
        for (const vehicle in arr[category]) {
            const currentLabel = arr[category][vehicle].label.toLowerCase();
            const searchLabel = label.toLowerCase();

            if (currentLabel.includes(searchLabel)) {

                var car = arr[category][vehicle];
                addSearchCars(category, car.img, car.label, car.price, vehicle, car.stats.speed, car.stats.acceleration, car.stats.adhesion, car.stats.brakes)
            

            }
        }
    }
}

function searchVehicle(params) {
    if (!params) {
        $(`.tab-content`).css("display", "block");
        $(`.tab-header`).css("display", "grid");
        $(`.preview`).css("display", "none");
        $(`.search`).css("display", "none");
    }
    else
    {
        $(`.tab-content`).css("display", "none");
        $(`.tab-header`).css("display", "grid");
        $(`.preview`).css("display", "none");
        $(`.search`).css("display", "block");
   
        $(`.search .row`).empty();
        search(cars, params);
    }
}


$('.item a').on('click', function(e) {

    e.preventDefault();

    $(this).parent().addClass('active');
    $(this).parent().siblings().removeClass('active');

    target = $(this).attr('href');

    category = target;

    $('.tab-content > div').not(target).hide();
    
    $(`.tab-header`).css("display", "grid");
    $(`.preview`).css("display", "none")
    if($(`input[name='search-input']`).val() != "") {
        $(`.search`).css("display", "block");
    }
    else {
        $(`.tab-content`).css("display", "block");
    }

    $(target).fadeIn(600);
});

$("#preview-powrot").on("click", function(e) {
    $(`.tab-header`).css("display", "grid");
    $(`.preview`).css("display", "none")
    if($(`input[name='search-input']`).val() != "") {
        $(`.search`).css("display", "block");
    }
    else {
        $(`.tab-content`).css("display", "block");
    }
});

function addCars(category, img, name, price, spawnName, speed, acceleration, adhesion, brakes) {
    $(`#${category} .row`).append(`
  <div class="col-6 p-3">
      <div class="card text-center">
          <div class="card-body">
              <img src="${img}" class="card-img-top" alt="car image">
              <h5 class="card-title">${name}</h5>
              <p class="card-text">$${price}</p>
              <a href="#${spawnName}" onclick="showPreview(event)" category="${category}" spawn="${spawnName}" name="${name}" img="${img}" price="${price}" speed="${speed}" acceleration="${acceleration}" adhesion="${adhesion}" brakes="${brakes}" class="btn-yellow">Więcej info</a>
          </div>
      </div>
  </div>
  `);
}

function addSearchCars(category, img, name, price, spawnName, speed, acceleration, adhesion, brakes) {
    $(`.search .row`).append(`
  <div class="col-6 p-3">
      <div class="card text-center">
          <div class="card-body">
              <img src="${img}" class="card-img-top" alt="car image">
              <h5 class="card-title">${name}</h5>
              <p class="card-text">$${price}</p>
              <a href="#${spawnName}" onclick="showPreview(event)" category="${category}" spawn="${spawnName}" name="${name}" img="${img}" price="${price}" speed="${speed}" acceleration="${acceleration}" adhesion="${adhesion}" brakes="${brakes}" class="btn-yellow">Więcej info</a>
          </div>
      </div>
  </div>
  `);
}

function showPreview(event) {
    var name = event.target.getAttribute("name");
    var category = event.target.getAttribute("category");
    var spawn = event.target.getAttribute("spawn");
    var price = event.target.getAttribute("price");
    var image = event.target.getAttribute("img");
    var speed = event.target.getAttribute("speed");
    var acceleration = event.target.getAttribute("acceleration");
    var adhesion = event.target.getAttribute("adhesion");
    var brakes = event.target.getAttribute("brakes");

    $(`.tab-content`).css("display", "none");
    $(`.tab-header`).css("display", "none");
    $(`.preview`).css("display", "block");
    $(`.search`).css("display", "none");

    $(`#preview-car-name`).text(name);
    $(`#preview-car-price`).text(`$${price}`);
    $(`#preview-img`).attr("src", image);
    $(`#zakup`).attr("spawn_id", spawn);
    $(`#zakup`).attr("class_id", spawn);
    changeProgress('speed', speed);
    changeProgress('acceleration', acceleration);
    changeProgress('adhesion', adhesion);
    changeProgress('brakes', brakes);

    $.post(`https://${GetParentResourceName()}/showCar`, JSON.stringify({
        'spawnName': spawn,
        'category': category,
    }))
}

function buyCar() {
    let spawnName = $(`#zakup`).attr("spawn_id");

    $.post(`https://${GetParentResourceName()}/buyCar`, JSON.stringify({
        'spawnName': spawnName,
        'category': category,
    }))
}

function ChangeRot(data) {
    $.post(`https://${GetParentResourceName()}/changeCam`, JSON.stringify({
        'val': data.value,
    }))
}

window.addEventListener("keydown", function(e) {
    if (e.key == "Escape" && isOpen == true) {
        $.post(`https://${GetParentResourceName()}/closeUi`)
    }
});