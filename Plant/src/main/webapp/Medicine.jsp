<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Medicine Plant</title>
<style>
    table {
        border-collapse: collapse; 
        width: 100%; 
    }

    td {
        border: 2px solid black; 
        padding: 3px;
        text-align: center; 
    }

    img {
        display: block; 
        margin: 0 auto;
        width: 200px;
        height: 200px;
        transition: transform 0.3s ease-in-out, box-shadow 0.3s ease-in-out; 
    }
     img:hover {
            transform: scale(1.1); 
            box-shadow: 0px 5px 15px rgba(0, 0, 0, 0.3); 
            cursor: pointer; 
        }

    a {
        text-decoration: none; 
        color: black; 
        font-weight: bold; 
    }
    h1{
    font:400px;
    color:#26402c;
    text-align:center;
    } 
    body {
            display: flex;
    flex-direction: column; 
    align-items: center;
    justify-content: flex-start; 
    height: 100vh; 
    margin: 0;
    padding-top: 20px;
    
        }
         .search-container {
            margin-bottom: 20px;
        }

        input[type="search"] {
            padding: 8px;
            font-size: 16px;
            border: 2px solid black;
            border-radius: 5px;
            width: 300px;
        }
    
    .container {
            position: relative;
            width: 500px;
            height: 300px;
            text-align: center;
        }

        .container img {
            width: 100%;
            height: 100%;
            object-fit: cover;
        }

        .text-overlay {
            position: absolute;
            top: 50%;
            left: 50%;
            transform: translate(-50%, -50%);
            font-size: 50px;
            font-weight: bold;
            color:black;
            padding: 10px 20px;
            border-radius: 10px;
        }
</style>
</head>
<body>
 <div class="container">
        <img src="flower.jfif" alt="Medicine Plant">
        <div class="text-overlay">MEDICINE PLANT</div>
    </div>
    <br>
     <label>SEARCH: <input type="search" id="searchBox" onkeyup="searchFlowers()" placeholder="Search for a plant..."></label>
<br>
<table id="flowerTable">
<tr>
<td><a href="Drumstick.jsp"><img src="muruka.jfif" ><br>Drum-Stick</a></td>
<td><a href="tulasi.jsp"><img src="tulasi.jfif" ><br>Tulasi</a></td>
<td><a href="aloe vera.jsp"><img src="aloe vera.jfif" ><br>Aloe vera</a></td>
<td><a href="guava.jsp"><img src="guava.jfif" ><br>Guava</a></td>
<td><a href="Amaranth.jsp"><img src="Heirloom Amaranth Dubius (Arai Keerai) .jfif"><br>Amaranth</a></td>
<td><a href="l.jsp"><img src="l.jfif" ><br>Peepal Leaves</a></td>
</tr>
<tr>
<td><a href="balloon.jsp"><img src="Balloon Plant Seeds.jfif" ><br>Balloon Plant</a></td>
<td><a href="carom.jsp"><img src="carom plant.jfif" ><br>Carom</a></td>
<td><a href="black.jsp"><img src="Black cardamom.jfif" ><br>Black Cardamom</a></td>
<td><a href="nightshade.jsp"><img src="Black Nightshade.jfif" ><br>BLACK NIGHTSHADE</a></td>
<td><a href="ja.jsp"><img src="ja.jfif" ><br>Betel Leaves</a></td>
<td><a href="papaya.jsp"><img src="papaya .jfif" ><br>Papaya</a></td>
</tr>
<tr>
<td><a href="money.jsp"><img src="Money Tree Plants.jfif" ><br>Money Plant</a></td>
<td><a href="pawatta.jsp"><img src="Pawatta Leaves.jfif" ><br>Pawatta</a></td>
<td><a href="kalmegh.jsp"><img src="Kalmegh.jfif" ><br>Kalmegh</a></td>
<td><a href="mint.jsp"><img src="Mint.jfif" ><br>Mint</a></td>
<td><a href="lettuce.jsp"><img src="Lettuce Seed.jfif" ><br>Lettuce</a></td>
<td><a href="amla.jsp"><img src="Amla.jfif" ><br>Amla</a></td>
</tr>
<tr>
<td><a href="Amaranthus.jsp"><img src="Amaranthus.jfif" ><br>Amaranthus</a></td>
<td><a href="bunga.jsp"><img src="pohon bunga.jfif" ><br>Pohon Bunga</a></td>
<td><a href="amar.jsp"><img src="Amaranth Leaves.jfif" ><br>Amaranth</td>
<td><a href="ginseng.jsp"><img src="pohon ginseng.jfif" ><br>Pohon Ginseng</a></td>
<td><a href="laurel.jsp"><img src="Laurel Leaves.jfif" ><br>Laurel</a></td>
<td><a href="malabar.jsp"><img src="Malabar Spinach.jfif" ><br>Malabar</a></td>
</tr>
<td><a href="calotropis.jsp"><img src="calotropis gigantea.jfif"><br>Calotropis</a></td>
<td><a href="onion.jsp"><img src="spring onions .jfif" ><br>Spring Onion</a></td>
<td><a href="curry.jsp"><img src="Curry Leaves.jfif" ><br>Curry</a></td>
<td><a href="acalypha.jsp"><img src="Acalypha indica plant.jfif" ><br>Acalypha</a></td>
<td><a href="hummingbird.jsp"><img src="hummingbird plantsI.jfif" ><br>Hummingbrid</a></td>
<td><a href="gongura.jsp"><img src="Gongura Leaves.jfif" ><br>Gongura Leaves</a></td>
</tr>
</table>
 <script>
        function searchFlowers() {
            let input = document.getElementById("searchBox").value.toLowerCase();
            let table = document.getElementById("flowerTable");
            let rows = table.getElementsByTagName("tr");

            for (let i = 0; i < rows.length; i++) {
                let cells = rows[i].getElementsByTagName("td");
                let rowMatch = false;

                for (let j = 0; j < cells.length; j++) {
                    let flowerName = cells[j].textContent.toLowerCase();

                    if (flowerName.includes(input)) {
                        cells[j].style.display = ""; 
                        rowMatch = true;
                    } else {
                        cells[j].style.display = "none"; 
                    }
                }

                rows[i].style.display = rowMatch ? "" : "none";
            }
        }
    </script>

</body>
</html>  