import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mak_b/bottom_navigation_bar/account_nav.dart';
import 'package:mak_b/bottom_navigation_bar/cart_page.dart';
import 'package:mak_b/bottom_navigation_bar/product_page.dart';
import 'package:mak_b/variables/constants.dart';
import 'package:motion_tab_bar_v2/motion-tab-bar.dart';

class Account extends StatefulWidget {
  const Account({Key? key}) : super(key: key);

  @override
  _AccountState createState() => _AccountState();
}

class _AccountState extends State<Account> with TickerProviderStateMixin {
  TabController? _tabController;
  String _pageTitle = 'Account';

  @override
  void initState() {
    super.initState();
    _tabController = TabController(
      initialIndex: 1,
      length: 3,
      vsync: this,
    );
  }

  @override
  void dispose() {
    super.dispose();
    _tabController!.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      // appBar: AppBar(
      //   backgroundColor: kPrimaryLightColor,
      //   leading: IconButton(
      //     onPressed: () {
      //       Navigator.pop(context);
      //     },
      //     icon: Icon(Icons.arrow_back, color: Colors.white),
      //   ),
      //   title: Text(
      //     _pageTitle,
      //     style: TextStyle(
      //         color: Colors.white,
      //         fontSize: size.width * .05,
      //         fontWeight: FontWeight.w500),
      //   ),
      // ),
      backgroundColor: Colors.green[50],
      bottomNavigationBar: MotionTabBar(
        initialSelectedTab: 'Account',
        labels: const ["Product", "Account", "Cart"],
        icons: const [
          FontAwesomeIcons.tshirt,
          FontAwesomeIcons.userCircle,
          FontAwesomeIcons.cartPlus
        ],
        tabSize: 50,
        tabBarHeight: AppBar().preferredSize.height,
        textStyle: TextStyle(
          fontSize: size.width * .04,
          color: Colors.black,
          fontWeight: FontWeight.w400,
        ),
        tabIconColor: Colors.grey.shade500,
        tabIconSize: 24.0,
        tabIconSelectedSize: 24.0,
        tabSelectedColor: Color(0xFF19B52B).withOpacity(0.1),
        tabIconSelectedColor: kPrimaryColor,
        tabBarColor: Colors.white,
        onTabItemSelected: (int value) {
          setState(() {
            _tabController!.index = value;
            value == 0
                ? _pageTitle = 'Product'
                : value == 1
                    ? _pageTitle = 'Account'
                    : _pageTitle = 'Cart';
          });
        },
      ),
      body: TabBarView(
        physics: NeverScrollableScrollPhysics(),
        controller: _tabController,
        children: <Widget>[ProductPage(), AccountNav(), CartPage()],
      ),
    );
  }
}
