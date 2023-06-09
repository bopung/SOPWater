import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../constants/constants.dart';
import '../models/dummy_bundle_model.dart';
import '../routes/app_routes.dart';
import 'network_image.dart';

class BundleTileSquare extends StatelessWidget {
  const BundleTileSquare({
    Key? key,
    required this.data,
  }) : super(key: key);

  final BundleModel data;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: AppDefaults.padding / 2),
      child: Material(
        color: AppColors.scaffoldBackground,
        borderRadius: AppDefaults.borderRadius,
        child: InkWell(
          onTap: () {
            Navigator.pushNamed(context, AppRoutes.bundleProduct);
          },
          borderRadius: AppDefaults.borderRadius,
          child: Container(
            width: MediaQuery.of(context).size.width * 0.4,
            padding: const EdgeInsets.all(AppDefaults.padding),
            decoration: BoxDecoration(
              border: Border.all(width: 0.1, color: AppColors.placeholder),
              borderRadius: AppDefaults.borderRadius,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Align(
                  alignment: Alignment.center,
                  child: SizedBox(
                    width: 85,
                    height: 85,
                    child: AspectRatio(
                      aspectRatio: 1 / 1,
                      child: NetworkImageWithLoader(
                        data.cover,
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 8),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      data.name,
                      style: Theme.of(context)
                          .textTheme
                          .titleLarge
                          ?.copyWith(color: Colors.black),
                      maxLines: 2,
                    ),
                    Text(
                      '${data.itemNames.join(',')} ...',
                    ),
                  ],
                ),
                const SizedBox(height: 8),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      'Rp${data.price.toInt()}K',
                      style: Theme.of(context)
                          .textTheme
                          .titleLarge
                          ?.copyWith(color: Colors.black),
                    ),
                    const SizedBox(
                      width: 3,
                    ),
                    Text(
                      'Rp${data.mainPrice}K',
                      style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                            decoration: TextDecoration.lineThrough,
                          ),
                    ),
                    const Spacer(),
                    IconButton(
                      onPressed: () {},
                      icon: SvgPicture.asset(AppIcons.addRounded),
                      padding: EdgeInsets.zero,
                      constraints: const BoxConstraints(
                        maxHeight: 24,
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
