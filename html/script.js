let folder_name = GetParentResourceName()

$(document).ready(function(){
    window.addEventListener('message', function(event) {
        var item = event.data;
            if (item.nui == true) {
            $(".main-bar").css({"display": "block"});
            } else if (item.nui == false) {
            $(".main-bar").css({"display": "none"});
        }
    });
})

$(document).ready(function(){
    $('#resume').click(function(){
        $.post("http://" + folder_name + "/Resume", JSON.stringify({}));
    });
    $('#map').click(function(){
        $.post("http://" + folder_name + "/Map", JSON.stringify({}));
    });
    $('#control').click(function(){
        $.post("http://" + folder_name + "/Settings", JSON.stringify({}));
    });
    $('#leave').click(function(){
        $.post("http://" + folder_name + "/Leave", JSON.stringify({}));
    });
})

$(document).on("keydown", function() {
    switch (event.keyCode) {
        case 27:
            $.post("http://" + folder_name + "/Resume", JSON.stringify({}));
            break;
    }
});