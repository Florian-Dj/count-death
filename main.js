function upgrade(boss) {
	var value = parseInt(document.getElementById(boss).value, 10);
    value = isNaN(value) ? 0 : value;
    value++;
    document.getElementById(boss).value = value;
    countTotal();
    var d = new Date();
    var time = d.toLocaleTimeString();
    console.log("[" + time + "] Mort part " + boss + " : " + value);
};

function downgrade(boss) {
	var value = parseInt(document.getElementById(boss).value, 10);
    value = isNaN(value) ? 0 : value;
    value--
    document.getElementById(boss).value = value;
    countTotal();
};

function countTotal() {
    var array = document.querySelectorAll("input.count")
    var total = 0;
    for (var i = 0; i < array.length; i++) {
        total += parseInt(array[i].value);
    }
    document.getElementById('total').value = total;

    createData();
};

function createData() {
    var data = {}
    var array = document.querySelectorAll("input.count")
    for (var i = 0; i < array.length; i++) {
        data[array[i].id] = parseInt(array[i].value)
    }
    window.localStorage.setItem("dark_souls", JSON.stringify(data));
    return data
};

function updateData() {
    var data = JSON.parse(window.localStorage.getItem("dark_souls"));
    for (let k in data) {
        document.getElementById(k).value = data[k];
    }
    countTotal();
    console.log("Update completed")
};

function saveData() {
    var data = createData();
    console.log(data);
    exportToJsonFile(data);
}

function exportToJsonFile(jsonData) {
    let dataStr = JSON.stringify(jsonData);
    let dataUri = 'data:application/json;charset=utf-8,'+ encodeURIComponent(dataStr);

    let exportFileDefaultName = './data.json';

    let linkElement = document.createElement('a');
    linkElement.setAttribute('href', dataUri);
    linkElement.setAttribute('download', exportFileDefaultName);
    linkElement.click();
    console.log("Save completed")
};


window.onload = function() {
    updateData()
}