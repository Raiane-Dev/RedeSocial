<script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
<script>
// Any of the following formats may be used
var ctx = document.getElementById('myChart');
var myChart = new Chart(ctx, {
    type: 'line',
    data: {
        labels: ['Blue','Azul'],
        datasets: [{
            label: '',
            data: [50,10,8,6,4,0],
            backgroundColor: [
                '#17a00e',
            ],
            borderColor: [
                '#17a00e',
            ],
            borderWidth: 1
        }]
    },
    options: {
        scales: {
            y: {
                beginAtZero: true,
            }
        }
    }
});
</script>
