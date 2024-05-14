import 'package:flutter/material.dart';
import 'models/product.dart';
import 'models/cart.dart';
import 'detail_page.dart';

class ProductPage extends StatefulWidget {

  @override
  _ProductPageState createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {
  Cart cart = Cart();
  @override
  Widget build(BuildContext context) {
    final List<Product> products = [
      Product(
        brand: 'Dell',
        details: 'The Dell Inspiron 15 3530 is a versatile laptop designed for modern computing. With its powerful Intel Core i5-1335U processor, it offers exceptional performance for multitasking, productivity, and entertainment. The 15.6-inch Full HD display with a 120Hz refresh rate provides stunning visuals, making it ideal for immersive gaming and multimedia experiences. The laptops sleek design, premium build quality, and competitive price of \$999 make it a reliable and cost-effective choice for users seeking a high-performance laptop for both professional and personal use.',
        imageUrl: 'assets/dell.jpg',
        model: 'Inspiron 15 3530',
        name: 'Dell Inspiron 15 3530',
        price: 999,
      ),
      Product(
        brand: 'Apple',
        details:
        'The Apple MacBook Pro M2 redefines portable computing with its cutting-edge features. Powered by the advanced Apple M2 Chip with an 8-core CPU and 10-core GPU, this laptop delivers unparalleled performance. Boasting a 13-inch Retina Display, 8GB RAM, and a 256GB SSD, it ensures swift and efficient multitasking. Running on macOS, the MacBook Pro M2 offers a seamless and intuitive user experience. With its sleek design and a price tag of \$1689, it stands as a premium choice for users seeking power, style, and reliability in a compact laptop.',
        imageUrl: 'assets/apple.jpg',
        model: 'Macbook Pro M2',
        name: 'Apple Macbook Pro M2',
        price: 1689,
      ),
      Product(
        brand: 'HP',
        details: 'The HP OMEN is a powerhouse designed for gaming enthusiasts. Featuring a large 17.3-inch display with a high refresh rate of 165Hz, it delivers a captivating gaming experience. Under the hood, it is equipped with the Intel 12th Core i7-12700H processor, 32GB DDR5 RAM, and a lightning-fast 1TB PCIe SSD, ensuring seamless gameplay and rapid system responsiveness. The NVIDIA GeForce RTX 3070Ti graphics card enhances visuals, while the RGB backlit keyboard adds a touch of flair. Running on Windows 11, this gaming laptop comes in a stylish Shadow Black design, priced at \$2349',
        imageUrl: 'assets/hp_omen.jpg',
        model: 'OMEN',
        name: 'HP OMEN',
        price: 2349,
      ),

      Product(
        brand: 'HP',
        details: 'The HP Pavilion eg3010ca is a versatile 15-inch laptop designed for optimal performance and user convenience. Its Full HD Touch Display provides a responsive and immersive viewing experience. Powered by the Intel Core i5-1335U processor, with 16GB RAM and a spacious 1TB SSD, this laptop ensures smooth multitasking and quick data access. Equipped with Intel UHD Graphics, it delivers crisp visuals. Running on Windows 11 Home, the Pavilion eg3010ca combines power and elegance, making it an ideal choice for users seeking both style and functionality. Priced at \$1199, it offers a compelling package for a variety of computing needs',
        imageUrl: 'assets/hp_pavilion.jpg',
        model: 'Pavilion eg3010ca',
        name: 'HP Pavilion eg3010ca',
        price: 1199,
      ),
      Product(
        brand: 'Acer',
        details: 'The Acer Nitro 5 is a high-performance gaming laptop designed for immersive gaming experiences. Featuring a 15.6-inch FHD IPS 144Hz display, it delivers stunning visuals with smooth motion. Powered by the 12th Gen Intel Core i5-12500H processor and equipped with GeForce RTX 3050 Ti 4GB graphics, this laptop ensures excellent gaming performance. With 16GB RAM and a 1TB PCIe 4.0 storage, it provides ample space for games and multitasking. The backlit keyboard, Thunderbolt 4, HDMI, and Wi-Fi 6 add to its versatility. Running on Windows 11 Pro, the Acer Nitro 5 is a powerful choice for gamers, priced at \$1459.',
        imageUrl: 'assets/acer_nitro.jpg',
        model: 'Nitro 5',
        name: 'Acer Nitro 5',
        price: 1459,
      ),
      Product(
        brand: 'Acer',
        details: 'The Acer Aspire 5 is a versatile 15.6-inch FHD laptop tailored for everyday use. Powered by the AMD Ryzen 5 5625U processor and AMD Radeon™ Graphics, it provides a smooth computing experience. With 8GB RAM and a 512GB SSD, this laptop ensures fast and responsive performance. Running on Windows 11, it offers a modern and user-friendly interface. Priced at \$849, the Acer Aspire 5 is an affordable yet capable option for those seeking a reliable laptop for various tasks.',
        imageUrl: 'assets/acer_aspire.jpg',
        model: 'Aspire 5',
        name: 'Acer Aspire 5',
        price: 849,
      ),
      Product(
        brand: 'Asus',
        details: 'The ASUS ROG Strix G15 is a high-performance gaming laptop designed for immersive gaming experiences. Boasting a 15.6-inch 165Hz WQHD display, it delivers sharp visuals, complemented by the power of an AMD Ryzen7 6800H processor and NVIDIA GeForce RTX 3060 graphics. With 32GB DDR5 RAM and a swift 1TB SSD, this laptop ensures seamless multitasking and fast loading times. Featuring RGB keyboard lighting and Thermal Grizzly Cooling, it combines style and functionality. Equipped with Win 11 Pro, it caters to gaming enthusiasts seeking cutting-edge hardware and software. Priced at \$1949, the ASUS ROG Strix G15 is a premium choice for gamers.',
        imageUrl: 'assets/asus_rog.jpg',
        model: 'Rog Strix G15',
        name: 'ASUS ROG Strix G15',
        price: 1949,
      ),
      Product(
        brand: 'Asus',
        details: 'The ASUS VivoBook S15 is a sleek and lightweight laptop, combining style with powerful performance. Featuring a 15.6-inch FHD display, it offers vibrant visuals, and with an Intel Core i7 processor, 8GB DDR4 RAM, and a 512GB PCIe SSD, it ensures smooth multitasking and fast data access. The laptop comes with Wi-Fi 6 support for high-speed connectivity and runs on Windows 11 Home. Dressed in Indie Black, the ASUS VivoBook S15, with model S533EA-AS79-CA, stands out for its elegance and modern features. Priced at \$899, it provides an excellent balance of design and functionality for users on the go.',
        imageUrl: 'assets/asus_vivobook.jpg',
        model: 'Vivobook S15',
        name: 'ASUS VivoBook S15',
        price: 899,
      ),
      Product(
        brand: 'MSI',
        details: 'The MSI Thin GF63 is a gaming laptop designed for those seeking a balance of performance and portability. Boasting a 15.6-inch 144Hz display, this laptop delivers a smooth gaming experience, complemented by the power of the Intel Core i5-12450H processor, RTX 3050 graphics, 16GB DDR4 RAM, and a 512GB NVMe SSD. Running on Windows 11 Home, it provides a feature-rich gaming environment. The Thin GF63 model, with its sleek design, is not only powerful but also lightweight and easy to carry. Priced at \$1024, it offers an enticing combination of gaming prowess and mobility for gaming enthusiasts.',
        imageUrl: 'assets/msi_thin.jpg',
        model: 'Thin GF63',
        name: 'MSI Thin GF63',
        price: 1024,
      ),
      Product(
        brand: 'MSI',
        details: 'The MSI Vector GP68HX is a high-performance gaming laptop engineered to deliver an unparalleled gaming experience. Featuring a 16-inch FHD+ 144Hz display, this laptop ensures crisp visuals and smooth gameplay. Under the hood, it is powered by the Intel Core i9-12900HX processor, RTX 4080 graphics, 32GB DDR5 RAM, and a lightning-fast 1TB NVMe SSD. With VR readiness and advanced features like WiFi 6E and Bluetooth 5.3, the Vector GP68HX is equipped for immersive and lag-free gaming. The laptops aesthetics are elevated with Per-Key RGB lighting, adding a customizable touch.',
        imageUrl: 'assets/msi_vector.jpg',
        model: 'Vector GP68HX',
        name: 'MSI Vector GP68HX',
        price: 3099,
      ),
      Product(
        brand: 'Lenovo',
        details: 'The Lenovo IdeaPad Gaming 3i is a versatile gaming laptop designed to deliver exceptional performance and immersive visuals. Boasting a 15.6-inch FHD 120Hz display, this laptop ensures a smooth and responsive gaming experience. Powered by the 12th Gen Intel Core i7-12700H processor and NVIDIA GeForce RTX 3050Ti graphics, it handles demanding games and multitasking with ease. The laptop features 16GB RAM for seamless performance and a spacious 1TB PCIe SSD for fast storage. Priced at \$1679, it stands as a compelling choice for gamers seeking a powerful and reliable gaming laptop',
        imageUrl: 'assets/lenovo_ideapad.jpg',
        model: 'Idea Pad',
        name: 'Lenovo IdeaPad',
        price: 1679,
      ),
      Product(
        brand: 'Lenovo',
        details: 'The Lenovo ThinkBook 13s G2 is a sleek and powerful laptop designed for productivity and portability. Featuring a 13.3-inch WQXGA (2560 x 1600) display, this laptop delivers sharp and vibrant visuals. Equipped with an Intel Core i5-1135G7 processor, 8GB RAM, and a 256GB SSD, it ensures fast and efficient performance for work and entertainment. Running on Windows 10, the laptop offers a user-friendly interface and a variety of features. Priced at \$629, it strikes a balance between affordability and premium features, catering to users who value both style and functionality.',
        imageUrl: 'assets/lenovo_thinkbook.jpg',
        model: 'Think Book',
        name: 'Lenovo ThinkBook',
        price: 629,
      ),
      Product(
        brand: 'Microsoft',
        details: 'The Microsoft Surface Pro 9 is a cutting-edge 2-in-1 device that combines the power of a laptop with the flexibility of a tablet. With a 13-inch touchscreen display, this device provides a versatile and immersive user experience. Powered by an Intel Core i7 processor, 16GB of RAM, and a 256GB SSD, it delivers exceptional performance for multitasking and productivity. The sleek and compact design, coupled with the sapphire finish, adds a touch of elegance to this device. Priced at \$1399, it represents a premium choice for users seeking a high-performance and portable computing solution',
        imageUrl: 'assets/microsoft_surface_pro.jpg',
        model: 'Surface Pro',
        name: 'Microsoft Surface Pro',
        price: 1399,
      ),
      Product(
        brand: 'Microsoft',
        details: 'The Microsoft Surface Go 3 is a compact and portable touchscreen laptop designed for users on the go. Featuring a 12.4-inch display, this laptop provides a responsive and interactive interface. Powered by an Intel Core i5 processor, 8GB of RAM, and a 256GB SSD, it delivers reliable performance for daily computing tasks. With its Ice Blue finish, the Surface Go 3 has a sleek and stylish appearance. Priced at \$1100, it represents a balance of performance and portability, making it an ideal choice for users who prioritize mobility without compromising on functionality',
        imageUrl: 'assets/microsoft_surface_go.jpg',
        model: 'Surface Go 3',
        name: 'Microsoft Surface',
        price: 1100,
      ),
      Product(
        brand: 'Toshiba',
        details: 'The Toshiba Tecra Z50 is a powerful and reliable 15.6-inch LED Ultrabook designed for professional use. Equipped with an Intel Core i7-4600U processor running at 2.10 GHz, 8GB DDR3 RAM, and a 256GB SSD, it delivers efficient and responsive performance for demanding tasks. The laptop features Intel HD Graphics 4400, providing clear visuals for work and entertainment.With its sleek and professional design, the Tecra Z50 is suitable for business environments.  Priced at \$899, it offers a balance of performance and affordability, making it an excellent choice for professionals seeking a reliable and powerful Ultrabook.',
        imageUrl: 'assets/toshiba_tecra.jpg',
        model: 'Tecra Z50',
        name: 'Toshiba Tecra Z50',
        price: 899,
      ),
      Product(
        brand: 'Toshiba',
        details: 'The Toshiba Satellite Radius 11 is a compact and versatile 2-in-1 laptop featuring an 11.6-inch display. Powered by an Intel Celeron N2840 processor, this laptop is designed for everyday tasks. With 2GB of RAM and a 32GB SSD, it provides quick and responsive performance for basic computing needs.The Satellite Radius 11 is equipped with a 360-degree hinge, allowing it to be used in various modes, including laptop, tablet, and tent modes. Priced at \$349, the laptop offers affordability and portability, making it a suitable choice for users looking for a compact and budget-friendly device for on-the-go computing.',
        imageUrl: 'assets/toshiba_satellite.jpg',
        model: 'Satellite Radius',
        name: 'Toshiba Satellite',
        price: 349,
      ),
      Product(
        brand: 'LG',
        details: 'The LG Gram 16 Inch Laptop is a powerful and lightweight computing device that combines performance with portability. Featuring a 16:10 IPS WQXGA display with a resolution of 2560 x 1600, the laptop delivers sharp visuals and an immersive viewing experience. The model 16Z95P-K.AP78A8 boasts an Intel i7-1195G7 processor, 16GB RAM, and a spacious 1TB SSD, ensuring smooth multitasking and ample storage for files and applications.The laptops Obsidian Black color adds a touch of sophistication to its sleek and slim design. ',
        imageUrl: 'assets/lg_gram.jpg',
        model: 'Gram 16',
        name: 'LG Gram',
        price: 1499,
      ),
      Product(
        brand: 'LG',
        details: 'The LG Ultra PC 17 Inch Laptop redefines the computing experience with its impressive features and stunning design. Boasting a 16:10 WQXGA Anti-Glare IPS display with a resolution of 2560 x 1600, this laptop offers a visually immersive experience with vibrant colors and sharp details. The model 17U70Q-P.AD78A8 is powered by a 12th Gen Intel i7 processor, 32GB DDR5 RAM, and a generous 1TB storage capacity, ensuring seamless multitasking and ample space for all your files.The laptops Dark Silver color adds a touch of elegance to its sleek and sophisticated design. ',
        imageUrl: 'assets/lg_ultra.jpg',
        model: 'Ultra PC 17',
        name: 'LG Ultra PC',
        price: 1799,
      ),

    ];
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.lightBlueAccent,
          title: Text(
            'Products List',
            style: TextStyle(

              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      body:Padding(
        padding: const EdgeInsets.all(20.0),
        child: ListView.builder(
          itemCount: products.length,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DetailPage(product: products[index],cart:cart),
                  ),
                );
              },
              child: Container(
                margin: EdgeInsets.only(bottom: 20.0),

                child: Card(
                  elevation: 8.0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  child: Column(

                    crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 150,
                          child: ClipRRect(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(10.0),
                              topRight: Radius.circular(10.0),
                            ),
                            child: Image.asset(
                              products[index].imageUrl,
                              fit: BoxFit.fill,
                              width: double.infinity,
                              height: double.infinity,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  products[index].name,
                                  style: TextStyle(
                                    fontWeight: FontWeight.w900,
                                    fontSize: 18,
                                  ),
                                ),
                                SizedBox(height: 4.0),
                              ],
                            ),
                            Text(
                              '\$${products[index].price.toString()}',
                              style: TextStyle(
                                color: Colors.red,
                                fontWeight: FontWeight.w700,
                                fontSize: 18,
                              ),
                            ),
                          ],
                      ),
                    ),
                  ],
              ),
            ),
          )
          );
        },
      )
      )
      );

  }
}