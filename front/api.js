var paises = [];
var poblacion = [];

let url= '/App/Http/Controllers/PaisesController';
fetch(url)

.then(datos_obtenidos=>datos_obtenidos.json())

.then(function transformar (datos_obtenidos) {
    datos_obtenidos.forEach(function agregar (datos_obtenidos) 
    {
        let pos = paises.indexOf(datos_obtenidos.paises); //verifico si el municipio ya lo guardé en el arreglo de municipios
        if(pos == -1){
            paises.push(datos_obtenidos.paises);
            if(datos_obtenidos.){
                poblacion.push(datos_obtenidos.cantidad);
            }
            else{
                cantidad_2020.push(datos_obtenidos.cantidad);
            }
        }
    });

var linea1 = {
    x: paises,
    y: poblacion,
    mode: 'lines',
    name: 'paises',
    line: {
        color: 'red',
        width: 2
    }
};
      
var linea2 = {
    x: municipios,
    y: poblacion,
    mode: 'lines',
    name: 'cantidad piblacion',
    line: {
        color: 'blue',
        width: 2
    }
};
            
var data = [ linea1, linea2 ];
      
var layout = {
    title:'Total de Mujeres Víctimas de Feminicidio por Municipio en el Valle del Cauca, en los años 2019 y 2020',
    height: 600,
    width: 1490,
    xaxis: {
        title: 'paises'
    },
    yaxis: {
        title: 'Cantidad de poblacion'
    },
    legend: {
        y: 0.5,
        traceorder: 'reversed',
        font: {
          size: 16
        }
    }
};
      
Plotly.newPlot('graficoLinea', data, layout);
      
});