var months = ['January','February','March','April','May','June','July',
                    'August','September','October','November','December']

var weeks = ['Monday','Tuesday','Wednesday','Thursday','Friday','Saturday','Sunday'];

$(function () {
    monthChart = $("#chartjs_month");
    weekChart = $("#chartjs_week");
    let d = new Date();
    let year = d.getFullYear();
    let month = d.getMonth();
    let week = d.getWeek(0) - 1;
    callBieuDoDoanhThuThang(2020,7);
    callBieuDoDoanhThuTuan(2020,27);
    // callBieuDoDoanhThuTrongNgay(day);
})

Date.prototype.getWeek = function (dowOffset) {
    /*getWeek() was developed by Nick Baicoianu at MeanFreePath: http://www.meanfreepath.com */

    dowOffset = typeof(dowOffset) == 'int' ? dowOffset : 0; //default dowOffset to zero
    var newYear = new Date(this.getFullYear(),0,1);
    var day = newYear.getDay() - dowOffset; //the day of week the year begins on
    day = (day >= 0 ? day : day + 7);
    var daynum = Math.floor((this.getTime() - newYear.getTime() -
        (this.getTimezoneOffset()-newYear.getTimezoneOffset())*60000)/86400000) + 1;
    var weeknum;
    //if the year starts before the middle of a week
    if(day < 4) {
        weeknum = Math.floor((daynum+day-1)/7) + 1;
        if(weeknum > 52) {
            nYear = new Date(this.getFullYear() + 1,0,1);
            nday = nYear.getDay() - dowOffset;
            nday = nday >= 0 ? nday : nday + 7;
            /*if the next year starts before the middle of
              the week, it is week #1 of that year*/
            weeknum = nday < 4 ? 1 : 53;
        }
    }
    else {
        weeknum = Math.floor((daynum+day-1)/7);
    }
    return weeknum;
};

function callBieuDoDoanhThuTrongNgay(day){

}

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
            console.log(revenue);
            var ctx = monthChart.get(0).getContext("2d");
            var myChar = new Chart(ctx, {
                type : "line",
                data : {
                    labels : label,
                    datasets : [{
                        label: 'Revenue',
                        data: revenue,
                        backgroundColor: "rgba(89, 105, 255,0.5)",
                        borderColor: "rgba(89, 105, 255,0.7)",
                        borderWidth: 1
                    }]
                },
                options: {
                    responsive: true,
                    title: {
                        display: true,
                        text: "Revenue in " + months[month-1],
                    },
                    legend: {
                        display: true,
                        position: 'bottom',

                        labels: {
                            fontColor: '#71748d',
                            fontFamily: 'Circular Std Book',
                            fontSize: 14,
                        }
                    },
                    scales: {
                        xAxes: [{
                            ticks: {
                                fontSize: 14,
                                fontFamily: 'Circular Std Book',
                                fontColor: '#71748d',
                            }
                        }],
                        yAxes: [{
                            ticks: {
                                fontSize: 14,
                                fontFamily: 'Circular Std Book',
                                fontColor: '#71748d',
                            }
                        }]
                    }
                    // scales: {
                    //     yAxes: [{
                    //         ticks: {
                    //             beginAtZero: true
                    //         }
                    //     }]
                    // }
                }
            });
        }
    })
}

function callBieuDoDoanhThuTuan(year,week){
    bieuDoDoanhThuTuan(year,week).then(rs => {
        if(rs.message === "found"){
            let revenue = [];
            for(i = 0,j = 0 ; i < 7; i++){
                if(j === rs.data.length){
                    revenue.push(0);
                }else{
                    if(weeks[i] == rs.data[j].x){
                        revenue.push(rs.data[j].y);
                        j++;
                    }else{
                        revenue.push(0);
                    }
                }
            }
            console.log(revenue);
            var ctx = weekChart.get(0).getContext("2d");
            var myChar = new Chart(ctx, {
                type : "bar",
                data : {
                    labels : weeks,
                    datasets : [{
                        label: 'Revenue',
                        data: revenue,
                        backgroundColor: "rgba(89, 105, 255,0.5)",
                        borderColor: "rgba(89, 105, 255,0.7)",
                        borderWidth: 1
                    }]
                },
                options: {
                    responsive: true,
                    title: {
                        display: true,
                        text: "Revenue in week " + week ,
                    },
                    legend: {
                        display: true,
                        position: 'bottom',

                        labels: {
                            fontColor: '#71748d',
                            fontFamily: 'Circular Std Book',
                            fontSize: 14,
                        }
                    },
                    scales: {
                        xAxes: [{
                            ticks: {
                                fontSize: 14,
                                fontFamily: 'Circular Std Book',
                                fontColor: '#71748d',
                            }
                        }],
                        yAxes: [{
                            ticks: {
                                fontSize: 14,
                                fontFamily: 'Circular Std Book',
                                fontColor: '#71748d',
                            }
                        }]
                    }
                    // scales: {
                    //     yAxes: [{
                    //         ticks: {
                    //             beginAtZero: true
                    //         }
                    //     }]
                    // }
                }
            });
        }
    })
}