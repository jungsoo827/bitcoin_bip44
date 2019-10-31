import 'dart:async';
import 'package:bitcoin_bip32/bitcoin_bip32.dart';

import 'accounts.dart';
import 'bip44.dart';

/// Here are defined the different crypto currencies as per https://github.com/satoshilabs/slips/blob/master/slip-0044.md
/// This list is incomplete.

const int bitcoin = coinType;
const int testnets = coinType + 1;
const int litecoin = coinType + 2;
const int ethreum = coinType + 60;
const int ethreumClassic = coinType + 61;
const int icon = coinType + 74;
const int monero = coinType + 128;
const int ripple = coinType + 144;
const int bitcoinCash = coinType + 145;
const int eos = coinType + 194;
const int COIN_TYPE_INDEX_AERGO = 441;
const int aergo = coinType + COIN_TYPE_INDEX_AERGO;

class Coins {
  static List<Coin> coins(Chain chain) => [
        Coin(chain, bitcoin),
        Coin(chain, testnets),
        Coin(chain, litecoin),
        null, null, null, null, null, null, null, null, null, null, // 3 - 12
        null, null, null, null, null, null, null, null, null, null, // 13 - 22
        null, null, null, null, null, null, null, null, null, null, // 23 - 32
        null, null, null, null, null, null, null, null, null, null, // 33 - 42
        null, null, null, null, null, null, null, null, null, null, // 43 - 52
        null, null, null, null, null, null, null, Coin(chain, ethreum), Coin(chain, ethreumClassic), null, // 53 - 62
        null, null, null, null, null, null, null, null, null, null, // 63 - 72
        null, Coin(chain, icon), null, null, null, null, null, null, null, null, // 73 - 82
        null, null, null, null, null, null, null, null, null, null, // 83 - 92
        null, null, null, null, null, null, null, null, null, null, // 93 - 102
        null, null, null, null, null, null, null, null, null, null, // 103 - 112
        null, null, null, null, null, null, null, null, null, null, // 113 - 122
        null, null, null, null, null, Coin(chain, monero), null, null, null, null, // 123 - 132
        null, null, null, null, null, null, null, null, null, null, // 133 - 142
        null, Coin(chain, ripple), Coin(chain, bitcoinCash), null, null, null, null, null, null, null, // 143 - 152
        null, null, null, null, null, null, null, null, null, null, // 153 - 162
        null, null, null, null, null, null, null, null, null, null, // 163 - 172
        null, null, null, null, null, null, null, null, null, null, // 173 - 182
        null, null, null, null, null, null, null, null, null, null, // 183 - 192
        null, Coin(chain, eos), null, null, null, null, null, null, null, null, // 193 - 202
        null, null, null, null, null, null, null, null, null, null, // 203 - 212
        null, null, null, null, null, null, null, null, null, null, // 213 - 222
        null, null, null, null, null, null, null, null, null, null, // 223 - 232
        null, null, null, null, null, null, null, null, null, null, // 233 - 242
        null, null, null, null, null, null, null, null, null, null, // 243 - 252
        null, null, null, null, null, null, null, null, null, null, // 253 - 262
        null, null, null, null, null, null, null, null, null, null, // 263 - 272
        null, null, null, null, null, null, null, null, null, null, // 273 - 282
        null, null, null, null, null, null, null, null, null, null, // 283 - 292
        null, null, null, null, null, null, null, null, null, null, // 293 - 302
        null, null, null, null, null, null, null, null, null, null, // 303 - 312
        null, null, null, null, null, null, null, null, null, null, // 313 - 322
        null, null, null, null, null, null, null, null, null, null, // 323 - 332
        null, null, null, null, null, null, null, null, null, null, // 333 - 342
        null, null, null, null, null, null, null, null, null, null, // 343 - 352
        null, null, null, null, null, null, null, null, null, null, // 353 - 362
        null, null, null, null, null, null, null, null, null, null, // 363 - 372
        null, null, null, null, null, null, null, null, null, null, // 373 - 382
        null, null, null, null, null, null, null, null, null, null, // 383 - 392
        null, null, null, null, null, null, null, null, null, null, // 393 - 402
        null, null, null, null, null, null, null, null, null, null, // 403 - 412
        null, null, null, null, null, null, null, null, null, null, // 413 - 422
        null, null, null, null, null, null, null, null, null, null, // 423 - 432
        null, null, null, null, null, null, null, null, Coin(chain, aergo), null, // 433 - 442
        null, null, null, null, null, null, null, null, null, null, // 443 - 452
        null, null, null, null, null, null, null, null, null, null, // 453 - 462
        null, null, null, null, null, null, null, null, null, null, // 463 - 472
        null, null, null, null, null, null, null, null, null, null, // 473 - 482
        null, null, null, null, null, null, null, null, null, null, // 483 - 492
        null, null, null, null, null, null, null, null, null, null, // 493 - 502
        null, null, null, null, null, null, null, null, null, null, // 503 - 512
        null, null, null, null, null, null, null, null, null, null, // 513 - 522
        null, null, null, null, null, null, null, null, null, null, // 523 - 532
        null, null, null, null, null, null, null, null, null, null, // 533 - 542
        null, null, null, null, null, null, null, null, null, null, // 543 - 552
        null, null, null, null, null, null, null, null, null, null, // 553 - 562
        null, null, null, null, null, null, null, null, null, null, // 563 - 572
        null, null, null, null, null, null, null, null, null, null, // 573 - 582
        null, null, null, null, null, null, null, null, null, null, // 583 - 592
        null, null, null, null, null, null, null, null, null, null, // 593 - 602

  ];
}

class Coin {
  final Chain chain;
  final int index;

  Coin(this.chain, this.index);

  String get path => "m/${forHumans(purpose)}/${forHumans(index)}";

  Future<List<Account>> accounts() async {
    List<Account> accounts = [];

    Account next = Account(this, 0, changeExternal);
    while (await next.isUsed) {
      accounts.add(next);
      next = next.next();
    }

    return accounts;
  }
}
