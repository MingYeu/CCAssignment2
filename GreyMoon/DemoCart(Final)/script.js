﻿

$(function () {

    var options = [1, 2, 3, 4, 5];

    $.each(options, function (index, color) {
        $("<li>", {
            append: "\nOption " + options[index] + "<img " + "style=position:absolute;left:175px;opacity:0; " + "src=http://lorempixel.com/100/100/cats?" + Math.random() + "/>",
            data: { "value": options[index] },
            appendTo: "#catsSelect",
            css: {
                listStyle: "none",
                width: "150px",
                height: "24px",
                padding: "4px",
                margin: "1px",
                outline: "1px solid #000",
                fontFamily: "arial"
            },
            on: {
                "mouseenter": function () {
                    if (!$(this).is("li:first")) {
                        $(this).css("backgroundColor", "skyblue")
                            .find("img").stop().fadeTo(150, 1)
                    }
                },
                "mouseleave": function () {
                    $(this).css("backgroundColor", "transparent")
                        .find("img").stop().fadeTo(150, 0)
                }
            }
        })
    });

    $("#catsSelect li:not(:first)")
        .hide()
        .siblings(":first")
        .clone(true)
        .hide()
        .insertAfter("#catsSelect li:first")
        .parent()
        .click(function (e) {
            $("input[type=submit]:disabled").attr("disabled", false);
            if ($(e.target).is("li:first")) {
                $(e.target).closest("li").siblings().toggle()
            } else {
                $(e.target).closest("ul")
                    .find(":first")
                    .html(function (_, html) {
                        var selected = $(e.target).closest("li");
                        $("form").find("option")
                            .val(selected.data().value).select();
                        return selected.html()
                    })
                    .trigger("mouseleave")
                    .siblings().toggle()
            }
        })
        .closest("form")
        .submit(function () {
            console.log($(this).serialize())
        })
        .find("option").val($("li:first").data().value)
        .closest(":root").click(function (event) {
            if ($("li:gt(0)").is(":visible") && !$(event.target).is("li")) {
                $("li:gt(0)").toggle()
            }
        })

});