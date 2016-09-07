

drawExp = function (chartType,essentials,bills,transport,kids, totalExp) {

    if (essentials === "0" && bills === "0" && transport === "0" && kids === "0" ) {
        document.getElementById("chartPlaceholderExp").style.display = "none";
        document.getElementById("noDataPlaceholderExp").textContent = "Not enough data to draw chart";
    } else {
        var chartExp = new CanvasJS.Chart("chartContainerExp",
        {
            title: {
                text: "Total Expenses: £" + totalExp
            },
            legend: {
                maxWidth: 350,
                itemWidth: 120
            },
            animationEnabled: true,
            data: [
            {
                type: chartType,
                radius: "100%",
                showInLegend: true,
                legendText: "{indexLabel}",
                toolTipContent: "{indexLabel} - #percent  %",
                indexLabel: "{y} %",
                dataPoints: [
                    { indexLabel: "Essentials", y: parseFloat(essentials) },
                    { indexLabel: "Bills", y: parseFloat(bills)},
                    { indexLabel: "Transport", y: parseFloat(transport) },
                    { indexLabel: "Kids", y: parseFloat(kids),},
                   
            ]
        }
            ]
        });

        chartExp.render();
        

    }
}
