


import 'package:app/common/widgets/appbar/appbar.dart';
import 'package:app/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:app/common/widgets/texts/product_title_text.dart';
import 'package:app/common/widgets/texts/t_brand_title_text_with_verified_icon.dart';
import 'package:app/util/constans/colors.dart';
import 'package:app/util/constans/sizes.dart';
import 'package:app/util/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
// main.dart



class OrderDetailScreen extends StatelessWidget{
  
  const OrderDetailScreen({super.key});

  

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    // final user = context.watch<UserProvider>().user;
    // double sum = 0;
    // widget.order!.cart?.forEach((e) {
    //   final price = e['sellPrice'];
    //   final qty = e['qty'];
    //   if (price != null && qty != null) {
    //     sum += double.parse(price.toString()) * double.parse(qty.toString());
    //   }
    // });
    Color getStatusColor(String status) {
      switch (status) {
        case 'Đang chờ xác nhận':
          return const Color.fromARGB(255, 255, 2, 2);
        case 'Đã bàn giao đơn vị vận chuyển':
          return const Color.fromARGB(255, 255, 1, 1);
        case 'Đang giao hàng':
          return const Color.fromARGB(255, 240, 9, 1);
        case 'Đang giao đến bạn':
          return const Color.fromARGB(255, 240, 9, 1);
        case 'Đã giao hàng':
          return Colors.green;
        case 'Đã nhận tại cửa hàng':
          return Colors.green;
        case 'Hủy đơn hàng':
          return const Color.fromARGB(255, 252, 0, 0);
        default:
          return Colors.grey; // Màu mặc định cho các trạng thái khác
      }
    }

    return Scaffold(
      appBar: TAppBar(
        showBackArrow: true,
        title: Text(
          'Thông tin đơn mua',
          style: Theme.of(context).textTheme.headlineSmall,
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              const TRoundedContainer(
                padding: EdgeInsets.all(TSizes.md),
                showBorder: false,
                backgroundColor: Colors.white,
                child: Center(
                  child: Column(
                    children: [
                      // Text(
                      //   'Trạng thái: ${widget.order!.status}',
                      //   style: TextStyle(
                      //     color: _getStatusColor(
                      //         widget.order!.status), // Màu chữ trắng
                      //     fontSize: 16, // Kích thước chữ
                      //     // Thêm các thuộc tính khác cho TextStyle nếu cần
                      //   ),
                      // ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: TSizes.spaceBtwSections / 2),
              TRoundedContainer(
                padding: const EdgeInsets.all(TSizes.md),
                showBorder: true,
                backgroundColor: dark ? TColors.black : TColors.white,
                child: Column(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                          children: [
                            Column(
                              children: [
                                Row(
                                  children: [
                                    const Icon(
                                      Icons.person_2,
                                      color: Colors.grey,
                                      size: 16,
                                    ),
                                    const SizedBox(
                                      width: TSizes.spaceBtwItems / 2,
                                    ),
                                    Text('Thông tin người nhận',
                                        style: Theme.of(context)
                                            .textTheme
                                            .bodyMedium),
                                    const SizedBox(
                                      width: TSizes.spaceBtwItems,
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: TSizes.spaceBtwItems / 2,
                                ),
                                Row(
                                  children: [
                                    Expanded(
                                        child: Row(
                                      children: [
                                        Text(
                                          'Tên người nhận: widget.order!.user!.name.toString()}',
                                          style: Theme.of(context)
                                              .textTheme
                                              .labelLarge,
                                        ),
                                      ],
                                    )),
                                  ],
                                ),
                                const SizedBox(
                                  height: TSizes.spaceBtwItems / 6,
                                ),
                                Row(
                                  children: [
                                    Expanded(
                                        child: Row(
                                      children: [
                                        Text(
                                          'Điện thoại: idget.order!.user!.phoneNumber.toString()}',
                                          style: Theme.of(context)
                                              .textTheme
                                              .labelLarge,
                                        ),
                                      ],
                                    )),
                                  ],
                                ),
                                const SizedBox(
                                  height: TSizes.spaceBtwItems / 6,
                                ),
                                Row(
                                  children: [
                                    Expanded(
                                        child: Row(
                                      children: [
                                        Text(
                                          'Email: widget.order!.user!.email.toString()}',
                                          style: Theme.of(context)
                                              .textTheme
                                              .labelLarge,
                                        ),
                                      ],
                                    )),
                                  ],
                                ),
                                const SizedBox(
                                  height: TSizes.spaceBtwItems / 2,
                                ),
                                Row(
                                  children: [
                                    const Icon(
                                      Icons.location_city,
                                      color: Colors.grey,
                                      size: 16,
                                    ),
                                    const SizedBox(
                                      width: TSizes.spaceBtwItems / 2,
                                    ),
                                    Text('Địa chỉ giao hàng',
                                        style: Theme.of(context)
                                            .textTheme
                                            .bodyMedium),
                                    const SizedBox(
                                      width: TSizes.spaceBtwItems,
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: TSizes.spaceBtwItems / 2,
                                ),
                                Row(
                                  children: [
                                    Expanded(
                                        child: Row(
                                      children: [
                                        Text(
                                          'idget.order!.shippingAddress!.address1.toString()},idget.order!.shippingAddress!.city.toString()}',
                                          style: Theme.of(context)
                                              .textTheme
                                              .labelLarge,
                                        ),
                                      ],
                                    )),
                                  ],
                                ),
                              ],
                            )
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(height: TSizes.spaceBtwSections / 2),
              TRoundedContainer(
                padding: const EdgeInsets.all(TSizes.md),
                showBorder: true,
                backgroundColor: dark ? TColors.black : TColors.white,
                child: Column(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                          children: [
                            Column(
                              children: [
                                Row(
                                  children: [
                                    Text('Mã đơn hàng',
                                        style: Theme.of(context)
                                            .textTheme
                                            .bodyMedium),
                                    const SizedBox(
                                      width: TSizes.spaceBtwItems,
                                    ),
                                    Text('idget.order!.id.toString()}',
                                        style: Theme.of(context)
                                            .textTheme
                                            .bodySmall),
                                  ],
                                ),
                                const SizedBox(
                                  height: TSizes.spaceBtwItems / 2,
                                ),
                                Row(
                                  children: [
                                    Expanded(
                                        child: Row(
                                      children: [
                                        Text(
                                          'Thời gian đặt: ',
                                          style: Theme.of(context)
                                              .textTheme
                                              .labelLarge,
                                        ),
                                      ],
                                    )),
                                  ],
                                ),
                                const SizedBox(
                                  height: TSizes.spaceBtwItems / 6,
                                ),
                                Row(
                                  children: [
                                    Expanded(
                                        child: Row(
                                      children: [
                                        Text(
                                          'Thời gian giao: idget.order != null && widget.order!.paidAt != null ? DateFormaformat(widget.order!.paidAt!.toUtc().add(Duration(hours: 7)))',
                                          style: Theme.of(context)
                                              .textTheme
                                              .labelLarge,
                                        ),
                                      ],
                                    )),
                                  ],
                                ),
                                const SizedBox(
                                  height: TSizes.spaceBtwItems / 6,
                                ),
                                Row(
                                  children: [
                                    Expanded(
                                        child: Row(
                                      children: [
                                        Text(
                                          'Thời gian giao: widget.order != null && widget.order!.deliveredAt != null ? DateFormat(.format(widget.order!.deliveredAt!.toUtc().add(Duration(hours: 7)))',
                                          style: Theme.of(context)
                                              .textTheme
                                              .labelLarge,
                                        ),
                                      ],
                                    )),
                                  ],
                                ),
                                const SizedBox(
                                  height: TSizes.spaceBtwItems / 2,
                                ),
                              ],
                            )
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(height: TSizes.spaceBtwSections / 2),
              TRoundedContainer(
                padding: const EdgeInsets.all(TSizes.md),
                showBorder: true,
                backgroundColor: dark ? TColors.black : TColors.white,
                child: Column(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                          children: [
                            Column(
                              children: [
                                Row(
                                  children: [
                                    Text('Phương thức thanh toán',
                                        style: Theme.of(context)
                                            .textTheme
                                            .bodyMedium),
                                  ],
                                ),
                                const SizedBox(
                                  height: TSizes.spaceBtwItems / 2,
                                ),
                                Row(
                                  children: [
                                    Expanded(
                                        child: Row(
                                      children: [
                                        Text(
                                          ' idget.order!.paymentInfo[',
                                          style: Theme.of(context)
                                              .textTheme
                                              .labelLarge,
                                        ),
                                      ],
                                    )),
                                  ],
                                ),
                                const SizedBox(
                                  height: TSizes.spaceBtwItems / 6,
                                ),
                              ],
                            )
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(height: TSizes.spaceBtwSections / 2),
              TRoundedContainer(
                padding: const EdgeInsets.all(TSizes.md),
                showBorder: true,
                backgroundColor: dark ? TColors.black : TColors.white,
                child: Column(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                          children: [
                            Column(
                              children: [
                                Row(
                                  children: [
                                    Text('Danh sách sản phẩm',
                                        style: Theme.of(context)
                                            .textTheme
                                            .bodyMedium),
                                  ],
                                ),
                                const SizedBox(
                                  height: TSizes.spaceBtwItems / 2,
                                ),
                                Row(
                                  children: [
                                    Expanded(
                                      child: ListView.separated(
                                          shrinkWrap: true,
                                          itemCount: 4,
                                          separatorBuilder: (_, __) =>
                                              const SizedBox(
                                                  height:
                                                      TSizes.spaceBtwSections /
                                                          2),
                                          itemBuilder: (_, index) => Container(

                                              // Điều chỉnh chiều cao của cột
                                              decoration: BoxDecoration(
                                                color: Colors
                                                    .white, // Màu nền của cột
                                                boxShadow: [
                                                  BoxShadow(
                                                    color: Colors.grey.withOpacity(
                                                        0.5), // Màu của đổ bóng
                                                    spreadRadius:
                                                        0, // Bán kính đổ bóng
                                                    blurRadius:
                                                        10, // Độ mờ của đổ bóng
                                                    offset: const Offset(0,
                                                        3), // Vị trí đổ bóng (x, y)
                                                  ),
                                                ],
                                              ),
                                              child: const Column(
                                                children: [
                                                  Row(
                                                    children: [
                                                      // TRoundedImage(
                                                      //   isNetworkImage: true,
                                                      //   imageUrl: widget
                                                      //       .order!
                                                      //       .cart![index]
                                                      //           ['images'][0]
                                                      //           ['url']
                                                      //       .toString(),
                                                      //   width: 120,
                                                      //   height: 120,
                                                      //   padding:
                                                      //       const EdgeInsets
                                                      //           .all(TSizes.sm),
                                                      //   backgroundColor:
                                                      //       THelperFunctions
                                                      //               .isDarkMode(
                                                      //                   context)
                                                      //           ? TColors
                                                      //               .darkerGrey
                                                      //           : TColors.light,
                                                      // ),
                                                      SizedBox(
                                                          width: TSizes
                                                              .spaceBtwItems),
                                                      //title price Size
                                                      Expanded(
                                                        child: Column(
                                                          mainAxisSize:
                                                              MainAxisSize.min,
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          children: [
                                                            Flexible(
                                                              child:
                                                                  ProductTitleText(
                                                                title: 'widget',
                                                                maxLines: 5,
                                                                smallSize: true,
                                                              ),
                                                            ),
                                                            TBrandTitleWithVerifiedIcon(
                                                              title: 'widget'
                                                                 ,
                                                            ),
                                                            SizedBox(
                                                                height: TSizes
                                                                        .spaceBtwInputFields /
                                                                    4),
                                                            // Text(
                                                            //   '${TFormatter.formatCurrency(double.parse(
                                                            //     widget
                                                            //         .order!
                                                            //         .cart![
                                                            //             index][
                                                            //             'sellPrice']
                                                            //         .toString(),
                                                            //   ))} x ${int.parse(
                                                            //     widget
                                                            //         .order!
                                                            //         .cart![
                                                            //             index]
                                                            //             ['qty']
                                                            //         .toString(),
                                                            //   )}',
                                                            //   style: Theme.of(
                                                            //           context)
                                                            //       .textTheme
                                                            //       .labelLarge,
                                                            // ),
                                                            SizedBox(
                                                                height: TSizes
                                                                        .spaceBtwInputFields /
                                                                    2),
                                                          ],
                                                        ),
                                                      )
                                                    ],
                                                  ),
                                                ],
                                              ))),
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: TSizes.spaceBtwItems / 6,
                                ),
                                // Row(
                                //   children: [
                                //     Text(
                                //       'Tổng tiền: ${TFormatter.formatCurrency(double.parse(sum.toString()))}',
                                //       style: Theme.of(context)
                                //               .textTheme
                                //               .bodyLarge
                                //               ?.copyWith(
                                //                 color: Colors.red,
                                //                 fontSize:
                                //                     17, // Điều chỉnh kích thước chữ tại đây
                                //               ) ??
                                //           TextStyle(
                                //               color: Colors.red, fontSize: 18),
                                //     ),
                                //   ],
                                // ),
                                const SizedBox(
                                  height: TSizes.spaceBtwItems,
                                ),
                              ],
                            )
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
      // bottomNavigationBar: Padding(
      //   padding: const EdgeInsets.all(TSizes.defaultSpace),
      //   child: ElevatedButton(
      //     onPressed: () {
      //       // Hành động cho các trạng thái khác
      //       if (widget.order!.status == 'Đang chờ xác nhận') {
      //         // Hành động mua lại

      //         addToWishlist();
      //       }
      //     },
      //     child: Text(
      //       widget.order!.status == 'Đang chờ xác nhận'
      //           ? 'Hủy đơn hàng'
      //           : widget.order!.status == 'Đã giao hàng'
      //               ? 'Hoàn trả đơn hàng'
      //               : widget.order!.status == 'Hủy đơn hàng'
      //                   ? 'Mua lại đơn hàng'
      //                   : '', // Thêm văn bản mặc định hoặc xử lý cho trạng thái không xác định
      //       style: TextStyle(
      //         color: Colors.white,
      //       ),
      //     ),
      //     style: ElevatedButton.styleFrom(
      //       backgroundColor: widget.order!.status == 'Đang chờ xác nhận'
      //           ? Colors
      //               .red // Màu đỏ cho trạng thái 'Đang chờ xác nhận', 'Hủy đơn hàng', và 'Đã giao hàng'
      //           : widget.order!.status == 'Đã giao hàng'
      //               ? Colors.red
      //               : widget.order!.status == 'Hủy đơn hàng'
      //                   ? Color.fromARGB(255, 24, 179, 3)
      //                   : Color.fromARGB(255, 179, 179,
      //                       179), // Màu vàng cho trạng thái 'Đã xác nhận' và 'Đang giao hàng'
      //     ),
      //   ),
      // ),
    );
  }
}
