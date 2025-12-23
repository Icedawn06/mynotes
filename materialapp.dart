import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(Mainpage());
// runApp(MaterialApp(
  //   title: "测试页",
  //   theme: ThemeData(scaffoldBackgroundColor:Color.fromARGB(255, 255, 219, 251)),
  //   home: Scaffold(
  //     appBar: AppBar(
  //       title: Text("下载地址"),
  //     ),
  //     body: Container(
  //       child: Center(
  //         child: Text("已失效"),
  //       ),
  //     ),
  //     bottomNavigationBar: Container(
  //       height: 80,
  //       child: Center(
  //         child: Text("返回主页面"),
  //       ),
  //     ),
  //     )
  // ));
}

//点击事件GestureDetector
// class Mainpage extends StatefulWidget {
//   Mainpage({Key? key}) : super(key: key);
//   @override
//   _MainpageState createState() => _MainpageState();
// }
// class _MainpageState extends State<Mainpage> {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: "testtest",
//       home: Scaffold(
//         appBar: AppBar(
//         title: Text('ok'),
//        ),
//        body: Container(
//         child: Center(
//           child: GestureDetector(      //或child: TextButton(onPressed:(){print:()})
//             onTap: () {
//               print('you die');//onDoubleTap   //
//             },
//           child: Text('click here'),
//           ),
//         ),
//        ),
//       ),       
//     );
//   }
// }

//状态更新setState
// class Mainpage extends StatefulWidget {
//   Mainpage({Key? key}) : super(key: key);
//   @override
//   _MainpageState createState() => _MainpageState();
// }
// class _MainpageState extends State<Mainpage> {
//   int count = 0;
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: '',
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text(''),
//        ),
//        body: Center(
//         child: Row(
//           children: [
//           TextButton(
//             onPressed: (){
//               count -= 1;
//               print(count);
//               setState(() {});  //操作后更新状态  //可将操作放在更新状态实现中setState((){...})
//             }, 
//             child: Text("-"),
//             ),
//           Text(count.toString()),
//           TextButton(onPressed: (){
//             count += 1;
//             print(count);
//             setState(() {});  //更新状态
//             }, 
//           child: Text("+"),
//           ),
//            ],
//          ),
//         )
//       ),
//     );
//   }
// }

//Center居中组件
// class Mainpage extends StatelessWidget {
//   const Mainpage({Key? key}) : super(key: key);
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         body: Center(
//           child: Container(
//             width: 100, height: 100,
//             decoration: BoxDecoration(color: Colors.blue),
//             child: Center(                    //或用Container(alignment: alignment.center,)居中对齐
//               child: Text("居中", //style: TextStyle(), 
//               ),
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }

//Align对齐组件
// class Mainpage extends StatelessWidget {
//   const Mainpage({Key? key}) : super(key: key);
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         body: Align(
//           alignment: Alignment.topRight,
//           child:Container(
//             color: Colors.blue,
//             child: Align(
//               heightFactor: 4,
//               widthFactor: 4,
//               alignment: Alignment.bottomCenter,
//               child: Icon(
//                 Icons.star,
//                 size: 100,
//                 color: Colors.amber,
//               ),
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }

//Padding内边距组件
// class Mainpage extends StatelessWidget {
//   const Mainpage({Key? key}) : super(key: key);
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         body: Container(
//           //padding: EdgeInsets.all(20),
//           decoration: BoxDecoration(color: Colors.amberAccent),
//           child: Padding(
//             //padding: EdgeInsets.only(left: 200, right: 50),
//             padding: EdgeInsets.symmetric(horizontal: 300, vertical: 200),
//             child: Container(color:Colors.blue) ,
//           ),
//         ),
//       ),
//     );
//   }
// }

//线性布局Column
// class Mainpage extends StatelessWidget {
//   const Mainpage({Key? key}) : super(key: key);
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         body: Container(
//           width: double.infinity,
//           decoration: BoxDecoration(color: Colors.amber),
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,  //.spacearound空间等分  //.evenly等间距  //.center
//                                                                 //.start从头排列        //.end从尾部排列
//             crossAxisAlignment: CrossAxisAlignment.start,       //交叉轴start   //.center   //.end
//             children: [
//               Container(
//                 //margin: EdgeInsets.only(bottom: ,),
//                 height: 100,
//                 width: 100,
//                 color: Colors.blue,),
//                 //SizedBox(height: , width: ,),
//               Container(
//                 height: 100,
//                 width: 100,
//                 color: Colors.blue,),
//               Container(
//                 height: 100,
//                 width: 100,
//                 color: Colors.blue,),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

//线性布局Row
//同Column

//弹性布局Flex&Expanded
// class Mainpage extends StatelessWidget {
//   const Mainpage({Key? key}) : super(key: key);
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         body: Container(
//           width: double.infinity,
//           height: double.infinity,
//           decoration: BoxDecoration(color: Colors.amber),
//           child: Flex(
//             direction: Axis.horizontal,
//             children: [
//               Expanded(     //Flexible(fit: Flexible.fit, flex: 2, child: ...)   //不强制填充
//                 flex: 2,
//                 child: Container(
//                 width: 100,
//                 height: 100,
//                 color: Colors.red,
//                 ), 
//               ),
//               Expanded(
//                 flex: 1,
//                 child:Container(
//                 width: 100,
//                 height: 100,
//                 color: Colors.green,
//                 ), 
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

//流式布局Wrap
// class Mainpage extends StatelessWidget {
//   const Mainpage({Key? key}) : super(key: key);
//   List<Widget> getList(){
//     return List.generate(10, (index){
//       return Container(
//         height: 100,
//         width: 100,
//         color: Colors.blue,
//       );
//     });
//   }
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         body: Container(
//           color: Colors.amber,
//           width: double.infinity,
//           height: double.infinity,
//           child: Wrap(
//             spacing: 10,
//             runSpacing: 10,
//             //对齐方式alignment和runalignment: WrapAlignment.start,...
//             direction: Axis.horizontal,
//             children: getList(),
//           ),
//         ),
//       ),
//     );
//   }
// }

// //层叠布局Stack&Positioned
// class Mainpage extends StatelessWidget {
//   const Mainpage({Key? key}) : super(key: key);
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         body: Container(
//           width: double.infinity,
//           height: double.infinity,
//           color: Colors.amber,
//           child: Stack(
//             alignment: AlignmentGeometry.topCenter,   //控制非定位（positioned）子组件对齐方式
//             children: [
//               Container(
//                 color: Colors.blueGrey,
//                 width: 200,
//                 height: 200,
//               ),
//               Positioned(
//                 top: 10,
//                 left: 10,
//                 child: Container(
//                   color: Colors.red,
//                   width: 50,
//                   height: 50,)),
//               Positioned(
//                 //bottom: 10,
//                 //right: 10,
//                   child: Container(
//                   color: Colors.blue,
//                   width: 50,
//                   height: 50,)),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

//Text文本组件
// class Mainpage extends StatelessWidget {
//   const Mainpage({Key? key}) : super(key: key);
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         body: Container(
//           //alignment: Alignment.center,
//           width: double.infinity,
//           height: double.infinity,
//           color: Colors.amber,
//           child: Center(
//             child: Text.rich(
//               TextSpan(
//                 text: "Hello ",
//                 style: TextStyle(
//                   color: Colors.red,
//                   fontSize: 40,
//                   fontStyle: FontStyle.italic,
//                   fontWeight: FontWeight.bold,
//                   decoration: TextDecoration.underline,
//                   decorationColor: const Color.fromARGB(255, 248, 248, 26),
//                   decorationThickness: 3),
//                   children: [
//                     TextSpan(text: "Flutter", style: TextStyle(color: Colors.green)),
//                     TextSpan(text: "!")]),          
//           // child: Text(
//           //   "今天天气真不错！今天天气真不错！今天天气真不错！今天天气真不错！今天天气真不错！今天天气真不错！今天天气真不错！今天天气真不错！今天天气真不错！今天天气真不错！今天天气真不错！今天天气真不错！今天天气真不错！",
//           //   style: TextStyle(color: Colors.blue, fontSize: 40,),
//           //   maxLines: 3,
//           //   overflow: TextOverflow.ellipsis,
//           //   "Hello, Flutter!",
//           //   style: TextStyle(
//           //     color: Colors.blue,
//           //     fontSize: 69,
//           //     fontStyle: FontStyle.italic,
//           //     fontWeight: FontWeight.w800,
//           //     decoration: TextDecoration.underline,
//           //     decorationColor: const Color.fromARGB(255, 243, 126, 9),
//           //     decorationStyle: TextDecorationStyle.dashed,
//           //     decorationThickness: 4,
//           //   ),
//           // ),
//         ),
//         ),
//       )));
//   }
// }

//Image图片组件
// class Mainpage extends StatelessWidget {
//   const Mainpage({Key? key}) : super(key: key);
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         body: Container(
//           width: double.infinity,
//           height: double.infinity,
//           color: Colors.amber,
//           child: Image.asset("lib/images/速读.jpg", height: 200,
//           width: 200,),
//         ),
//       ),
//     );
//   }
// }

//TextField文本输入组件
// class Mainpage extends StatefulWidget {
//   Mainpage({Key? key}) : super(key: key);
//   @override
//   _MainpageState createState() => _MainpageState();
// }
// class _MainpageState extends State<Mainpage> {
//   TextEditingController _accountController = TextEditingController();
//   TextEditingController _passwordController = TextEditingController();
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         body: Container(
//           padding: EdgeInsets.all(25),
//           color: Colors.white,
//           child: Column(children: [
//             TextField(
//               controller: _accountController,
//               onChanged: (value){print(value);},      //传递每次数据变化
//               onSubmitted: (value){print(value);},    //回车提交
//               decoration: InputDecoration(
//                 contentPadding: EdgeInsets.only(left: 20),
//                 hintText: "账号",
//                 fillColor: const Color.fromARGB(46, 238, 228, 188),
//                 filled: true,
//                 border: OutlineInputBorder(
//                   borderSide: BorderSide.none,
//                   borderRadius: BorderRadius.circular(20)
//                 )
//               ),
//             ),
//             SizedBox(height: 10),
//             TextField(
//               controller: _passwordController,
//               obscureText: true,
//               obscuringCharacter: "*",
//               decoration: InputDecoration(
//                 contentPadding: EdgeInsets.only(left: 20),
//                 hintText: "密码",
//                 fillColor: const Color.fromARGB(46, 238, 228, 188),
//                 filled: true,
//                 border: OutlineInputBorder(
//                   borderRadius: BorderRadius.circular(20),
//                   borderSide: BorderSide.none
//                 )
//               ),
//             ),
//             SizedBox(height: 20),
//             Container(
//               height: 50,
//               width: double.infinity,
//               decoration: BoxDecoration(
//                 borderRadius: BorderRadius.circular(20),
//                 color: Colors.black,
//               ),
//               child: TextButton(
//                 onPressed: (){
//                   print("${_accountController.text}-${_passwordController.text}");
//                 },
//                 child: Text("登录", style: TextStyle(color: Colors.white),),
//               )
//             )
//           ],),
//           ),
//       )
//     );
//   }
// }

//（全局）SingleChildScrollView组件
// class Mainpage extends StatefulWidget {
//   Mainpage({Key? key}) : super(key: key);
//   @override
//   _MainpageState createState() => _MainpageState();
// }
// class _MainpageState extends State<Mainpage> {
//   ScrollController _controller = ScrollController();
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         body: Stack(
//           children: [
//             SingleChildScrollView(
//               controller: _controller,
//               padding: EdgeInsets.all(20),
//               child: Column(
//                 children: List.generate(100, (index){
//                   return Container(
//                     height: 50,
//                     width: double.infinity,
//                     margin: EdgeInsets.only(top: 10),
//                     color: Colors.blue,
//                     alignment: Alignment.center,
//                     child: Text("我是第${index + 1}个",style: TextStyle(color: Colors.white, fontSize: 30),),
//                   );
//                 })
//               )
//             ),
//             Positioned(
//               top: 5, right: 5,
//               child: GestureDetector(
//                 onTap: () {
//                   _controller.animateTo(_controller.position.maxScrollExtent,
//                   duration: Duration(seconds: 1),
//                   curve: Curves.bounceIn);
//                 },
//                 child: Container(
//                   width: 80, height: 80,
//                   decoration: BoxDecoration(color: Colors.red, borderRadius: BorderRadius.circular(40)),
//                   alignment: Alignment.center,
//                   child: Text('去底部', style: TextStyle(color: Colors.white))
//                 ),
//               )
//             ),
//             Positioned(
//               bottom: 5, right: 5,
//               child: GestureDetector(
//                 onTap: (){
//                   _controller.animateTo(0,
//                   duration: Duration(seconds: 1),
//                   curve: Curves.easeIn);
//                 },
//                 child: Container(
//                   alignment: Alignment.center,
//                   width: 80, height: 80,
//                   decoration: BoxDecoration(color: Colors.red,borderRadius: BorderRadius.circular(40)),
//                   child: Text('去顶部', style: TextStyle(color: Colors.white),)
//                 )
//               )
//             )
//           ]
//         )  
//       ) 
//     );
//   }
// }

//ListView


//Gridview


//CustomScrollview


//PageView


