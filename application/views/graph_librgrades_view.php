<title>Графики и отчеты</title>
<script type="text/javascript" src="/js/highcharts.js" ></script>
<script type="text/javascript" src="/js/exporting.js" ></script>
<script src="/js/drilldown.js"></script>

<script type="text/javascript">
    $(function () {
        var d = new Date();
        // Create the chart
        $('#container').highcharts({
            chart: {
                type: 'column'
            },
            title: {
                text: 'Средняя оценка ответов библиотекарей на'+ d.toLocaleDateString()
            },
            subtitle: {
                //text: 'Click the columns to view versions. Source: <a href="http://netmarketshare.com">netmarketshare.com</a>.'
            },
            xAxis: {
                type: 'category'
            },
            yAxis: {
                title: {
                    text: 'Оценки'
                }

            },
            legend: {
                enabled: false
            },
            plotOptions: {
                series: {
                    borderWidth: 0,
                    dataLabels: {
                        enabled: true,
                        format: '{point.y:.1f}%'
                    }
                }
            },

            tooltip: {
                headerFormat: '<span style="font-size:11px">{series.name}</span><br>',
                pointFormat: '<span style="color:{point.color}">{point.name}</span>: <b>{point.y:.2f}</b> из 5<br/>'
            },

            series: [{
                name: 'Средняя оценка',
                colorByPoint: true,

                <?
                $login = array();
                $average = array();
                $date = array();
                $grade = array();

                while($row = $data->fetch(PDO::FETCH_ASSOC)) {
                    array_push($login, $row['login']);
                    array_push($average, $row['Average']);
                    array_push($date, $row['Date']);
                    array_push($grade, $row['Grade']);
                }
                ?>
                data: [
                    <?
                    for ($i = 0; $i < count ($login); $i++){
                        print("{name: '".$login[$i]."',".PHP_EOL);
                        print("y: ".$average[$i].",".PHP_EOL);
                        print("drilldown: '".$login[$i]."'".PHP_EOL);
                        if($i != count($login)-1){
                            print("},".PHP_EOL);
                        }
                        else{
                            print("}".PHP_EOL);
                        }
                    }
                    ?>
                ]
            }]
        });
    });
</script>
<div id="container" style="min-width: 310px; height: 400px; max-width: 600px; margin: 0 auto"></div>


<h2 align="center">Количество новых читателей</h2>
<p align="center"><a href="/reports/new_readers_week" class="button">За неделю</a> <a href="/reports/new_readers_month" class="button">За месяц</a></p>
<br>
<h2 align="center">Количество заданных вопросов</h2>
<p align="center"><a href="/reports/questions_week" class="button">За неделю</a> <a href="/reports/questions_month" class="button">За месяц</a></p>
<br>
<h2 align="center">Количество данных ответов</h2>
<p align="center"><a href="/reports/answers_week" class="button">За неделю</a> <a href="/reports/answers_month" class="button">За месяц</a></p>



