
<html>
    <head>
        <title>${bank.name}</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

        <meta name="viewport" content="width=device-width, initial-scale=1.0">

        <link href="${pageContext.request.contextPath}/resources/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <script src="${pageContext.request.contextPath}/resources/jQuery/jquery-3.0.0.min.js" type="text/javascript"></script>
        <script src="${pageContext.request.contextPath}/resources/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

    </head>
    <body>
        <div class="container">
            <div class="row">
                <div class=" col-md-offset-1" style="margin-left: 130px;" >
                    <div>
                        <nav class="navbar navbar-default" style="width: 1000px; margin-bottom: 0px; padding-bottom: 0px; background: #f7e1b5;">
                            <div class="container-fluid" >
                                <div class="navbar-header">
                                    <a class="navbar-brand" href="#" id="bank-name">${mybean.name}</a>
                                </div>
                                <ul class="nav navbar-nav">
                                    <li class="active"><a href="#home" id="nav-1">${mybean.home}</a></li>
                                    <li><a href="#about" id="nav-2">${mybean.aboutUs}</a></li>
                                    <li><a href="#product" id="nav-3">${mybean.productsAndServices}</a></li>
                                </ul>
                                <span id="bank-date" style="height: 35px; float: right; padding-top: 15px; margin-left: 10px;"> ${mybean.date}</span>
                                <div class="form-group" style="width: 180px; height: 35px;  float:  right; padding-top: 10px; ;" >
                                    <span style="float: left;padding-top: 7px;" id="langs">${mybean.language}</span>
                                    <select class="form-control" id="utype" style="width: 100px; float: right;">
                                        <option value="message">-Select-</option>
                                        <option value="message_en">English</option>
                                        <option value="message_vi">VietNam</option>
                                        <option value="message_kr">Korea</option>
                                    </select>
                                </div>
                            </div>
                        </nav>
                    </div>
                    <img id="bank-img" src="${mybean.url}" style="width: 100%"/>
                    <span id="txt1"content="" ></span>
                    <p id="bank-about-us"></p>

                    <ul class="nav nav-tabs" style="background: #f7e1b5;">
                        <li class="active"><a data-toggle="tab" href="#rate" id="bank-rate">${mybean.rate}</a></li>
                        <li><a data-toggle="tab" href="#profit" id="bank-profit">${mybean.profit}</a></li>
                    </ul>

                    <div class="tab-content">
                        <div id="rate" class="tab-pane fade in active">
                            <table class="table table-condensed table-bordered table-striped volumes" id="price-table">
                                <thead>
                                    <tr>
                                        <th id="table-head-bank-period">${mybean.period}</th>
                                        <th>USD</th>
                                        <th>VND</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td>KKH</td>
                                        <td>-</td>
                                        <td>0.2%</td>
                                    </tr>
                                    <tr>
                                        <td>1 <span class="month">${mybean.month}</span></td>
                                        <td>-</td>
                                        <td>4.3%</td>
                                    </tr>
                                    <tr>
                                        <td>2 <span class="month">${mybean.month}</span></td>
                                        <td>-</td>
                                        <td>4.3%</td>
                                    </tr>
                                    <tr>
                                        <td>6 <span class="month">${mybean.month}</span></td>
                                        <td>-</td>
                                        <td>4.8%</td>
                                    </tr>
                                    <tr>
                                        <td>3 <span class="month">${mybean.month}</span></td>
                                        <td>-</td>
                                        <td>5.4%</td>
                                    </tr>
                                    <tr>
                                        <td>12 <span class="month">${mybean.month}</span></td>
                                        <td>-</td>
                                        <td>6.9%</td>
                                    </tr>
                                    <tr>
                                        <td>13 <span class="month">${mybean.month}</span></td>
                                        <td>-</td>
                                        <td>6.8%</td>
                                    </tr>
                                    <tr>
                                        <td>18 <span class="month">${mybean.month}</span></td>
                                        <td>-</td>
                                        <td>7%</td>
                                    </tr>
                                    <tr>
                                        <td>24 <span class="month">${mybean.month}</span></td>
                                        <td>-</td>
                                        <td>7%</td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>

                        <div id="profit" class="tab-pane fade">
                            <table class="table table-condensed table-bordered table-striped volumes">
                                <thead>
                                    <tr>
                                        <th id="table-head-bank-currency">${mybean.currency}</th>
                                        <th id="table-head-bank-buy">${mybean.buy}</th>
                                        <th id="table-head-bank-sale">${mybean.sale}</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td>USD</td>
                                        <td>22.650,00</td>
                                        <td>22.720,00</td>
                                    </tr>
                                    <tr>
                                        <td>EUR</td>
                                        <td>22.650,00</td>
                                        <td>22.720,00</td>
                                    </tr>
                                    <tr>
                                        <td>GBP</td>
                                        <td>22.650,00</td>
                                        <td>22.720,00</td>
                                    </tr>
                                    <tr>
                                        <td>HKD</td>
                                        <td>22.650,00</td>
                                        <td>22.720,00</td>
                                    </tr>
                                    <tr>
                                        <td>CHF</td>
                                        <td>22.650,00</td>
                                        <td>22.720,00</td>
                                    </tr>
                                    <tr>
                                        <td>JPY</td>
                                        <td>22.650,00</td>
                                        <td>22.720,00</td>
                                    </tr>
                                    <tr>
                                        <td>AUD</td>
                                        <td>22.650,00</td>
                                        <td>22.720,00</td>
                                    </tr>
                                    <tr>
                                        <td>CAD</td>
                                        <td>22.650,00</td>
                                        <td>22.720,00</td>
                                    </tr>
                                    <tr>
                                        <td>SGD</td>
                                        <td>22.650,00</td>
                                        <td>22.720,00</td>
                                    </tr>
                                    <tr>
                                        <td>SEK</td>
                                        <td>22.650,00</td>
                                        <td>22.720,00</td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>

                    </div>
                </div>
            </div>
        </div>

    </body>
</html>
<script>
    $(document).ready(function () {
        $('#utype').val('${mybean.mode}').change();
        var text;
        $('#utype').change(function () {
            //var lang = $('#utype option:selected').first().val();
            var e = document.getElementById("utype");
            var lang = e.options[e.selectedIndex].value;
            var rs = $.ajax({
                url: '${pageContext.request.contextPath}/index?lang=' + lang,
                method: 'GET',
                success: function (data) {
                    var mybean = $.parseJSON(rs.responseText);
                    $('#bank-name').text(mybean.name);
                    $('#nav-1').text(mybean.home);
                    $('#nav-2').text(mybean.aboutUs);
                    $('#nav-3').text(mybean.productsAndServices);
                    $('#langs').text(mybean.language);
                    $('#bank-about-us').text(mybean.text).hide();
                    $('.month').text(mybean.month);
                    $('#bank-img').attr('src', mybean.url);
                    $('#bank-date').text(mybean.date);
                    $('#bank-rate').text(mybean.rate);
                    $('#bank-profit').text(mybean.profit);
                    $('#table-head-bank-period').text(mybean.period);
                    $('#table-head-bank-currency').text(mybean.currency);
                    $('#table-head-bank-buy').text(mybean.buy);
                    $('#table-head-bank-sale').text(mybean.sale);
                }

            });
        });
        $('#nav-1').click(function () {

            $('#bank-about-us').hide();
            $('#nav-2').parent().removeClass('active');
            $('#nav-3').parent().removeClass('active');
            $('#nav-1').parent().addClass('active');
        });
        $('#nav-2').click(function () {
            $('#bank-about-us').show();
        });
        $('#nav-3').click(function () {
            window.location.href = "${pageContext.request.contextPath}/product";
        });

    });


</script>

