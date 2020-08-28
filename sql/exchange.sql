/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50645
Source Host           : localhost:3306
Source Database       : loveapp_databases

Target Server Type    : MYSQL
Target Server Version : 50645
File Encoding         : 65001

Date: 2020-08-28 23:13:31
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for exchange
-- ----------------------------
DROP TABLE IF EXISTS `exchange`;
CREATE TABLE `exchange` (
  `name` varchar(20) DEFAULT NULL,
  `exchange` varchar(30) DEFAULT NULL,
  `getdate` varchar(30) DEFAULT NULL,
  `hashcode` varchar(32) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of exchange
-- ----------------------------
INSERT INTO `exchange` VALUES ('zar', '0.06009293', '2020-08-28 10:53:46', '');
INSERT INTO `exchange` VALUES ('nok', '0.11350828', '2020-08-28 10:53:46', '');
INSERT INTO `exchange` VALUES ('cad', '0.76306287', '2020-08-28 10:53:46', '');
INSERT INTO `exchange` VALUES ('btc', '11427.27', '2020-08-28 10:53:46', '');
INSERT INTO `exchange` VALUES ('xrp', '0.2696388', '2020-08-28 10:53:46', '');
INSERT INTO `exchange` VALUES ('chf', '1.10533634', '2020-08-28 10:53:46', '');
INSERT INTO `exchange` VALUES ('huf', '0.00335601', '2020-08-28 10:53:46', '');
INSERT INTO `exchange` VALUES ('dkk', '0.15978719', '2020-08-28 10:53:46', '');
INSERT INTO `exchange` VALUES ('mxn', '0.04575241', '2020-08-28 10:53:46', '');
INSERT INTO `exchange` VALUES ('jpy', '0.00949343', '2020-08-28 10:53:46', '');
INSERT INTO `exchange` VALUES ('idr', '6.869E-5', '2020-08-28 10:53:46', '');
INSERT INTO `exchange` VALUES ('myr', '0.24006722', '2020-08-28 10:53:46', '');
INSERT INTO `exchange` VALUES ('clp', '0.00128222', '2020-08-28 10:53:46', '');
INSERT INTO `exchange` VALUES ('sek', '0.11572599', '2020-08-28 10:53:46', '');
INSERT INTO `exchange` VALUES ('ltc', '57.56', '2020-08-28 10:53:46', '');
INSERT INTO `exchange` VALUES ('krw', '8.457E-4', '2020-08-28 10:53:46', '');
INSERT INTO `exchange` VALUES ('sgd', '0.73571282', '2020-08-28 10:53:46', '');
INSERT INTO `exchange` VALUES ('eth', '391.14', '2020-08-28 10:53:46', '');
INSERT INTO `exchange` VALUES ('brl', '0.18351318', '2020-08-28 10:53:46', '');
INSERT INTO `exchange` VALUES ('eur', '1.18931661', '2020-08-28 10:53:46', '');
INSERT INTO `exchange` VALUES ('try', '0.13633451', '2020-08-28 10:53:46', '');
INSERT INTO `exchange` VALUES ('twd', '0.03406807', '2020-08-28 10:53:46', '');
INSERT INTO `exchange` VALUES ('cny', '0.1457', '2020-08-28 10:53:46', '');
INSERT INTO `exchange` VALUES ('hkd', '0.12902643', '2020-08-28 10:53:46', '');
INSERT INTO `exchange` VALUES ('php', '0.02067952', '2020-08-28 10:53:46', '');
INSERT INTO `exchange` VALUES ('nzd', '0.67306618', '2020-08-28 10:53:46', '');
INSERT INTO `exchange` VALUES ('thb', '0.03211304', '2020-08-28 10:53:46', '');
INSERT INTO `exchange` VALUES ('inr', '0.01366093', '2020-08-28 10:53:46', '');
INSERT INTO `exchange` VALUES ('ils', '0.29734029', '2020-08-28 10:53:46', '');
INSERT INTO `exchange` VALUES ('pkr', '0.00597761', '2020-08-28 10:53:46', '');
INSERT INTO `exchange` VALUES ('usd', '1', '2020-08-28 10:53:46', '');
INSERT INTO `exchange` VALUES ('bch', '267.96', '2020-08-28 10:53:46', '');
INSERT INTO `exchange` VALUES ('aud', '0.73424997', '2020-08-28 10:53:46', '');
INSERT INTO `exchange` VALUES ('gbp', '1.33154728', '2020-08-28 10:53:46', '');
INSERT INTO `exchange` VALUES ('pln', '0.27085502', '2020-08-28 10:53:46', '');
INSERT INTO `exchange` VALUES ('rub', '0.01345252', '2020-08-28 10:53:46', '');
INSERT INTO `exchange` VALUES ('timestamp', '1598626374', '2020-08-28 10:53:46', '');
INSERT INTO `exchange` VALUES ('czk', '0.04549321', '2020-08-28 10:53:46', '');
INSERT INTO `exchange` VALUES ('usdt', '1.0008', '2020-08-28 10:53:46', '');
INSERT INTO `exchange` VALUES ('vtc', '0.287054', '2020-08-28 10:53:46', '');
INSERT INTO `exchange` VALUES ('nebl', '0.640608', '2020-08-28 10:53:46', '');
INSERT INTO `exchange` VALUES ('sys', '0.093406', '2020-08-28 10:53:46', '');
INSERT INTO `exchange` VALUES ('bchsv', '187.78', '2020-08-28 10:53:46', '');
INSERT INTO `exchange` VALUES ('dgb', '0.02726025', '2020-08-28 10:53:46', '');
INSERT INTO `exchange` VALUES ('xzc', '6.19', '2020-08-28 10:53:46', '');
INSERT INTO `exchange` VALUES ('nmc', '0.469323', '2020-08-28 10:53:46', '');
INSERT INTO `exchange` VALUES ('game', '0.01326231', '2020-08-28 10:53:46', '');
INSERT INTO `exchange` VALUES ('grs', '0.227515', '2020-08-28 10:53:46', '');
INSERT INTO `exchange` VALUES ('btcp', '0.119023', '2020-08-28 10:53:46', '');
INSERT INTO `exchange` VALUES ('doge', '0.00323998', '2020-08-28 10:53:46', '');
INSERT INTO `exchange` VALUES ('mnx', '0.02817325', '2020-08-28 10:53:46', '');
INSERT INTO `exchange` VALUES ('lcc', '0.00342639', '2020-08-28 10:53:46', '');
INSERT INTO `exchange` VALUES ('btm', '0.108088', '2020-08-28 10:53:46', '');
INSERT INTO `exchange` VALUES ('etc', '6.57', '2020-08-28 10:53:46', '');
INSERT INTO `exchange` VALUES ('zen', '8.49', '2020-08-28 10:53:46', '');
INSERT INTO `exchange` VALUES ('zcash', '75.03', '2020-08-28 10:53:46', '');
INSERT INTO `exchange` VALUES ('flo', '0.03852469', '2020-08-28 10:53:46', '');
INSERT INTO `exchange` VALUES ('bci', '0.00160243', '2020-08-28 10:53:46', '');
INSERT INTO `exchange` VALUES ('rdd', '0.00125607', '2020-08-28 10:53:46', '');
INSERT INTO `exchange` VALUES ('gin', '0.00158314', '2020-08-28 10:53:46', '');
INSERT INTO `exchange` VALUES ('mona', '1.74', '2020-08-28 10:53:46', '');
INSERT INTO `exchange` VALUES ('blk', '0.03846954', '2020-08-28 10:53:46', '');
INSERT INTO `exchange` VALUES ('ppc', '0.281947', '2020-08-28 10:53:46', '');
INSERT INTO `exchange` VALUES ('ftc', '0.00953855', '2020-08-28 10:53:46', '');
INSERT INTO `exchange` VALUES ('btg', '9.87', '2020-08-28 10:53:46', '');
INSERT INTO `exchange` VALUES ('via', '0.261351', '2020-08-28 10:53:46', '');
INSERT INTO `exchange` VALUES ('nrg', '1.64', '2020-08-28 10:53:46', '');
INSERT INTO `exchange` VALUES ('dash', '84.78', '2020-08-28 10:53:46', '');
INSERT INTO `exchange` VALUES ('zcl', '0.226206', '2020-08-28 10:53:46', '');
INSERT INTO `exchange` VALUES ('crw', '0.080474', '2020-08-28 10:53:46', '');
INSERT INTO `exchange` VALUES ('xmy', '0.00150423', '2020-08-28 10:53:46', '');
INSERT INTO `exchange` VALUES ('xvg', '0.00656202', '2020-08-28 10:53:46', '');
INSERT INTO `exchange` VALUES ('pivx', '0.494796', '2020-08-28 10:53:46', '');
INSERT INTO `exchange` VALUES ('rvn', '0.02185426', '2020-08-28 10:53:46', '');
INSERT INTO `exchange` VALUES ('nlg', '0.00914744', '2020-08-28 10:53:46', '');
INSERT INTO `exchange` VALUES ('smart', '0.00537566', '2020-08-28 10:53:46', '');
INSERT INTO `exchange` VALUES ('clam', '1.24', '2020-08-28 10:53:46', '');
INSERT INTO `exchange` VALUES ('eif', '0.013', '2020-08-28 10:53:46', '');
INSERT INTO `exchange` VALUES ('grin', '0.502433', '2020-08-28 10:53:46', '');
INSERT INTO `exchange` VALUES ('wgr', '0.04246631', '2020-08-28 10:53:46', '');
INSERT INTO `exchange` VALUES ('xwc', '0.218886', '2020-08-28 10:53:46', '');
INSERT INTO `exchange` VALUES ('bca', '0.430701', '2020-08-28 10:53:46', '');
INSERT INTO `exchange` VALUES ('lux', '0.073249', '2020-08-28 10:53:46', '');
INSERT INTO `exchange` VALUES ('xmr', '90.62', '2020-08-28 10:53:46', '');
INSERT INTO `exchange` VALUES ('vitae', '2.86', '2020-08-28 10:53:46', '');
INSERT INTO `exchange` VALUES ('nas', '0.539539', '2020-08-28 10:53:46', '');
INSERT INTO `exchange` VALUES ('nav', '0.172422', '2020-08-28 10:53:46', '');
INSERT INTO `exchange` VALUES ('trx', '0.00898343', '2020-08-28 10:53:46', '');
INSERT INTO `exchange` VALUES ('neo', '18.29', '2020-08-28 10:53:46', '');
INSERT INTO `exchange` VALUES ('emc', '0.050583', '2020-08-28 10:53:46', '');
INSERT INTO `exchange` VALUES ('ut', '0.02091559', '2020-08-28 10:53:46', '');
INSERT INTO `exchange` VALUES ('ont', '0.835951', '2020-08-28 10:53:46', '');
INSERT INTO `exchange` VALUES ('bcd', '0.88697', '2020-08-28 10:53:46', '');
INSERT INTO `exchange` VALUES ('emc2', '0.055098', '2020-08-28 10:53:46', '');
INSERT INTO `exchange` VALUES ('block', '1.56', '2020-08-28 10:53:46', '');
INSERT INTO `exchange` VALUES ('mlm', '7.982E-5', '2020-08-28 10:53:46', '');
INSERT INTO `exchange` VALUES ('tmc', '2.8284E-4', '2020-08-28 10:53:46', '');
INSERT INTO `exchange` VALUES ('part', '0.725447', '2020-08-28 10:53:46', '');
INSERT INTO `exchange` VALUES ('xsn', '0.290217', '2020-08-28 10:53:46', '');
INSERT INTO `exchange` VALUES ('strat', '0.6065', '2020-08-28 10:53:46', '');
INSERT INTO `exchange` VALUES ('kmd', '0.773353', '2020-08-28 10:53:46', '');
INSERT INTO `exchange` VALUES ('bay', '0.245205', '2020-08-28 10:53:46', '');
INSERT INTO `exchange` VALUES ('uno', '73.58', '2020-08-28 10:53:46', '');
INSERT INTO `exchange` VALUES ('iost', '0.00646195', '2020-08-28 10:53:46', '');
INSERT INTO `exchange` VALUES ('rp', '2.81', '2020-08-28 10:53:46', '');
INSERT INTO `exchange` VALUES ('ugas', '0.02494328', '2020-08-28 10:53:46', '');
INSERT INTO `exchange` VALUES ('ugasbmnrl', '0.02494328', '2020-08-28 10:53:46', '');
INSERT INTO `exchange` VALUES ('ugasbmupc', '0.02494328', '2020-08-28 10:53:46', '');
INSERT INTO `exchange` VALUES ('ugasbmtpr', '0.02494328', '2020-08-28 10:53:46', '');
INSERT INTO `exchange` VALUES ('sc', '0.00439187', '2020-08-28 10:53:46', '');
INSERT INTO `exchange` VALUES ('beam', '0.463217', '2020-08-28 10:53:46', '');
INSERT INTO `exchange` VALUES ('scc', '0.03159795', '2020-08-28 10:53:46', '');
INSERT INTO `exchange` VALUES ('eosc', '0.00236493', '2020-08-28 10:53:46', '');
INSERT INTO `exchange` VALUES ('wan', '0.375499', '2020-08-28 10:53:46', '');
INSERT INTO `exchange` VALUES ('pi', '0.01440729', '2020-08-28 10:53:46', '');
INSERT INTO `exchange` VALUES ('hc', '1.56', '2020-08-28 10:53:46', '');
INSERT INTO `exchange` VALUES ('dcr', '17.13', '2020-08-28 10:53:46', '');
INSERT INTO `exchange` VALUES ('bcc', '0.5127', '2020-08-28 10:53:46', '');
INSERT INTO `exchange` VALUES ('onion', '0.112627', '2020-08-28 10:53:46', '');
INSERT INTO `exchange` VALUES ('phr', '0.252274', '2020-08-28 10:53:46', '');
INSERT INTO `exchange` VALUES ('xrc', '4.25', '2020-08-28 10:53:46', '');
INSERT INTO `exchange` VALUES ('btc2', '0.571104', '2020-08-28 10:53:46', '');
INSERT INTO `exchange` VALUES ('gas', '2.13', '2020-08-28 10:53:46', '');
INSERT INTO `exchange` VALUES ('mnt', '3.5082E-4', '2020-08-28 10:53:46', '');
INSERT INTO `exchange` VALUES ('bmd', '1', '2020-08-28 10:53:46', '');
INSERT INTO `exchange` VALUES ('aed', '0.27226079', '2020-08-28 10:53:46', '');
INSERT INTO `exchange` VALUES ('vnd', '4.311E-5', '2020-08-28 10:53:46', '');
INSERT INTO `exchange` VALUES ('nio', '0.02868398', '2020-08-28 10:53:46', '');
INSERT INTO `exchange` VALUES ('bhd', '5.41', '2020-08-28 10:53:46', '');
INSERT INTO `exchange` VALUES ('dop', '0.01711897', '2020-08-28 10:53:46', '');
INSERT INTO `exchange` VALUES ('mur', '0.02515091', '2020-08-28 10:53:46', '');
INSERT INTO `exchange` VALUES ('bdt', '0.01178734', '2020-08-28 10:53:46', '');
INSERT INTO `exchange` VALUES ('dzd', '0.00781031', '2020-08-28 10:53:46', '');
INSERT INTO `exchange` VALUES ('kwd', '3.27227272', '2020-08-28 10:53:46', '');
INSERT INTO `exchange` VALUES ('uzs', '9.735E-5', '2020-08-28 10:53:46', '');
INSERT INTO `exchange` VALUES ('bam', '0.6042088', '2020-08-28 10:53:46', '');
INSERT INTO `exchange` VALUES ('ssp', '0.00767695', '2020-08-28 10:53:46', '');
INSERT INTO `exchange` VALUES ('irr', '2.375E-5', '2020-08-28 10:53:46', '');
INSERT INTO `exchange` VALUES ('qar', '0.27463029', '2020-08-28 10:53:46', '');
INSERT INTO `exchange` VALUES ('mdl', '0.06025465', '2020-08-28 10:53:46', '');
INSERT INTO `exchange` VALUES ('ghs', '0.17284916', '2020-08-28 10:53:46', '');
INSERT INTO `exchange` VALUES ('sar', '0.26659337', '2020-08-28 10:53:46', '');
INSERT INTO `exchange` VALUES ('gtq', '0.12969134', '2020-08-28 10:53:46', '');
INSERT INTO `exchange` VALUES ('mad', '0.10916348', '2020-08-28 10:53:46', '');
INSERT INTO `exchange` VALUES ('mkd', '0.01917942', '2020-08-28 10:53:46', '');
INSERT INTO `exchange` VALUES ('isk', '0.00727273', '2020-08-28 10:53:46', '');
INSERT INTO `exchange` VALUES ('ngn', '0.00258091', '2020-08-28 10:53:46', '');
INSERT INTO `exchange` VALUES ('omr', '2.59619554', '2020-08-28 10:53:46', '');
INSERT INTO `exchange` VALUES ('ugx', '2.7201E-4', '2020-08-28 10:53:46', '');
INSERT INTO `exchange` VALUES ('all', '0.00951933', '2020-08-28 10:53:46', '');
INSERT INTO `exchange` VALUES ('bgn', '0.60774794', '2020-08-28 10:53:46', '');
INSERT INTO `exchange` VALUES ('cop', '2.6581E-4', '2020-08-28 10:53:46', '');
INSERT INTO `exchange` VALUES ('ttd', '0.14754035', '2020-08-28 10:53:46', '');
INSERT INTO `exchange` VALUES ('npr', '0.00847994', '2020-08-28 10:53:46', '');
INSERT INTO `exchange` VALUES ('azn', '0.58737151', '2020-08-28 10:53:46', '');
INSERT INTO `exchange` VALUES ('jmd', '0.00668373', '2020-08-28 10:53:46', '');
INSERT INTO `exchange` VALUES ('mmk', '7.4538E-4', '2020-08-28 10:53:46', '');
INSERT INTO `exchange` VALUES ('byn', '0.37449116', '2020-08-28 10:53:46', '');
INSERT INTO `exchange` VALUES ('rsd', '0.01012043', '2020-08-28 10:53:46', '');
INSERT INTO `exchange` VALUES ('hnl', '0.04054721', '2020-08-28 10:53:46', '');
INSERT INTO `exchange` VALUES ('jod', '1.41043724', '2020-08-28 10:53:46', '');
INSERT INTO `exchange` VALUES ('pen', '0.28055929', '2020-08-28 10:53:46', '');
INSERT INTO `exchange` VALUES ('iqd', '8.3759E-4', '2020-08-28 10:53:46', '');
INSERT INTO `exchange` VALUES ('ars', '0.0135141', '2020-08-28 10:53:46', '');
INSERT INTO `exchange` VALUES ('ves', '3.29E-6', '2020-08-28 10:53:46', '');
INSERT INTO `exchange` VALUES ('pab', '1', '2020-08-28 10:53:46', '');
INSERT INTO `exchange` VALUES ('bob', '0.14491617', '2020-08-28 10:53:46', '');
INSERT INTO `exchange` VALUES ('kzt', '0.00237884', '2020-08-28 10:53:46', '');
INSERT INTO `exchange` VALUES ('uyu', '0.02344177', '2020-08-28 10:53:46', '');
INSERT INTO `exchange` VALUES ('amd', '0.00207634', '2020-08-28 10:53:46', '');
INSERT INTO `exchange` VALUES ('cup', '0.03883495', '2020-08-28 10:53:46', '');
INSERT INTO `exchange` VALUES ('kes', '0.00924471', '2020-08-28 10:53:46', '');
INSERT INTO `exchange` VALUES ('tnd', '0.36638975', '2020-08-28 10:53:46', '');
INSERT INTO `exchange` VALUES ('hrk', '0.1579021', '2020-08-28 10:53:46', '');
INSERT INTO `exchange` VALUES ('uah', '0.03638093', '2020-08-28 10:53:46', '');
INSERT INTO `exchange` VALUES ('egp', '0.06302031', '2020-08-28 10:53:46', '');
INSERT INTO `exchange` VALUES ('nad', '0.05763689', '2020-08-28 10:53:46', '');
INSERT INTO `exchange` VALUES ('lbp', '6.6125E-4', '2020-08-28 10:53:46', '');
INSERT INTO `exchange` VALUES ('ron', '0.24571232', '2020-08-28 10:53:46', '');
INSERT INTO `exchange` VALUES ('kgs', '0.01280629', '2020-08-28 10:53:46', '');
INSERT INTO `exchange` VALUES ('gel', '0.32371574', '2020-08-28 10:53:46', '');
INSERT INTO `exchange` VALUES ('crc', '0.00167953', '2020-08-28 10:53:46', '');
INSERT INTO `exchange` VALUES ('khr', '2.4427E-4', '2020-08-28 10:53:46', '');
INSERT INTO `exchange` VALUES ('lkr', '0.00536726', '2020-08-28 10:53:46', '');
INSERT INTO `exchange` VALUES ('ipc', '0.01885316', '2020-08-28 10:53:46', '');
INSERT INTO `exchange` VALUES ('sls', '18.3', '2020-08-28 10:53:46', '');
INSERT INTO `exchange` VALUES ('glc', '0.00423743', '2020-08-28 10:53:46', '');
INSERT INTO `exchange` VALUES ('mbc', '2.719E-5', '2020-08-28 10:53:46', '');
INSERT INTO `exchange` VALUES ('dmd', '0.491303', '2020-08-28 10:53:46', '');
INSERT INTO `exchange` VALUES ('cnx', '1.73', '2020-08-28 10:53:46', '');
INSERT INTO `exchange` VALUES ('moon', '1.375E-5', '2020-08-28 10:53:46', '');
INSERT INTO `exchange` VALUES ('colx', '2.668E-4', '2020-08-28 10:53:46', '');
INSERT INTO `exchange` VALUES ('axe', '0.176592', '2020-08-28 10:53:46', '');
INSERT INTO `exchange` VALUES ('cann', '6.8631E-4', '2020-08-28 10:53:46', '');
INSERT INTO `exchange` VALUES ('btx', '0.291599', '2020-08-28 10:53:46', '');
INSERT INTO `exchange` VALUES ('nvc', '0.217544', '2020-08-28 10:53:46', '');
INSERT INTO `exchange` VALUES ('nix', '0.133165', '2020-08-28 10:53:46', '');
INSERT INTO `exchange` VALUES ('eos', '2.784', '2020-08-28 10:53:46', '');
INSERT INTO `exchange` VALUES ('ckb', '0.0069282', '2020-08-28 10:53:46', '');
INSERT INTO `exchange` VALUES ('bitg', '0.20291', '2020-08-28 10:53:46', '');
INSERT INTO `exchange` VALUES ('usdc', '0.9975', '2020-08-28 10:53:46', '');
INSERT INTO `exchange` VALUES ('susd', '1', '2020-08-28 10:53:46', '');
INSERT INTO `exchange` VALUES ('gusd', '0.998872', '2020-08-28 10:53:46', '');
INSERT INTO `exchange` VALUES ('pax', '0.999389', '2020-08-28 10:53:46', '');
INSERT INTO `exchange` VALUES ('tusd', '0.999042', '2020-08-28 10:53:46', '');
INSERT INTO `exchange` VALUES ('btccny1', '78455.68', '2020-08-28 10:53:46', '');
INSERT INTO `exchange` VALUES ('btccny2', '78614.9', '2020-08-28 10:53:46', '');
INSERT INTO `exchange` VALUES ('ethcny1', '2681.66', '2020-08-28 10:53:46', '');
INSERT INTO `exchange` VALUES ('ethcny2', '2688.47', '2020-08-28 10:53:46', '');
INSERT INTO `exchange` VALUES ('usdtcny1', '6.86', '2020-08-28 10:53:46', '');
INSERT INTO `exchange` VALUES ('usdtcny2', '6.89', '2020-08-28 10:53:46', '');
INSERT INTO `exchange` VALUES ('usdtcny3', '6.89', '2020-08-28 10:53:46', '');
INSERT INTO `exchange` VALUES ('btccny3', '78748.86', '2020-08-28 10:53:46', '');
INSERT INTO `exchange` VALUES ('ethcny3', '2711.4', '2020-08-28 10:53:46', '');
INSERT INTO `exchange` VALUES ('usdccny1', '6.8485', '2020-08-28 10:53:46', '');
INSERT INTO `exchange` VALUES ('ada', '0.109618', '2020-08-28 10:53:46', '');
INSERT INTO `exchange` VALUES ('atom', '7.55', '2020-08-28 10:53:46', '');
INSERT INTO `exchange` VALUES ('em', '0.00501734', '2020-08-28 10:53:46', '');
INSERT INTO `exchange` VALUES ('bvb', '0.07', '2020-08-28 10:53:46', '');
INSERT INTO `exchange` VALUES ('road', '0.07', '2020-08-28 10:53:46', '');
INSERT INTO `exchange` VALUES ('bvbcny1', '0.35', '2020-08-28 10:53:46', '');
INSERT INTO `exchange` VALUES ('roadcny1', '0.35', '2020-08-28 10:53:46', '');
