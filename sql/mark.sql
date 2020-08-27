/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50645
Source Host           : localhost:3306
Source Database       : loveapp_databases

Target Server Type    : MYSQL
Target Server Version : 50645
File Encoding         : 65001

Date: 2020-08-27 23:35:18
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for mark
-- ----------------------------
DROP TABLE IF EXISTS `mark`;
CREATE TABLE `mark` (
  `name` varchar(20) DEFAULT NULL,
  `exchange` varchar(30) DEFAULT NULL,
  `getdate` varchar(30) DEFAULT NULL,
  `hashcode` varchar(32) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of mark
-- ----------------------------
INSERT INTO `mark` VALUES ('zar', '0.05867667', '2020-08-27 11:24:14', '');
INSERT INTO `mark` VALUES ('nok', '0.11187507', '2020-08-27 11:24:14', '');
INSERT INTO `mark` VALUES ('cad', '0.76068361', '2020-08-27 11:24:14', '');
INSERT INTO `mark` VALUES ('btc', '11318.1', '2020-08-27 11:24:14', '');
INSERT INTO `mark` VALUES ('xrp', '0.26521412', '2020-08-27 11:24:14', '');
INSERT INTO `mark` VALUES ('chf', '1.09933238', '2020-08-27 11:24:14', '');
INSERT INTO `mark` VALUES ('huf', '0.00330519', '2020-08-27 11:24:14', '');
INSERT INTO `mark` VALUES ('dkk', '0.15838822', '2020-08-27 11:24:14', '');
INSERT INTO `mark` VALUES ('mxn', '0.04524822', '2020-08-27 11:24:14', '');
INSERT INTO `mark` VALUES ('jpy', '0.00939252', '2020-08-27 11:24:14', '');
INSERT INTO `mark` VALUES ('idr', '6.81E-5', '2020-08-27 11:24:14', '');
INSERT INTO `mark` VALUES ('myr', '0.23966453', '2020-08-27 11:24:14', '');
INSERT INTO `mark` VALUES ('clp', '0.00127194', '2020-08-27 11:24:14', '');
INSERT INTO `mark` VALUES ('sek', '0.11429375', '2020-08-27 11:24:14', '');
INSERT INTO `mark` VALUES ('ltc', '56.59', '2020-08-27 11:24:14', '');
INSERT INTO `mark` VALUES ('krw', '8.424E-4', '2020-08-27 11:24:14', '');
INSERT INTO `mark` VALUES ('sgd', '0.73137641', '2020-08-27 11:24:14', '');
INSERT INTO `mark` VALUES ('eth', '384.21', '2020-08-27 11:24:14', '');
INSERT INTO `mark` VALUES ('brl', '0.17820865', '2020-08-27 11:24:14', '');
INSERT INTO `mark` VALUES ('eur', '1.17885048', '2020-08-27 11:24:14', '');
INSERT INTO `mark` VALUES ('try', '0.13564748', '2020-08-27 11:24:14', '');
INSERT INTO `mark` VALUES ('twd', '0.03403444', '2020-08-27 11:24:14', '');
INSERT INTO `mark` VALUES ('cny', '0.1462', '2020-08-27 11:24:14', '');
INSERT INTO `mark` VALUES ('hkd', '0.12903126', '2020-08-27 11:24:14', '');
INSERT INTO `mark` VALUES ('php', '0.02058699', '2020-08-27 11:24:14', '');
INSERT INTO `mark` VALUES ('nzd', '0.66120511', '2020-08-27 11:24:14', '');
INSERT INTO `mark` VALUES ('thb', '0.0319596', '2020-08-27 11:24:14', '');
INSERT INTO `mark` VALUES ('inr', '0.01353044', '2020-08-27 11:24:14', '');
INSERT INTO `mark` VALUES ('ils', '0.29617081', '2020-08-27 11:24:14', '');
INSERT INTO `mark` VALUES ('pkr', '0.00594302', '2020-08-27 11:24:14', '');
INSERT INTO `mark` VALUES ('usd', '1', '2020-08-27 11:24:14', '');
INSERT INTO `mark` VALUES ('bch', '267.87', '2020-08-27 11:24:14', '');
INSERT INTO `mark` VALUES ('aud', '0.72302293', '2020-08-27 11:24:14', '');
INSERT INTO `mark` VALUES ('gbp', '1.31880711', '2020-08-27 11:24:14', '');
INSERT INTO `mark` VALUES ('pln', '0.26721356', '2020-08-27 11:24:14', '');
INSERT INTO `mark` VALUES ('rub', '0.0132944', '2020-08-27 11:24:14', '');
INSERT INTO `mark` VALUES ('timestamp', '1598541580', '2020-08-27 11:24:14', '');
INSERT INTO `mark` VALUES ('czk', '0.04482087', '2020-08-27 11:24:14', '');
INSERT INTO `mark` VALUES ('usdt', '1.0002', '2020-08-27 11:24:14', '');
INSERT INTO `mark` VALUES ('vtc', '0.298409', '2020-08-27 11:24:14', '');
INSERT INTO `mark` VALUES ('nebl', '0.625538', '2020-08-27 11:24:14', '');
INSERT INTO `mark` VALUES ('sys', '0.085628', '2020-08-27 11:24:14', '');
INSERT INTO `mark` VALUES ('bchsv', '188.39', '2020-08-27 11:24:14', '');
INSERT INTO `mark` VALUES ('dgb', '0.02736462', '2020-08-27 11:24:14', '');
INSERT INTO `mark` VALUES ('xzc', '5.89', '2020-08-27 11:24:14', '');
INSERT INTO `mark` VALUES ('nmc', '0.475045', '2020-08-27 11:24:14', '');
INSERT INTO `mark` VALUES ('game', '0.077444', '2020-08-27 11:24:14', '');
INSERT INTO `mark` VALUES ('grs', '0.223113', '2020-08-27 11:24:14', '');
INSERT INTO `mark` VALUES ('btcp', '0.118223', '2020-08-27 11:24:14', '');
INSERT INTO `mark` VALUES ('doge', '0.00323266', '2020-08-27 11:24:14', '');
INSERT INTO `mark` VALUES ('mnx', '0.02817325', '2020-08-27 11:24:14', '');
INSERT INTO `mark` VALUES ('lcc', '0.00362114', '2020-08-27 11:24:14', '');
INSERT INTO `mark` VALUES ('btm', '0.103821', '2020-08-27 11:24:14', '');
INSERT INTO `mark` VALUES ('etc', '6.51', '2020-08-27 11:24:14', '');
INSERT INTO `mark` VALUES ('zen', '8.49', '2020-08-27 11:24:14', '');
INSERT INTO `mark` VALUES ('zcash', '72.59', '2020-08-27 11:24:14', '');
INSERT INTO `mark` VALUES ('flo', '0.03950008', '2020-08-27 11:24:14', '');
INSERT INTO `mark` VALUES ('bci', '0.00158199', '2020-08-27 11:24:14', '');
INSERT INTO `mark` VALUES ('rdd', '0.00119406', '2020-08-27 11:24:14', '');
INSERT INTO `mark` VALUES ('gin', '0.0015575', '2020-08-27 11:24:14', '');
INSERT INTO `mark` VALUES ('mona', '1.71', '2020-08-27 11:24:14', '');
INSERT INTO `mark` VALUES ('blk', '0.04834752', '2020-08-27 11:24:14', '');
INSERT INTO `mark` VALUES ('ppc', '0.259224', '2020-08-27 11:24:14', '');
INSERT INTO `mark` VALUES ('ftc', '0.00959704', '2020-08-27 11:24:14', '');
INSERT INTO `mark` VALUES ('btg', '9.69', '2020-08-27 11:24:14', '');
INSERT INTO `mark` VALUES ('via', '0.254513', '2020-08-27 11:24:14', '');
INSERT INTO `mark` VALUES ('nrg', '1.61', '2020-08-27 11:24:14', '');
INSERT INTO `mark` VALUES ('dash', '84.07', '2020-08-27 11:24:14', '');
INSERT INTO `mark` VALUES ('zcl', '0.211736', '2020-08-27 11:24:14', '');
INSERT INTO `mark` VALUES ('crw', '0.081675', '2020-08-27 11:24:14', '');
INSERT INTO `mark` VALUES ('xmy', '0.00149689', '2020-08-27 11:24:14', '');
INSERT INTO `mark` VALUES ('xvg', '0.00647726', '2020-08-27 11:24:14', '');
INSERT INTO `mark` VALUES ('pivx', '0.461175', '2020-08-27 11:24:14', '');
INSERT INTO `mark` VALUES ('rvn', '0.02174749', '2020-08-27 11:24:14', '');
INSERT INTO `mark` VALUES ('nlg', '0.0091668', '2020-08-27 11:24:14', '');
INSERT INTO `mark` VALUES ('smart', '0.00538184', '2020-08-27 11:24:14', '');
INSERT INTO `mark` VALUES ('clam', '1.21', '2020-08-27 11:24:14', '');
INSERT INTO `mark` VALUES ('eif', '0.013', '2020-08-27 11:24:14', '');
INSERT INTO `mark` VALUES ('grin', '0.504346', '2020-08-27 11:24:14', '');
INSERT INTO `mark` VALUES ('wgr', '0.04086512', '2020-08-27 11:24:14', '');
INSERT INTO `mark` VALUES ('xwc', '0.216626', '2020-08-27 11:24:14', '');
INSERT INTO `mark` VALUES ('bca', '0.161969', '2020-08-27 11:24:14', '');
INSERT INTO `mark` VALUES ('lux', '0.068835', '2020-08-27 11:24:14', '');
INSERT INTO `mark` VALUES ('xmr', '88.08', '2020-08-27 11:24:14', '');
INSERT INTO `mark` VALUES ('vitae', '2.84', '2020-08-27 11:24:14', '');
INSERT INTO `mark` VALUES ('nas', '0.517889', '2020-08-27 11:24:14', '');
INSERT INTO `mark` VALUES ('nav', '0.167325', '2020-08-27 11:24:14', '');
INSERT INTO `mark` VALUES ('trx', '0.00898343', '2020-08-27 11:24:14', '');
INSERT INTO `mark` VALUES ('neo', '17.04', '2020-08-27 11:24:14', '');
INSERT INTO `mark` VALUES ('emc', '0.04819417', '2020-08-27 11:24:14', '');
INSERT INTO `mark` VALUES ('ut', '0.02222476', '2020-08-27 11:24:14', '');
INSERT INTO `mark` VALUES ('ont', '0.836297', '2020-08-27 11:24:14', '');
INSERT INTO `mark` VALUES ('bcd', '0.844936', '2020-08-27 11:24:14', '');
INSERT INTO `mark` VALUES ('emc2', '0.053875', '2020-08-27 11:24:14', '');
INSERT INTO `mark` VALUES ('block', '1.72', '2020-08-27 11:24:14', '');
INSERT INTO `mark` VALUES ('mlm', '7.926E-5', '2020-08-27 11:24:14', '');
INSERT INTO `mark` VALUES ('tmc', '2.8284E-4', '2020-08-27 11:24:14', '');
INSERT INTO `mark` VALUES ('part', '0.702524', '2020-08-27 11:24:14', '');
INSERT INTO `mark` VALUES ('xsn', '0.291559', '2020-08-27 11:24:14', '');
INSERT INTO `mark` VALUES ('strat', '0.597373', '2020-08-27 11:24:14', '');
INSERT INTO `mark` VALUES ('kmd', '0.758622', '2020-08-27 11:24:14', '');
INSERT INTO `mark` VALUES ('bay', '0.266171', '2020-08-27 11:24:14', '');
INSERT INTO `mark` VALUES ('uno', '73.45', '2020-08-27 11:24:14', '');
INSERT INTO `mark` VALUES ('iost', '0.00647852', '2020-08-27 11:24:14', '');
INSERT INTO `mark` VALUES ('rp', '2.62', '2020-08-27 11:24:14', '');
INSERT INTO `mark` VALUES ('ugas', '0.02598529', '2020-08-27 11:24:14', '');
INSERT INTO `mark` VALUES ('ugasbmnrl', '0.02598529', '2020-08-27 11:24:14', '');
INSERT INTO `mark` VALUES ('ugasbmupc', '0.02598529', '2020-08-27 11:24:14', '');
INSERT INTO `mark` VALUES ('ugasbmtpr', '0.02598529', '2020-08-27 11:24:14', '');
INSERT INTO `mark` VALUES ('sc', '0.00400243', '2020-08-27 11:24:14', '');
INSERT INTO `mark` VALUES ('beam', '0.460947', '2020-08-27 11:24:14', '');
INSERT INTO `mark` VALUES ('scc', '3.36E-5', '2020-08-27 11:24:14', '');
INSERT INTO `mark` VALUES ('eosc', '0.00244381', '2020-08-27 11:24:14', '');
INSERT INTO `mark` VALUES ('wan', '0.357414', '2020-08-27 11:24:14', '');
INSERT INTO `mark` VALUES ('pi', '0.01474652', '2020-08-27 11:24:14', '');
INSERT INTO `mark` VALUES ('hc', '1.53', '2020-08-27 11:24:14', '');
INSERT INTO `mark` VALUES ('dcr', '16.64', '2020-08-27 11:24:14', '');
INSERT INTO `mark` VALUES ('bcc', '0.5127', '2020-08-27 11:24:14', '');
INSERT INTO `mark` VALUES ('onion', '0.107014', '2020-08-27 11:24:14', '');
INSERT INTO `mark` VALUES ('phr', '0.24673', '2020-08-27 11:24:14', '');
INSERT INTO `mark` VALUES ('xrc', '3.96', '2020-08-27 11:24:14', '');
INSERT INTO `mark` VALUES ('btc2', '0.596296', '2020-08-27 11:24:14', '');
INSERT INTO `mark` VALUES ('gas', '2.02', '2020-08-27 11:24:14', '');
INSERT INTO `mark` VALUES ('mnt', '3.511E-4', '2020-08-27 11:24:14', '');
INSERT INTO `mark` VALUES ('bmd', '1', '2020-08-27 11:24:14', '');
INSERT INTO `mark` VALUES ('aed', '0.27224219', '2020-08-27 11:24:14', '');
INSERT INTO `mark` VALUES ('vnd', '4.309E-5', '2020-08-27 11:24:14', '');
INSERT INTO `mark` VALUES ('nio', '0.02864932', '2020-08-27 11:24:14', '');
INSERT INTO `mark` VALUES ('bhd', '4.92', '2020-08-27 11:24:14', '');
INSERT INTO `mark` VALUES ('dop', '0.01709561', '2020-08-27 11:24:14', '');
INSERT INTO `mark` VALUES ('mur', '0.02515276', '2020-08-27 11:24:14', '');
INSERT INTO `mark` VALUES ('bdt', '0.01178081', '2020-08-27 11:24:14', '');
INSERT INTO `mark` VALUES ('dzd', '0.00780512', '2020-08-27 11:24:14', '');
INSERT INTO `mark` VALUES ('kwd', '3.26926661', '2020-08-27 11:24:14', '');
INSERT INTO `mark` VALUES ('uzs', '9.765E-5', '2020-08-27 11:24:14', '');
INSERT INTO `mark` VALUES ('bam', '0.60297665', '2020-08-27 11:24:14', '');
INSERT INTO `mark` VALUES ('ssp', '0.00767695', '2020-08-27 11:24:14', '');
INSERT INTO `mark` VALUES ('irr', '2.375E-5', '2020-08-27 11:24:14', '');
INSERT INTO `mark` VALUES ('qar', '0.27436257', '2020-08-27 11:24:14', '');
INSERT INTO `mark` VALUES ('mdl', '0.06019181', '2020-08-27 11:24:14', '');
INSERT INTO `mark` VALUES ('ghs', '0.17314', '2020-08-27 11:24:14', '');
INSERT INTO `mark` VALUES ('sar', '0.26661946', '2020-08-27 11:24:14', '');
INSERT INTO `mark` VALUES ('gtq', '0.12960842', '2020-08-27 11:24:14', '');
INSERT INTO `mark` VALUES ('mad', '0.10833747', '2020-08-27 11:24:14', '');
INSERT INTO `mark` VALUES ('mkd', '0.01914014', '2020-08-27 11:24:14', '');
INSERT INTO `mark` VALUES ('isk', '0.00720357', '2020-08-27 11:24:14', '');
INSERT INTO `mark` VALUES ('ngn', '0.00258365', '2020-08-27 11:24:14', '');
INSERT INTO `mark` VALUES ('omr', '2.59725418', '2020-08-27 11:24:14', '');
INSERT INTO `mark` VALUES ('ugx', '2.7266E-4', '2020-08-27 11:24:14', '');
INSERT INTO `mark` VALUES ('all', '0.00949738', '2020-08-27 11:24:14', '');
INSERT INTO `mark` VALUES ('bgn', '0.60445934', '2020-08-27 11:24:14', '');
INSERT INTO `mark` VALUES ('cop', '2.6005E-4', '2020-08-27 11:24:14', '');
INSERT INTO `mark` VALUES ('ttd', '0.14739966', '2020-08-27 11:24:14', '');
INSERT INTO `mark` VALUES ('npr', '0.0084639', '2020-08-27 11:24:14', '');
INSERT INTO `mark` VALUES ('azn', '0.58737151', '2020-08-27 11:24:14', '');
INSERT INTO `mark` VALUES ('jmd', '0.00667479', '2020-08-27 11:24:14', '');
INSERT INTO `mark` VALUES ('mmk', '7.4271E-4', '2020-08-27 11:24:14', '');
INSERT INTO `mark` VALUES ('byn', '0.37528325', '2020-08-27 11:24:14', '');
INSERT INTO `mark` VALUES ('rsd', '0.01002305', '2020-08-27 11:24:14', '');
INSERT INTO `mark` VALUES ('hnl', '0.04051317', '2020-08-27 11:24:14', '');
INSERT INTO `mark` VALUES ('jod', '1.41043724', '2020-08-27 11:24:14', '');
INSERT INTO `mark` VALUES ('pen', '0.27973812', '2020-08-27 11:24:14', '');
INSERT INTO `mark` VALUES ('iqd', '8.3678E-4', '2020-08-27 11:24:14', '');
INSERT INTO `mark` VALUES ('ars', '0.01353597', '2020-08-27 11:24:14', '');
INSERT INTO `mark` VALUES ('ves', '3.31E-6', '2020-08-27 11:24:14', '');
INSERT INTO `mark` VALUES ('pab', '1', '2020-08-27 11:24:14', '');
INSERT INTO `mark` VALUES ('bob', '0.14467842', '2020-08-27 11:24:14', '');
INSERT INTO `mark` VALUES ('kzt', '0.00237994', '2020-08-27 11:24:14', '');
INSERT INTO `mark` VALUES ('uyu', '0.0233427', '2020-08-27 11:24:14', '');
INSERT INTO `mark` VALUES ('amd', '0.00207634', '2020-08-27 11:24:14', '');
INSERT INTO `mark` VALUES ('cup', '0.03883495', '2020-08-27 11:24:14', '');
INSERT INTO `mark` VALUES ('kes', '0.00924214', '2020-08-27 11:24:14', '');
INSERT INTO `mark` VALUES ('tnd', '0.36568888', '2020-08-27 11:24:14', '');
INSERT INTO `mark` VALUES ('hrk', '0.15669315', '2020-08-27 11:24:14', '');
INSERT INTO `mark` VALUES ('uah', '0.03634211', '2020-08-27 11:24:14', '');
INSERT INTO `mark` VALUES ('egp', '0.0631606', '2020-08-27 11:24:14', '');
INSERT INTO `mark` VALUES ('nad', '0.05763689', '2020-08-27 11:24:14', '');
INSERT INTO `mark` VALUES ('lbp', '6.6071E-4', '2020-08-27 11:24:14', '');
INSERT INTO `mark` VALUES ('ron', '0.24359705', '2020-08-27 11:24:14', '');
INSERT INTO `mark` VALUES ('kgs', '0.01282656', '2020-08-27 11:24:14', '');
INSERT INTO `mark` VALUES ('gel', '0.32394099', '2020-08-27 11:24:14', '');
INSERT INTO `mark` VALUES ('crc', '0.00167774', '2020-08-27 11:24:14', '');
INSERT INTO `mark` VALUES ('khr', '2.4382E-4', '2020-08-27 11:24:14', '');
INSERT INTO `mark` VALUES ('lkr', '0.00537004', '2020-08-27 11:24:14', '');
INSERT INTO `mark` VALUES ('ipc', '0.02369723', '2020-08-27 11:24:14', '');
INSERT INTO `mark` VALUES ('sls', '19.17', '2020-08-27 11:24:14', '');
INSERT INTO `mark` VALUES ('glc', '0.00453326', '2020-08-27 11:24:14', '');
INSERT INTO `mark` VALUES ('mbc', '3.542E-5', '2020-08-27 11:24:14', '');
INSERT INTO `mark` VALUES ('dmd', '0.447285', '2020-08-27 11:24:14', '');
INSERT INTO `mark` VALUES ('cnx', '1.72', '2020-08-27 11:24:14', '');
INSERT INTO `mark` VALUES ('moon', '1.529E-5', '2020-08-27 11:24:14', '');
INSERT INTO `mark` VALUES ('colx', '4.5249E-4', '2020-08-27 11:24:14', '');
INSERT INTO `mark` VALUES ('axe', '0.172876', '2020-08-27 11:24:14', '');
INSERT INTO `mark` VALUES ('cann', '7.9729E-4', '2020-08-27 11:24:14', '');
INSERT INTO `mark` VALUES ('btx', '0.294909', '2020-08-27 11:24:14', '');
INSERT INTO `mark` VALUES ('nvc', '0.216392', '2020-08-27 11:24:14', '');
INSERT INTO `mark` VALUES ('nix', '0.120733', '2020-08-27 11:24:14', '');
INSERT INTO `mark` VALUES ('eos', '2.784', '2020-08-27 11:24:14', '');
INSERT INTO `mark` VALUES ('ckb', '0.00695302', '2020-08-27 11:24:14', '');
INSERT INTO `mark` VALUES ('bitg', '0.206433', '2020-08-27 11:24:14', '');
INSERT INTO `mark` VALUES ('usdc', '0.9987', '2020-08-27 11:24:14', '');
INSERT INTO `mark` VALUES ('susd', '0.999554', '2020-08-27 11:24:14', '');
INSERT INTO `mark` VALUES ('gusd', '0.992631', '2020-08-27 11:24:14', '');
INSERT INTO `mark` VALUES ('pax', '0.999187', '2020-08-27 11:24:14', '');
INSERT INTO `mark` VALUES ('tusd', '1', '2020-08-27 11:24:14', '');
INSERT INTO `mark` VALUES ('btccny1', '77407.98', '2020-08-27 11:24:14', '');
INSERT INTO `mark` VALUES ('btccny2', '78083.81', '2020-08-27 11:24:14', '');
INSERT INTO `mark` VALUES ('ethcny1', '2621.16', '2020-08-27 11:24:14', '');
INSERT INTO `mark` VALUES ('ethcny2', '2649.09', '2020-08-27 11:24:14', '');
INSERT INTO `mark` VALUES ('usdtcny1', '6.87', '2020-08-27 11:24:14', '');
INSERT INTO `mark` VALUES ('usdtcny2', '6.91', '2020-08-27 11:24:14', '');
INSERT INTO `mark` VALUES ('usdtcny3', '6.91', '2020-08-27 11:24:14', '');
INSERT INTO `mark` VALUES ('btccny3', '78470.47', '2020-08-27 11:24:14', '');
INSERT INTO `mark` VALUES ('ethcny3', '2662.03', '2020-08-27 11:24:14', '');
INSERT INTO `mark` VALUES ('usdccny1', '6.8304', '2020-08-27 11:24:14', '');
INSERT INTO `mark` VALUES ('ada', '0.107912', '2020-08-27 11:24:14', '');
INSERT INTO `mark` VALUES ('atom', '7.2', '2020-08-27 11:24:14', '');
INSERT INTO `mark` VALUES ('em', '0.00506346', '2020-08-27 11:24:14', '');
INSERT INTO `mark` VALUES ('bvb', '0.07', '2020-08-27 11:24:14', '');
INSERT INTO `mark` VALUES ('road', '0.07', '2020-08-27 11:24:14', '');
INSERT INTO `mark` VALUES ('bvbcny1', '0.35', '2020-08-27 11:24:14', '');
INSERT INTO `mark` VALUES ('roadcny1', '0.35', '2020-08-27 11:24:14', '');
