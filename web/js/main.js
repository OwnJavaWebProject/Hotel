(function ($) {
    "use strict";
    $(document).ready(function () {


        //star rating hover
        $('.banner-parallax_raiting a').hover(function () {
            $(this).find('.star').addClass('__js_selected');
            $(this).prevAll('a').find('.star').addClass('__js_selected');
        }, function () {
            $(this).find('.star').removeClass('__js_selected');
            $(this).prevAll('a').find('.star').removeClass('__js_selected');
        });

        //menu dropdown
        $(".dropdown").hover(
            function () {
                if (viewport().width > 767) {
                    $('.dropdown-menu', this).stop(true, true).fadeIn("fast");
                    $(this).addClass('open');
                    $('b', this).addClass("caret caret-up");
                }
            },
            function () {
                if (viewport().width > 767) {
                    $('.dropdown-menu', this).stop(true, true).fadeOut("fast");
                    $(this).removeClass('open');
                    $('b', this).removeClass("caret caret-up");
                }
            }
        );

        $('.dropdown').on('click', '', function (event) {
            if (viewport().width > 767) {
                $(this).removeClass('open');
            }
        });

        $(window).resize(function () {
            if (typeof window.checkMenuDropdownsOnResize != 'undefined')
                clearTimeout(window.checkMenuDropdownsOnResize);
            window.checkMenuDropdownsOnResize = setTimeout(
                function () {
                    $('.dropdown.open').removeClass('open');
                },
                1000);
        });

        $('.owl_gallery').owlCarousel({
            items: 1,
            loop: true,
            margin: 0,
            nav: false,
            dots: false,
            autoplay: true,
            autoplayTimeout: 6500,
            smartSpeed: 1200,
            autoHeight: true,
        });

        $('.owl-carousel').owlCarousel({
            loop: true,
            margin: 30,
            nav: false,
            autoplay: true,
            autoplayTimeout: 6500,
            smartSpeed: 1200,
            autoHeight: true,
            responsive: {
                0: {
                    items: 1
                },
                600: {
                    items: 2
                },
                1000: {
                    items: 2
                }
            }
        });


        $('.bg-parallax').parallax("100%", .15);
        $('.bg-parallax2').parallax("50%", .3);

        function viewport() {
            var e = window, a = 'inner';
            if (!('innerWidth' in window)) {
                a = 'client';
                e = document.documentElement || document.body;
            }
            return {width: e[a + 'Width'], height: e[a + 'Height']};
        }

        //price slider
        if ($.ui) {
            $("#slider-range").slider({
                range: true,
                min: 0,
                max: 500,
                values: [75, 300],
                slide: function (event, ui) {
                    $("#amount1").text("$" + ui.values[0]);
                    $("#amount2").text("$" + ui.values[1]);
                }
            });
            $("#amount1").text("$" + $("#slider-range").slider("values", 0));
            $("#amount2").text("$" + $("#slider-range").slider("values", 1));
        }

        if (typeof $.fn.datetimepicker === 'function') {
            //bootstrap datetimepicker
            $('#datetimepicker1').datetimepicker({
                format: 'DD-MM-YYYY'
            });

            $('#datetimepicker2').datetimepicker({
                format: 'DD-MM-YYYY'
            });
        }


        //faq
        $('.faq_ul li a').on('click', '', function (event) {
            event.preventDefault();
            var selector = $(this).attr('href');
            $('.faq-group').hide(300, function () {
                $('.faq_ul li.active').removeClass('active');
                $(selector).show();
                $('.faq_ul li a[href=' + selector + ']').parent().addClass('active');
            });
        });


        var shuffleme = (function ($) {
            var $grid = $('#grid'), //locate what we want to sort
                $filterOptions = $('.portfolio-sorting li'),  //locate the filter categories
                $sizer = $grid.find('.shuffle_sizer'),    //sizer stores the size of the items

                init = function () {

                    // None of these need to be executed synchronously
                    setTimeout(function () {
                        listen();
                        setupFilters();
                    }, 100);

                    // instantiate the plugin
                    $grid.shuffle({
                        itemSelector: '[class*="col-"]',
                        sizer: $sizer
                    });
                },

                // Set up button clicks
                setupFilters = function () {
                    var $btns = $filterOptions.children();
                    $btns.on('click', function (e) {
                        e.preventDefault();
                        var $this = $(this),
                            isActive = $this.hasClass('active'),
                            group = isActive ? 'all' : $this.data('group');

                        // Hide current label, show current label in title
                        if (!isActive) {
                            $('.portfolio-sorting li a').removeClass('active');
                        }

                        $this.toggleClass('active');

                        // Filter elements
                        $grid.shuffle('shuffle', group);
                    });

                    $btns = null;
                },

                // Re layout shuffle when images load. This is only needed
                // below 768 pixels because the .picture-item height is auto and therefore
                // the height of the picture-item is dependent on the images
                // I recommend using imagesloaded to determine when an images is loaded
                // but that doesn't support IE7
                listen = function () {
                    var debouncedLayout = $.throttle(300, function () {
                        $grid.shuffle('update');
                    });

                    // Get all images inside shuffle
                    $grid.find('img').each(function () {
                        var proxyImage;

                        // Image already loaded
                        if (this.complete && this.naturalWidth !== undefined) {
                            return;
                        }

                        // If none of the checks above matched, simulate loading on detached element.
                        proxyImage = new Image();
                        $(proxyImage).on('load', function () {
                            $(this).off('load');
                            debouncedLayout();
                        });

                        proxyImage.src = this.src;
                    });

                    // Because this method doesn't seem to be perfect.
                    setTimeout(function () {
                        debouncedLayout();
                    }, 500);
                };

            return {
                init: init
            };
        }(jQuery));


        shuffleme.init(); //filter portfolio

        $('#pass').keyup(function () {
            var strongRegex = new RegExp("^(?=.{8,})(?=.*[A-Z])(?=.*[a-z])(?=.*[0-9])(?=.*\\W).*$", "g");
            var mediumRegex = new RegExp("^(?=.{7,})(((?=.*[A-Z])(?=.*[a-z]))|((?=.*[A-Z])(?=.*[0-9]))|((?=.*[a-z])(?=.*[0-9]))).*$", "g");
            var enoughRegex = new RegExp("(?=.{6,}).*", "g");

            if (false == enoughRegex.test($(this).val())) {
                $('#level').removeClass('pw-weak');
                $('#level').removeClass('pw-medium');
                $('#level').removeClass('pw-strong');
                $('#level').addClass(' pw-defule');
                //密码小于六位的时候，密码强度图片都为灰色
            }
            else if (strongRegex.test($(this).val())) {
                $('#level').removeClass('pw-weak');
                $('#level').removeClass('pw-medium');
                $('#level').removeClass('pw-strong');
                $('#level').addClass(' pw-strong');
                //密码为八位及以上并且字母数字特殊字符三项都包括,强度最强
            }
            else if (mediumRegex.test($(this).val())) {
                $('#level').removeClass('pw-weak');
                $('#level').removeClass('pw-medium');
                $('#level').removeClass('pw-strong');
                $('#level').addClass(' pw-medium');
                //密码为七位及以上并且字母、数字、特殊字符三项中有两项，强度是中等
            }
            else {
                $('#level').removeClass('pw-weak');
                $('#level').removeClass('pw-medium');
                $('#level').removeClass('pw-strong');
                $('#level').addClass('pw-weak');
                //如果密码为6为及以下，就算字母、数字、特殊字符三项都包括，强度也是弱的
            }
            return true;
        });
    });
})(jQuery);

function validateRegEx(regex, input, helpText, helpMessage) {
    if (!regex.test(input)) {
        if (helpText != null)
            helpText.innerHTML = helpMessage;
        return false;
    } else {
        if (helpText != null)
            helpText.innerHTML = "";
        return true;
    }
}

function validateNonEmpty(inputField, helpText) {
    // See if the input value contains any text
    return validateRegEx(/.+/,
        inputField.value, helpText,
        "Please enter a value.");
}

function validateID(inputField, helpText) {
    if (!validateNonEmpty(inputField, helpText))
        return false;
    return validateRegEx(/^\d{5}$/, inputField.value, helpText, "请输入正确的身份证号");
}

function validatePass(inputFiedl, helpText) {
    if (!validateNonEmpty(inputFiedl, helpText))
        return false;
    var pass = document.getElementById("pass").value;
    var repassword = document.getElementById("confipass").value;
    if (pass != repassword) {
        helpText.innerHTML=
        return false;
    }
    return true;
}


function placeOrder(form) {
    if (validateID(form["new_id"], form["id_help"])) {
        form.submit();
    }
    else {
        alert("请输入正确的信息")
    }
}
