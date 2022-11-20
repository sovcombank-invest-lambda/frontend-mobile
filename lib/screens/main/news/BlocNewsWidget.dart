import 'package:flutter/material.dart';

import '../../../common_setup/Assets.dart';

class BlockNewsWidget extends StatefulWidget {
  const BlockNewsWidget({Key? key}) : super(key: key);

  @override
  State<BlockNewsWidget> createState() => _BlockNewsWidgetState();
}

class _BlockNewsWidgetState extends State<BlockNewsWidget> {

  @override
  Widget build(BuildContext context) => Container(
      height: 400,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20)
      ),
      child: Stack(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Image.asset(
                A.assetsSovcombankBackground,
                width: MediaQuery.of(context).size.width - 32,
                fit: BoxFit.fill
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(12),
            child: Column(
              children: [
                Row(
                    children: [
                      Image.asset(A.assetsChina),
                      const SizedBox(width: 13),
                      Flexible(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text(
                              'Юань (CNY)',
                              style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 17,
                                  color: Colors.white
                              ),
                            ),
                            Text(
                              "Прогнозируемая доходность: 2,3% за 1 неделю",
                              style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 15,
                                  color: Color(0xffA3A5A7)
                              ),
                            )
                          ],
                        ),
                      ),
                      const Spacer(),
                      const Text(
                          "НИЗКИЕ\nРИСКИ",
                          textAlign: TextAlign.right,
                          style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 11,
                              color: Color(0xffA3A5A7)
                          )
                      )
                    ]
                ),
                const Spacer(),
                const Text(
                    "Банковский сектор Китая растет вместе\nс восстановлением экономики",
                    style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 24,
                        color: Colors.white
                    )
                ),
                const SizedBox(height: 4),
                Row(
                  children: [
                    Container(
                        height: 8,
                        width: 8,
                        decoration: BoxDecoration(
                            color: const Color(0xff00C960),
                            borderRadius: BorderRadius.circular(90)
                        )
                    ),
                    const SizedBox(width: 4),
                    const Text(
                        "Сегодня, 15:30",
                        style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 13,
                            color: Color(0xffA3A5A7)
                        )
                    ),
                    const Spacer(),
                    const Icon(
                      Icons.bookmark_border,
                      color: Color(0xffA3A5A7),
                    )
                  ],
                )
              ],
            ),
          )
        ],
      )
  );
}