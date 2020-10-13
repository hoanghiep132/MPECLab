var months = ['January','February','March','April','May','June','July',
                    'August','September','October','November','December']

$(function () {
    monthChart = $("#chartjs_month");
    yearChart = $("#chartjs_year");
    let d = new Date();
    let year = d.getFullYear();
    let month = d.getMonth();
    callBieuDoDoanhThuThang(2020,7);
    callBieuDoDoanhThuNam(2020);
})

function callBieuDoDoanhThuThang(year,month){
    bieuDoDoanhThuThang(year,month).then(rs => {
        let label = [];
        if(month === 2){
            if(year % 4 === 0){
                label = ['01','02','03','04','05','06','07','08','09','10',
                    '11','12','13','14','15','16','17','18','19','20',
                    '21','22','23','24','25','26','27','28','29'];
            }else {
                label = ['01','02','03','04','05','06','07','08','09','10',
                    '11','12','13','14','15','16','17','18','19','20',
                    '21','22','23','24','25','26','27','28'];
            }
        }else if (month === 4 || month === 6 || month === 9 || month == 11){
            label = ['01','02','03','04','05','06','07','08','09','10',
                '11','12','13','14','15','16','17','18','19','20',
                '21','22','23','24','25','26','27','28','29','30'];
        }else{
            label = ['01','02','03','04','05','06','07','08','09','10',
                '11','12','13','14','15','16','17','18','19','20',
                '21','22','23','24','25','26','27','28','29','30','31'];
        }
        let revenue = [];
        if (rs.message === "found") {
            for(i = 0,j = 0; i < label.length; i++){
                if(j === rs.data.length){
                    revenue.push(0);
                }else{
                    let day = rs.data[j].x.substr(8,10);
                    if(label[i] === day){
                        revenue.push(rs.data[j].y);
                        j++;
                    }else {
                        revenue.push(0);
                    }
                }
            }

            var ctx = yearChart.get(0).getContext("2d");
             var myChar = new Chart(ctx, {
                type : "bar",
                data : {
                    labels : label,
                    datasets : {
                        label: 'Revenue',
                        data: revenue,
                        backgroundColor: "rgba(89, 105, 255,0.5)",
                        borderColor: "rgba(89, 105, 255,0.7)",
                        borderWidth: 1
                    }
                },
                options: {
                    responsive: true,
                    title: {
                        display: true,
                        text: "Revenue in " + months[month-1],
                    },
                    // legend: {
                    //     display: true,
                    //     position: 'bottom',
                    //
                    //     labels: {
                    //         fontColor: '#71748d',
                    //         fontFamily: 'Circular Std Book',
                    //         fontSize: 14,
                    //     }
                    // },
                    // scales: {
                    //     xAxes: [{
                    //         ticks: {
                    //             fontSize: 14,
                    //             fontFamily: 'Circular Std Book',
                    //             fontColor: '#71748d',
                    //         }
                    //     }],
                    //     yAxes: [{
                    //         ticks: {
                    //             fontSize: 14,
                    //             fontFamily: 'Circular Std Book',
                    //             fontColor: '#71748d',
                    //         }
                    //     }]
                    // }
                    scales: {
                        yAxes: [{
                            ticks: {
                                beginAtZero: true
                            }
                        }]
                    }
                }
            });
        }
    })
}

function callBieuDoDoanhThuNam(year){
    bieuDoDoanhThuNam(year).then(rs => {
        if(rs.message === "found"){
            let revenue = [];
            for(i = 1,j = 0 ; i < 13; i++){
                if(i === rs.data.length){
                    revenue.push(0);
                }else{
                    if(i == rs.data.x){
                        revenue.push(rs.data.y);
                        j++;
                    }else{
                        revenue.push(0);
                    }
                }
            }
        }
    })
}