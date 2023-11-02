import 'package:flutter/material.dart'; 
import 'package:pie_chart/pie_chart.dart'; 

void main() { 
runApp(const MyApp()); 
} 

class MyApp extends StatelessWidget { 
const MyApp({Key? key}) : super(key: key); 

// This widget is the root of your application. 
@override 
Widget build(BuildContext context) { 
	return MaterialApp( 
	debugShowCheckedModeBanner: false, 
	theme: ThemeData( 
		primarySwatch: Colors.blue, 
	), 
	home: const MyHomePage(), 
	); 
} 
} 

class MyHomePage extends StatefulWidget { 
const MyHomePage({Key? key}) : super(key: key); 

@override 
State<MyHomePage> createState() => _MyHomePageState(); 
} 

class _MyHomePageState extends State<MyHomePage> { 
// Data for the pie chart 
Map<String, double> dataMap = { 
	"Food Items": 18.47, 
	"Clothes": 17.70, 
	"Technology": 4.25, 
	"Cosmetics": 3.51, 
	"Other": 2.83, 
}; 

// Colors for each segment 
// of the pie chart 
List<Color> colorList = [ 
	const Color(0xffD95AF3), 
	const Color(0xff3EE094), 
	const Color(0xff3398F6), 
	const Color(0xffFA4A42), 
	const Color(0xffFE9539) 
]; 

// List of gradients for the 
// background of the pie chart 
final gradientList = <List<Color>>[ 
	[ 
	Color.fromRGBO(223, 250, 92, 1), 
	Color.fromRGBO(129, 250, 112, 1), 
	], 
	[ 
	Color.fromRGBO(129, 182, 205, 1), 
	Color.fromRGBO(91, 253, 199, 1), 
	], 
	[ 
	Color.fromRGBO(175, 63, 62, 1.0), 
	Color.fromRGBO(254, 154, 92, 1), 
	] 
]; 

@override 
Widget build(BuildContext context) { 
	return Scaffold( 
	appBar: AppBar( 
		centerTitle: true, 
		title: const Text("Pie Chart example"), 
	), 
	body: Center( 
		child: PieChart( 
		// Pass in the data for 
		// the pie chart 
		dataMap: dataMap, 
		// Set the colors for the 
		// pie chart segments 
		colorList: colorList, 
		// Set the radius of the pie chart 
		chartRadius: MediaQuery.of(context).size.width / 2, 
		// Set the center text of the pie chart 
		centerText: "Budget", 
		// Set the width of the 
		// ring around the pie chart 
		ringStrokeWidth: 24, 
		// Set the animation duration of the pie chart 
		animationDuration: const Duration(seconds: 3), 
		// Set the options for the chart values (e.g. show percentages, etc.) 
		chartValuesOptions: const ChartValuesOptions( 
			showChartValues: true, 
			showChartValuesOutside: true, 
			showChartValuesInPercentage: true, 
			showChartValueBackground: false), 
		// Set the options for the legend of the pie chart 
		legendOptions: const LegendOptions( 
			showLegends: true, 
			legendShape: BoxShape.rectangle, 
			legendTextStyle: TextStyle(fontSize: 15), 
			legendPosition: LegendPosition.bottom, 
			showLegendsInRow: true), 
		// Set the list of gradients for 
		// the background of the pie chart 
		gradientList: gradientList, 
		), 
	), 
	); 
} 
}