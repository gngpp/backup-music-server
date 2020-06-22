/*
 Navicat Premium Data Transfer

 Source Server         : mysql
 Source Server Type    : MySQL
 Source Server Version : 50729
 Source Host           : localhost:3306
 Source Schema         : master_music

 Target Server Type    : MySQL
 Target Server Version : 50729
 File Encoding         : 65001

 Date: 22/06/2020 15:27:29
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for admin
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '注解',
  `username` varchar(45) NOT NULL COMMENT '用户名',
  `password` varchar(255) NOT NULL COMMENT '密码',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name_UNIQUE` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='主键';

-- ----------------------------
-- Records of admin
-- ----------------------------
BEGIN;
INSERT INTO `admin` VALUES (1, 'admin', '123');
INSERT INTO `admin` VALUES (2, 'admin1', '123');
COMMIT;

-- ----------------------------
-- Table structure for club_card
-- ----------------------------
DROP TABLE IF EXISTS `club_card`;
CREATE TABLE `club_card` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `card_number` varchar(50) DEFAULT NULL,
  `card_pwd` varchar(50) DEFAULT NULL,
  `deleted` bit(1) DEFAULT b'0',
  `price` int(11) NOT NULL DEFAULT '10',
  `type` bit(1) NOT NULL DEFAULT b'1',
  PRIMARY KEY (`id`),
  UNIQUE KEY `card_number` (`card_number`) USING HASH,
  UNIQUE KEY `pwd` (`card_pwd`) USING HASH
) ENGINE=InnoDB AUTO_INCREMENT=3000 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of club_card
-- ----------------------------
BEGIN;
INSERT INTO `club_card` VALUES (2500, '8d27a19ad230689e63d96c8451490d50', '06cf80e4df50b7c501a4adff1bd46d76', b'1', 10, b'1');
INSERT INTO `club_card` VALUES (2501, '7113d3e151e31cd84faf3830d92cdfb2', '7d2313fd53b22b46714ec77552208c2f', b'1', 10, b'1');
INSERT INTO `club_card` VALUES (2502, '0ed7df8dbaa9b7e3e40284b6909f02e3', '9bb05ad34c12c39a71083ac0c1a058e6', b'0', 10, b'1');
INSERT INTO `club_card` VALUES (2503, 'c33c320a2a93e3dc3892a6e1b1bdd272', 'fdcbedb8394f11c45290046c83704517', b'0', 10, b'1');
INSERT INTO `club_card` VALUES (2504, '5c1b05939d7c8ce2a4c8f3530e3f4d41', 'e724f990690a482b66b9cb63f9fd8c19', b'0', 10, b'1');
INSERT INTO `club_card` VALUES (2505, '624b3a3a74f25441c99ffed8dbfd90ff', 'fbb4ef3e94a1c40c3aebf93cb4e73943', b'0', 10, b'1');
INSERT INTO `club_card` VALUES (2506, 'c6525d2f72ff77a44282f748c5d1cefd', 'c4767f4482bd38d4d88cee7f1590dc65', b'0', 10, b'1');
INSERT INTO `club_card` VALUES (2507, '66e56c7cf784337dade3b5112d954bbe', 'da3e8966501fd655f5f66a0bb6db0f61', b'0', 10, b'1');
INSERT INTO `club_card` VALUES (2508, '601b86b507c3c89ab68808c6ce246360', '8ad68be0d1ef62e6a3581962bda8372f', b'0', 10, b'1');
INSERT INTO `club_card` VALUES (2509, 'ff48ef404b87a1a93731070e22f344a4', '850a88b67a4cd075953a293f40e4040f', b'0', 10, b'1');
INSERT INTO `club_card` VALUES (2510, 'ccb98799d2653e15919c44a8cfd0faf4', 'fa429ecb5cfdce33191279a4faedb78a', b'0', 10, b'1');
INSERT INTO `club_card` VALUES (2511, '27b5e205cdbfd7d329e37b1721b5294a', '0b4c3f9c4b81f7ee50a7679f1326aaa6', b'0', 10, b'1');
INSERT INTO `club_card` VALUES (2512, 'b37470628fdf17971fcf170b140fe3cd', '8f1d339e15677103131246426f8c9de0', b'0', 10, b'1');
INSERT INTO `club_card` VALUES (2513, '7a7ddae2e8bf569dac91e042dbf67059', '188c75ac701177139c8ae60df60456a9', b'0', 10, b'1');
INSERT INTO `club_card` VALUES (2514, 'dee07ede83d5b81c7f9c86093dd8e865', '922fccb671ce87032aadd51411a1651d', b'0', 10, b'1');
INSERT INTO `club_card` VALUES (2515, 'd67dc30951273bc36888ae32e4da0c40', 'eed2f2420445c3458c124259c3edc7c9', b'0', 10, b'1');
INSERT INTO `club_card` VALUES (2516, 'e74efc17dff2a2a9efc0c0b480b00440', '1a5e01e6d854daa4f306f0a2c4db1adf', b'0', 10, b'1');
INSERT INTO `club_card` VALUES (2517, '070dca3cdceac25937309209bd0ade54', '7cbfd6c8d8a182a1c0c9bbf6a4597dc1', b'0', 10, b'1');
INSERT INTO `club_card` VALUES (2518, '7f7eb28286e24faaf7be546f0923da29', 'd3e307fb739b20360568798741906ee3', b'0', 10, b'1');
INSERT INTO `club_card` VALUES (2519, '7507dc8f9c3fbbc321718af9d9db4827', 'e8ac9a0be8b04af48e1a19eec666e0f0', b'0', 10, b'1');
INSERT INTO `club_card` VALUES (2520, 'f7144adbdbd6d6f283032cc87c177ced', '2c4d79d7592e9429edad6b6a96b5c575', b'0', 10, b'1');
INSERT INTO `club_card` VALUES (2521, '9c8fc2e1f994a8b7b4c469a2200f473e', '19f86fcd6594599971e5c2de435658a9', b'0', 10, b'1');
INSERT INTO `club_card` VALUES (2522, 'ef742edcc6083748611d341c9ceab1d5', '6659abb808695fb8c0fa5419ea6da059', b'0', 10, b'1');
INSERT INTO `club_card` VALUES (2523, '680968993e4fac21d9d063ef17a61d64', '470f546e11c9409c0597618d54fac12f', b'0', 10, b'1');
INSERT INTO `club_card` VALUES (2524, '74e12e9e1990ff98f5b8b4f81866f88f', '70f89f2e5f3a907391dc7262fd3463c0', b'0', 10, b'1');
INSERT INTO `club_card` VALUES (2525, '96e7eb8e2817f8942d4095c20c052896', 'f2cb3c9987a03f5ac2b4f6dd5ee59da4', b'0', 10, b'1');
INSERT INTO `club_card` VALUES (2526, 'acee8c40cf2b7c68660c394636968a2c', '481dde6f7091c8aff5ca0be77d1960be', b'0', 10, b'1');
INSERT INTO `club_card` VALUES (2527, '0000584889e891d3a9005db92fead532', 'c0f0da80191ce04a0cf84037c9b946da', b'0', 10, b'1');
INSERT INTO `club_card` VALUES (2528, 'b86f6fbde34a1a640bde483faa9a5e18', '4d70c5b912ec706d8ead0988b8b50710', b'0', 10, b'1');
INSERT INTO `club_card` VALUES (2529, '65263aa192af3e60355d82f4164ceef8', '4e3d404ef3d71c08017b418f0d1c904e', b'0', 10, b'1');
INSERT INTO `club_card` VALUES (2530, '40dc1e22a222b7dc8f0796bef02a6a33', '0ff7ad328a9462e705cb33552d73e8f4', b'0', 10, b'1');
INSERT INTO `club_card` VALUES (2531, 'd368cfb58db6cdef0023cedb122811bb', '8c3de37f70689947ff181e4d867c2fa7', b'0', 10, b'1');
INSERT INTO `club_card` VALUES (2532, '6e0e1e9ac209d6a525f0a968852592b0', 'a9742e8c0c9169dda5e40e028a777bb4', b'0', 10, b'1');
INSERT INTO `club_card` VALUES (2533, '10a6c1b03870faac1545beae63f2fa23', '87ccbb2314acdc8abf89c193ecbb3b06', b'0', 10, b'1');
INSERT INTO `club_card` VALUES (2534, 'd2aa890defb14b60a2d3667e515f419f', '9afab1350716b142c5428819fb593c53', b'0', 10, b'1');
INSERT INTO `club_card` VALUES (2535, '97173474f94987a66d80acb0894c1252', '4941b980d70db75936be3553129fa2b3', b'0', 10, b'1');
INSERT INTO `club_card` VALUES (2536, '8386efa5d9974e06abc6758b969e5d15', '25585e096abdf053106521fbf08056ef', b'0', 10, b'1');
INSERT INTO `club_card` VALUES (2537, '7295eca3f3ae63e42e2712dcea8595c3', 'd976322d5e7de161e56039abd76f13c8', b'0', 10, b'1');
INSERT INTO `club_card` VALUES (2538, '28b624db2f66f28542d1be9e341ff339', '9ed79e3449ce8052049624afa0e527f1', b'0', 10, b'1');
INSERT INTO `club_card` VALUES (2539, '7751e914ce1c48cdd99957a666dfde7e', '5d02fbdde72be7aec664a5afdde02d17', b'0', 10, b'1');
INSERT INTO `club_card` VALUES (2540, 'bcd8ecc162a4fa889e0e0710bcc86e24', 'd059317c852eca14c23de139b40458c6', b'0', 10, b'1');
INSERT INTO `club_card` VALUES (2541, 'b52e1d69d14beff9b2873c6d8d6c6cf0', 'f01c17c89c5e26c5aacc411ff2f7ec1e', b'0', 10, b'1');
INSERT INTO `club_card` VALUES (2542, 'c319640c02a534eced3af8218bb5e562', '6358d0af0545571930bdb3bfd670e764', b'0', 10, b'1');
INSERT INTO `club_card` VALUES (2543, '55b584725a4fd512f4e87487034d28a3', '6e745b4ae2c4762ce6293353e1b5d78c', b'0', 10, b'1');
INSERT INTO `club_card` VALUES (2544, '59484aeeb69198926eaa3897841a2507', '0bfcad60d5b8283ab4baf5cb1bb63755', b'0', 10, b'1');
INSERT INTO `club_card` VALUES (2545, '69788d5021293b31269a723223c06712', '7a6a5d03d9908742421ac5de41e1988b', b'0', 10, b'1');
INSERT INTO `club_card` VALUES (2546, 'e50f1dfd2f659d1188e24161d375152f', '366371070d526cf83d775e7c4d325485', b'0', 10, b'1');
INSERT INTO `club_card` VALUES (2547, 'e2586ed1b6e1e46acc6d0a6eac979d78', 'aa632f9cbe4771ccc20806c9671f55a4', b'0', 10, b'1');
INSERT INTO `club_card` VALUES (2548, '4da67532f54db7fe1b1fff970550660d', '1967b683aa2636bcf5b9967a22a028d7', b'0', 10, b'1');
INSERT INTO `club_card` VALUES (2549, '1ef1be75d8b839794120533c0552f7a4', '3e5fa258751abe340341d7f82b81448b', b'0', 10, b'1');
INSERT INTO `club_card` VALUES (2550, '8d9d9b40a89f987d3bc0f54e73067fd7', 'e5d1c5e2aa5f0d9f6699bdfc8fe6ace4', b'0', 10, b'1');
INSERT INTO `club_card` VALUES (2551, '82c9c65a627d9da09380af40f18ca4e1', '45926f57e0ce6331a6b586aef266fe80', b'0', 10, b'1');
INSERT INTO `club_card` VALUES (2552, '93f46913c1dab0a29155c263d85da3d1', '9b83a367db47bebf362c44df50bb2818', b'0', 10, b'1');
INSERT INTO `club_card` VALUES (2553, '56d7243c5b004a198f10096292181800', '1a6e2fe9f46afe8dcad6ac3695cc33bc', b'0', 10, b'1');
INSERT INTO `club_card` VALUES (2554, '8dfaf933ce58afad899e1c683f7ab15b', '22177bc4cd48d9d82a79efe662deaae5', b'0', 10, b'1');
INSERT INTO `club_card` VALUES (2555, '6bd075a3a62df5347ef13e6ad7ceb0e5', 'abeee7e8fc063b6faf11e01ecc5e75ec', b'0', 10, b'1');
INSERT INTO `club_card` VALUES (2556, '53150a3773f53b1752396b866a3b5e98', '776e59b22adb1cdb575d5cb5c138780f', b'0', 10, b'1');
INSERT INTO `club_card` VALUES (2557, 'f5663d8b89ffc097b83aa272d8a4ad2e', '606e00a01f9c9e1daa2c739a66bcacf6', b'0', 10, b'1');
INSERT INTO `club_card` VALUES (2558, '15a98a37409d00e9cde7915b53763b43', '1b6adfcbfd767fb096e783ad2e68f66a', b'0', 10, b'1');
INSERT INTO `club_card` VALUES (2559, '33822feaa8071a23784b5487d576aab9', '5bfca6aabe12149cb6d9cc3794b2c8d3', b'0', 10, b'1');
INSERT INTO `club_card` VALUES (2560, '4fc94f1929875d37c5fe904dec100ccb', '59c3dee9935ea8ccb47a3ef9999c158d', b'0', 10, b'1');
INSERT INTO `club_card` VALUES (2561, '1b324681f23ee5bed58c2d2224909bc2', '708cb64792022dcb3bc0077c3e90fe58', b'0', 10, b'1');
INSERT INTO `club_card` VALUES (2562, 'c7c0bffeec0ded810a96b8238ad0d6ca', '371b733107f9a55f332612599eb33567', b'0', 10, b'1');
INSERT INTO `club_card` VALUES (2563, '128ddcfa3d65e6d06274fd57091264d1', '6d8f453fc2d1184edb43b60dd55b9c58', b'0', 10, b'1');
INSERT INTO `club_card` VALUES (2564, '54cad9719885e9b1111a542918321648', '98e808eb07098cd027ee05cf2b6329e5', b'0', 10, b'1');
INSERT INTO `club_card` VALUES (2565, 'b1a76b77d884f7c3d523377e3434a447', '69acdf5732fddc165826888e87aea70b', b'0', 10, b'1');
INSERT INTO `club_card` VALUES (2566, 'd229ce024da724c4a4a85abb69635847', 'f86a5abbc788813d15314640b1e1852e', b'0', 10, b'1');
INSERT INTO `club_card` VALUES (2567, '2f842f310722401f48db82b00ade1eb5', '471b8e5f948a5e2444470fdd398c0d99', b'0', 10, b'1');
INSERT INTO `club_card` VALUES (2568, 'eb530f668daa1ae7e56f7652f4ab0f1f', '9d9d3f73719bddd4c35da0028094e855', b'0', 10, b'1');
INSERT INTO `club_card` VALUES (2569, 'd41d0393416621cadb10ba5971f5824c', 'e688787cc2a5f82d87fba48f57bff99a', b'0', 10, b'1');
INSERT INTO `club_card` VALUES (2570, 'a7e189adf58299f49bf8081248088a08', '5542eb30c417f7af93a732f979bbcaa4', b'0', 10, b'1');
INSERT INTO `club_card` VALUES (2571, 'bc7411a4f1703b13455b191f2ffccb3c', 'dea33e3ec8d8c556c1cb1f70ee31baff', b'0', 10, b'1');
INSERT INTO `club_card` VALUES (2572, '1731f899b42333fdb29531000e38242c', '9395a44c82ec7ad10dead6fefc1ba200', b'0', 10, b'1');
INSERT INTO `club_card` VALUES (2573, '2c60694d67cf04fe7a8ee8277dd82ccf', '1368c4ac2d6f42a2db4749771c2a0f16', b'0', 10, b'1');
INSERT INTO `club_card` VALUES (2574, '7d976f1f08fb9c0ff73d0f64332aaf70', 'ca6eadd079f6bfbec0de322ac86a6fa9', b'0', 10, b'1');
INSERT INTO `club_card` VALUES (2575, 'b5d213773c3347a12486acdca1a6b34a', 'cf2a9b755648de77bc9116956e9bcf85', b'0', 10, b'1');
INSERT INTO `club_card` VALUES (2576, '4372368d48d7eb678dd5cbf4efb3157d', '3aef551c67c8ecea0f6a1ad520ec874e', b'0', 10, b'1');
INSERT INTO `club_card` VALUES (2577, '663b8ca2c352135fbf32a1e8c732dcc4', '2a63496bebc5382d5b8ed35e7d6b99db', b'0', 10, b'1');
INSERT INTO `club_card` VALUES (2578, '3bc70377c134d8546648adbf3940d0de', '8c6e1199e400d678e41b2bf87f85cef4', b'0', 10, b'1');
INSERT INTO `club_card` VALUES (2579, 'a60ec4921297d3dd54c0080ed1accf66', 'e4839c0feece0316614f6b5d9571135a', b'0', 10, b'1');
INSERT INTO `club_card` VALUES (2580, '3d5cc02fc680c5e621d6b6b5cb34b850', 'ce53668324c2cda435ba9f0dec685740', b'0', 10, b'1');
INSERT INTO `club_card` VALUES (2581, '9c55e7cb19c9ddbd1abbaa4de0d94db4', 'e258db14bda8dc521b68e0fcaa732a21', b'0', 10, b'1');
INSERT INTO `club_card` VALUES (2582, '0064e1301edccb4fa41a6394c51eda95', '635d1097c39a86f2e816a0589fbee0ea', b'0', 10, b'1');
INSERT INTO `club_card` VALUES (2583, 'db212e639d73deb0e99619f707c2fcc6', 'ac538bc53c3e0fc9faff422328c89dc4', b'0', 10, b'1');
INSERT INTO `club_card` VALUES (2584, '7154c5318e453d63900811ca52fc4ae5', '35589adb5d0e834a5960c3d4f201202d', b'0', 10, b'1');
INSERT INTO `club_card` VALUES (2585, '0c58d69f0bd0cd8c2726fe088a61026f', 'df4185b69d4ac86a63a6d35966d5fd51', b'0', 10, b'1');
INSERT INTO `club_card` VALUES (2586, '9129c77e927b0d76d306fb9b1dc55b60', '249c73a92994633fd17fd737c3598deb', b'0', 10, b'1');
INSERT INTO `club_card` VALUES (2587, '1b90d5ba940d7c03e3acda03902e19fa', '26e407e755e6a3703f41badb76d96021', b'0', 10, b'1');
INSERT INTO `club_card` VALUES (2588, 'f341669b51d2dd0173ebe557cecb02d3', '2b43c9cea880ad8b431d543fb0a226b5', b'0', 10, b'1');
INSERT INTO `club_card` VALUES (2589, '176e9aa70f2d85228cc23e2e8514a717', 'ec948c5af6dec4ac65c10e9f252cd317', b'0', 10, b'1');
INSERT INTO `club_card` VALUES (2590, '737d59721e9272b7f47cfec3c439b47c', '61242d33bf1dcaaa3fe2510a5cd590a3', b'0', 10, b'1');
INSERT INTO `club_card` VALUES (2591, '45c16370e2c8bf304e264ae9c02c8f81', '74b1ea517c0891ab6adfe9eefdacc462', b'0', 10, b'1');
INSERT INTO `club_card` VALUES (2592, '4eb0b37170d56f451e65b7bad42fbfbc', 'd7fbf93d07651fc6a4a1d4911a5f4288', b'0', 10, b'1');
INSERT INTO `club_card` VALUES (2593, '85c0f919fcbe1a8797a5d39e94b5a583', '53641516cc8729c13daed79ee8127fe4', b'0', 10, b'1');
INSERT INTO `club_card` VALUES (2594, '0750d32a0973a2f5ba0d61aefd96f7ba', '468c604e464b00b7de937a42f93d9117', b'0', 10, b'1');
INSERT INTO `club_card` VALUES (2595, '9bf2132c089e89fc39171cb89187ec99', 'a4db8224ecf409d650203ac59475d6a2', b'0', 10, b'1');
INSERT INTO `club_card` VALUES (2596, '8ba9f4e9a79043dd54298047e84ea921', '9e702733fd41e47890258de9b405b900', b'0', 10, b'1');
INSERT INTO `club_card` VALUES (2597, '19c00d18dcf213310f722fcf25326f02', '3e48bf2997ec69e71bb1df62ad4b0731', b'0', 10, b'1');
INSERT INTO `club_card` VALUES (2598, 'bcc76790a776fd1cc96350fe71acbb0e', '3486d4d019e5c453f195059400668069', b'0', 10, b'1');
INSERT INTO `club_card` VALUES (2599, '2616e985c2341292d670a54c57f6febc', '60e724ca5589f0720205a94ffee06d4c', b'0', 10, b'1');
INSERT INTO `club_card` VALUES (2600, '283dfc8d1bf370d948b125a58a977004', '49be082fb96db60610ea20e76a275454', b'0', 10, b'1');
INSERT INTO `club_card` VALUES (2601, '773eedf5af04513a53f63d2d72829c3f', '68d30b185e33c7f536154393bbdb372f', b'0', 10, b'1');
INSERT INTO `club_card` VALUES (2602, 'cff0b13bf4add15d0ab0620652a2f469', '80da40a93d94f72a95a4c4daa08a955c', b'0', 10, b'1');
INSERT INTO `club_card` VALUES (2603, 'da2afc70ecb749e6b3bde64dbadc56cb', '21ea3fd7f062997aaf363317dfc866ad', b'0', 10, b'1');
INSERT INTO `club_card` VALUES (2604, 'b6c4f9ed1146166a816dcae6370a98ae', '8a96f6dfa40a030d5e0ff7bea17b1375', b'0', 10, b'1');
INSERT INTO `club_card` VALUES (2605, '054aac4db2a1b6d140cc581919253331', '2a9058ec859340ad3f426425f46a02fe', b'0', 10, b'1');
INSERT INTO `club_card` VALUES (2606, 'aee43ba59953bf14eb95eb47613e5d03', '6a1c5e896d809354f1bcc873287667f2', b'0', 10, b'1');
INSERT INTO `club_card` VALUES (2607, 'db55cefc8682caef2770b59cf89f7cef', '9c13e86b0716200035ef1198a637a858', b'0', 10, b'1');
INSERT INTO `club_card` VALUES (2608, '681b9d4836958dde2561cd24a29c0d4a', '3398e1d0c2a421e149beb47b1defe1eb', b'0', 10, b'1');
INSERT INTO `club_card` VALUES (2609, '71d93e826eafed7edf01e01f4f472540', '7d65af8c8377030e57d6020c44605955', b'0', 10, b'1');
INSERT INTO `club_card` VALUES (2610, '6f5d2b247ddcb1dd18eb1d41e5a62fd0', 'b5c88a39d9c7e9f80c8c6967572f2192', b'0', 10, b'1');
INSERT INTO `club_card` VALUES (2611, '6f84298d5fe36fc7ee28bc292b6cdbf9', '8628c221f4a121add6811fba1d017634', b'0', 10, b'1');
INSERT INTO `club_card` VALUES (2612, '07b556a07ad500f6f53388cb6ed5c05b', '7aee320b6af2750d7b3748b84c7bec6b', b'0', 10, b'1');
INSERT INTO `club_card` VALUES (2613, 'bcc07ece6794d4ce158a0ebf32ca093e', '81a1a44313bc885e2ac88a095c6fb4f6', b'0', 10, b'1');
INSERT INTO `club_card` VALUES (2614, '7e883f138245caf0ddcb4dc219c12f19', 'a601b2c7f2d9d45862316da014af7899', b'0', 10, b'1');
INSERT INTO `club_card` VALUES (2615, '1b64f6fa205044e0d41ceb7519df5351', '58da6b476d8154b44204390128c7dbf2', b'0', 10, b'1');
INSERT INTO `club_card` VALUES (2616, '847c0df29c3b53f551398e1cfd430082', '8ef057105efe83512ed75981e231a8e4', b'0', 10, b'1');
INSERT INTO `club_card` VALUES (2617, '827d31c7eb92241a15e412ccb97d8469', 'ef29009494cb2f20ce44bb7d2d96cc81', b'0', 10, b'1');
INSERT INTO `club_card` VALUES (2618, '84089d78458451fadd4868044e25bfd2', '3ca4c0b1d3baff6cbeb60caf324474ad', b'0', 10, b'1');
INSERT INTO `club_card` VALUES (2619, '819ea064128babd809c70158608f11e1', '5ec3111de0e15d8d58149cc7cd2ae1f1', b'0', 10, b'1');
INSERT INTO `club_card` VALUES (2620, '970ec4b1a5b24902686f9cf72cb8c8db', '75faa8661bdea8be0fde612ef311790d', b'0', 10, b'1');
INSERT INTO `club_card` VALUES (2621, 'f9d6730ece017f91920c829f5e861f7f', '5094c562c50afb22ae9def1341558657', b'0', 10, b'1');
INSERT INTO `club_card` VALUES (2622, '769b480d5b6268402c4ff4b657998e49', '1c31fed469aaef5dbb01334394faae88', b'0', 10, b'1');
INSERT INTO `club_card` VALUES (2623, 'e0b30d69f701ac6dbca9f911fa7465e6', 'b79a04ef7a7cc4a00772a23d6631cdcb', b'0', 10, b'1');
INSERT INTO `club_card` VALUES (2624, '0a7580f23440df0f9ecd10c442afa2c0', 'e79b6178edf544475e822eca22da89a2', b'0', 10, b'1');
INSERT INTO `club_card` VALUES (2625, 'c4d9f7cf87a16edefa150a5c58541e95', '1065910ab3bfcce9bb47d8c6f4b11070', b'0', 10, b'1');
INSERT INTO `club_card` VALUES (2626, '2800c6cbedbfcfa6ff503a3acee55efb', 'aec79cc95f747614701ac4b3c284de62', b'0', 10, b'1');
INSERT INTO `club_card` VALUES (2627, '760c6ce2d6f88be23f4234edd5b8ae39', '0e6c493a14ebdd6b931d3963b11d558d', b'0', 10, b'1');
INSERT INTO `club_card` VALUES (2628, 'd32d5e5e5f3cb536305f52be21ef64e3', '6948cbd3eace21f03c8e4155a4ff77e3', b'0', 10, b'1');
INSERT INTO `club_card` VALUES (2629, 'ac78cfb6de477b6633308838bfeccca6', '380a41851909f32888a4be21271570b5', b'0', 10, b'1');
INSERT INTO `club_card` VALUES (2630, '108a8022a2eae647ff0b8993fda74eb8', '94187ae3a4f56f89462ebecf62c3db56', b'0', 10, b'1');
INSERT INTO `club_card` VALUES (2631, '627383145102a773062ba848492ef355', '517b4593362a1ee009fc4f5f16e5e1d8', b'0', 10, b'1');
INSERT INTO `club_card` VALUES (2632, '99f8361bc6a790365d9aab9da6ca6364', 'b91584c6d33f65e1a9d5ad333e963d70', b'0', 10, b'1');
INSERT INTO `club_card` VALUES (2633, '2ca1b3290a0658b5a4af571badf75fab', 'af9f12c436c8daefdb528d18ef4eca41', b'0', 10, b'1');
INSERT INTO `club_card` VALUES (2634, '4ca85283c93836aff3f85f6d0297d3e9', '806f5befa9829c286f8a4dee69160839', b'0', 10, b'1');
INSERT INTO `club_card` VALUES (2635, '8fbdacc637d1a139f1531568979a3b0b', '656f44ede7a949a9e08f354a73ffb8f6', b'0', 10, b'1');
INSERT INTO `club_card` VALUES (2636, '0a375d19e164304b831404423377d886', '2fbcfb15820232407e9362b39e415471', b'0', 10, b'1');
INSERT INTO `club_card` VALUES (2637, '13969c343eae20aa5387784b028de28c', 'db6c08d4acfed87eae0c6dfa42bf0460', b'0', 10, b'1');
INSERT INTO `club_card` VALUES (2638, '53670d33d93bee03b5f361b22a6f3d23', '03a2ab7e9414b176c8bd47f7dd354ec7', b'0', 10, b'1');
INSERT INTO `club_card` VALUES (2639, 'e475700082d3b0acf75006642e136ef7', 'f7d8feb3a0ff900f13527691ce8cce01', b'0', 10, b'1');
INSERT INTO `club_card` VALUES (2640, '30146d5541c7cd1d031e5fcfff67fabe', '08851338029fe815976977f09087be40', b'0', 10, b'1');
INSERT INTO `club_card` VALUES (2641, 'ac9a1e6c2eea99b9536c83da9d8100d1', 'af6cb61f6898d8b582efca8ba2a2e143', b'0', 10, b'1');
INSERT INTO `club_card` VALUES (2642, '2d5073be259b6cf6821202f797f388ba', 'b1ab3d1e4450cd54a1c766cd6767f740', b'0', 10, b'1');
INSERT INTO `club_card` VALUES (2643, '9ba94014d91eb83ceaadc3bcb7ed7705', 'e3c3189125ce2e849124cc895b4c0384', b'0', 10, b'1');
INSERT INTO `club_card` VALUES (2644, 'ff5ca42cf5796971662a13f10c7d8d17', 'd4ff5c91d5a6b6b50599e203f5466d7a', b'0', 10, b'1');
INSERT INTO `club_card` VALUES (2645, 'c2da136e176c5dd15cccc3bc3eaeabca', 'fd43f535f00ba939c02cd457271b90f2', b'0', 10, b'1');
INSERT INTO `club_card` VALUES (2646, 'ae263989e6ffba9c18742cb15dd1cb49', '65a9dc40129287bed7cdf84c917a84bd', b'0', 10, b'1');
INSERT INTO `club_card` VALUES (2647, 'e97380f454c57c8b6111cc292dc360b1', '00fc09c2e38baefba07953d486de7843', b'0', 10, b'1');
INSERT INTO `club_card` VALUES (2648, '1b0fd799d1e7571fc73e3a3673881314', '9ae19868d17437f88e5d1946f7371af3', b'0', 10, b'1');
INSERT INTO `club_card` VALUES (2649, 'b5ca7c1ae20800a897c2828b7d521bf4', '80e202482c018decfab0340f047c5838', b'0', 10, b'1');
INSERT INTO `club_card` VALUES (2650, '9668639477428d36a7ab7db54c20da13', 'd35804b7fbca0130bdc2b092839a12b6', b'0', 10, b'1');
INSERT INTO `club_card` VALUES (2651, '702765d59fe9ce63c9710057c87f29e6', 'ce55195831f10fa296903f07767ce046', b'0', 10, b'1');
INSERT INTO `club_card` VALUES (2652, 'a75bde1e59372abd1ba8be1f71563f9c', '89869068e47c5d8c46445da7504b959d', b'0', 10, b'1');
INSERT INTO `club_card` VALUES (2653, '4d36d39d0b406040ef1b232121e0e768', '757ddc42301d566c479a9e47789873b8', b'0', 10, b'1');
INSERT INTO `club_card` VALUES (2654, '71a3e77a4296e997c573413d2e2fcf49', '6b51b80f6d0618c8289cb1d324b70959', b'0', 10, b'1');
INSERT INTO `club_card` VALUES (2655, 'dddf4abe2db31a9b79c9291bfb393621', '7259978225d7b33013a31743c84d91b6', b'0', 10, b'1');
INSERT INTO `club_card` VALUES (2656, '5e785978fe91ed826985ada6e6a96cb0', '0374713aefabf2ddf69ffc0158e828db', b'0', 10, b'1');
INSERT INTO `club_card` VALUES (2657, '073d1a54a0438fdc1b7824fbd18caf8a', 'a253c066b92fd183cfd5772689b23c32', b'0', 10, b'1');
INSERT INTO `club_card` VALUES (2658, 'fb5be2309b46c9e331f676e6e489b7d0', 'cc94538211c963dd16846a3ca6d5f1aa', b'0', 10, b'1');
INSERT INTO `club_card` VALUES (2659, '737c0151ac2b9d136a5ad9eedf2c138d', '5e08e8f9afc208661a7ab07744599b54', b'0', 10, b'1');
INSERT INTO `club_card` VALUES (2660, 'ee0d991ec5c29663c6901ea123ef8c0d', 'eb6a77d9e7cd12da3ede36629fe663a9', b'0', 10, b'1');
INSERT INTO `club_card` VALUES (2661, 'dd9ef4ff1d001706bbf53b1f25047a6b', '3810db297f3573729147d0fe4055f635', b'0', 10, b'1');
INSERT INTO `club_card` VALUES (2662, 'c421db423a773021c5dfbad4939bb177', '6c760e52864836b79f85b343cdae660b', b'0', 10, b'1');
INSERT INTO `club_card` VALUES (2663, '1483c2642a1c85a8f4a04fe8dbb53c8f', '8841cf997dcc348b1b169478891d775b', b'0', 10, b'1');
INSERT INTO `club_card` VALUES (2664, 'd3ff52e3154ddecf3de7321f71b94199', '46c03de98cbd925da8bf11e4514293c1', b'0', 10, b'1');
INSERT INTO `club_card` VALUES (2665, 'aa0446e0165031ee60131a970aef2ea7', '6f6dee09e04543c60fdb25ca1bd78cb5', b'0', 10, b'1');
INSERT INTO `club_card` VALUES (2666, 'de1814737b0961ac2bf6dede53f7e6ab', '88b3a3857351ddb868ee4f730d262672', b'0', 10, b'1');
INSERT INTO `club_card` VALUES (2667, '862a0fb26cfaa40a8b0d227c5ac35443', '5ed1632ac2257575139b46084b1cfeda', b'0', 10, b'1');
INSERT INTO `club_card` VALUES (2668, 'bec8c68aeaacfbe5768fa24ff675ecfb', '0685803e37b7ae44556dfde7d3a0a4ac', b'0', 10, b'1');
INSERT INTO `club_card` VALUES (2669, 'c61f3f369199fda37351f08095582286', '6a86c1a7af8aa0c1b73f90361484268b', b'0', 10, b'1');
INSERT INTO `club_card` VALUES (2670, '13dc2e43c370aac3926d2d0e74521e10', '3d70736103fd329ca026392ca784695a', b'0', 10, b'1');
INSERT INTO `club_card` VALUES (2671, '37980ec8df730f4a357a6578678d66c0', 'b676f676b71fe9c92e644c9446631f2a', b'0', 10, b'1');
INSERT INTO `club_card` VALUES (2672, '2f51411a46447766256761948b0b8a5e', 'd9948ecd3db578e9c816547c5de87280', b'0', 10, b'1');
INSERT INTO `club_card` VALUES (2673, '6db122770c9a44d6ee248c40d93d7240', '00a9927fbe046fb1f25a7d1ea447d430', b'0', 10, b'1');
INSERT INTO `club_card` VALUES (2674, '8a1e5bb9648ed697782cb3c21a3b473b', 'c3f198bb82eaabd343d8d25d1b4b7dfc', b'0', 10, b'1');
INSERT INTO `club_card` VALUES (2675, '16c678552cdcb69ee3e71361d2d22ef8', '0b1e32a9b140b3beee6b816301d2653f', b'0', 10, b'1');
INSERT INTO `club_card` VALUES (2676, '14efac5c94a7e95f1f8d643b69567a33', 'dfd3a17b1bcbf23df422019ebc221ef4', b'0', 10, b'1');
INSERT INTO `club_card` VALUES (2677, '74a811fe1b01f36ab874362e4d481028', '65611af87b4b78157c68b57d8838cce7', b'0', 10, b'1');
INSERT INTO `club_card` VALUES (2678, '2ef9de90c7bdb44ff4daa45f9cb175eb', 'a9a3e138e0a06fd83b6a4826f6a9b9c3', b'0', 10, b'1');
INSERT INTO `club_card` VALUES (2679, 'a72a11dcf952962804c80de505fad8b2', '508f349ea8d5aa0fc15f7f096181f8d2', b'0', 10, b'1');
INSERT INTO `club_card` VALUES (2680, 'ffff660f1d8a4fea23de361564011159', '5275a4116e9656e526bc150d9906a496', b'0', 10, b'1');
INSERT INTO `club_card` VALUES (2681, '503b2cc40a3862d29dcc1df52a8d10f6', '787090234fcf5df5b6e9f2e7259cefa0', b'0', 10, b'1');
INSERT INTO `club_card` VALUES (2682, 'bfe878c8084013367f6e2f27792905ce', 'd332fd19b2ea8aed3c61117077234646', b'0', 10, b'1');
INSERT INTO `club_card` VALUES (2683, '56a45a61693fbdb49ae57cdcfdd45237', '0b753e3cb7b7b9a62d98c5277edaf2c4', b'0', 10, b'1');
INSERT INTO `club_card` VALUES (2684, 'aead5e1d2e56ddedc5c4020e7f909d80', '814026482eb9600df9a360cb14eafdcd', b'0', 10, b'1');
INSERT INTO `club_card` VALUES (2685, '6dbb51b42a5c3fa4537994d15ced1774', 'e8536cb187ba546be7a6b8280cf863c1', b'0', 10, b'1');
INSERT INTO `club_card` VALUES (2686, '61929de90888539e66c591b4d9983b84', 'f03583660e840384ddf7c5d32c958dc2', b'0', 10, b'1');
INSERT INTO `club_card` VALUES (2687, '375b296192a3dc9c3d074ee275463cd2', '765934faad44336c1e2be7a1754b1471', b'0', 10, b'1');
INSERT INTO `club_card` VALUES (2688, '4cd9401d45c406d2648413c018c9d565', 'e9715d712a1b0a7bfe394e0300e850c5', b'0', 10, b'1');
INSERT INTO `club_card` VALUES (2689, 'a56345919726e15cbf5fb3502d8050c9', 'a31ef89d470bfb2c0471788fbae19726', b'0', 10, b'1');
INSERT INTO `club_card` VALUES (2690, 'b4d2f5a9910018c0c043c75aea53522f', '16b9b1e0f6b545d044564ad12c8341da', b'0', 10, b'1');
INSERT INTO `club_card` VALUES (2691, '8db59e130ce59c4873061e33528d8a86', '13e4737549db444c3c65adc54bd81a03', b'0', 10, b'1');
INSERT INTO `club_card` VALUES (2692, '4e1ab3da8290623f0744a3b335f47158', '62ea64d1797b79417a9859611edaa69d', b'0', 10, b'1');
INSERT INTO `club_card` VALUES (2693, 'a9cc884233232a23b10d6fcdd227cec4', 'f20bd0ad625c280fa19acd061715f85e', b'0', 10, b'1');
INSERT INTO `club_card` VALUES (2694, '3c7abe9641799143d86995cefee03935', 'ece9f540576b422a941f3a2cca14024b', b'0', 10, b'1');
INSERT INTO `club_card` VALUES (2695, 'fd842abc9afadaca009eadf5bfa562e4', 'e37b0b09263497f31cb0bed221b0e846', b'0', 10, b'1');
INSERT INTO `club_card` VALUES (2696, '5d7196fa9be5c3324663f3e59804745b', '8063291b678ec8b7706c181ca82fd122', b'0', 10, b'1');
INSERT INTO `club_card` VALUES (2697, 'e9353cd7f447fadb6a24549744b4d512', 'f588537974f8aa85cef237d093946789', b'0', 10, b'1');
INSERT INTO `club_card` VALUES (2698, '7e4e71e967acf2e94b21d1b49ec0ae63', 'abc98474c2a2b27ba02c175555e47f24', b'0', 10, b'1');
INSERT INTO `club_card` VALUES (2699, '3abdba661922df86781a418a95da2a31', 'd8d188c9aa6a200dfea09582354c6e80', b'0', 10, b'1');
INSERT INTO `club_card` VALUES (2700, 'e33edae645eac2d49b35dbb816e00e4c', 'd27c6a74b40d5bb56a5efebf8d7041b3', b'0', 10, b'1');
INSERT INTO `club_card` VALUES (2701, '93c4ae1cfdd47f7274d4f7eca8f5559c', '723b274e3566cbb18bfa7ffb0616e3fd', b'0', 10, b'1');
INSERT INTO `club_card` VALUES (2702, '7ac1df0e33947ac1ee1eaa410a44b290', '27ba8220c09fd24be6556ae38a14c853', b'0', 10, b'1');
INSERT INTO `club_card` VALUES (2703, 'f6a63881a7dbe25e3962ba4f614a3de8', '70529d0a9358534d8a4c48972b54c347', b'0', 10, b'1');
INSERT INTO `club_card` VALUES (2704, 'ae9db4c03ff325521d42df6d268b8f5a', 'ddcc6f0df1c2909b15c0ad8772aac1d8', b'0', 10, b'1');
INSERT INTO `club_card` VALUES (2705, '676f1f5b4bbb85175641f7fba1754192', 'c6617dfd03461db1b2dfa9b585e7edb8', b'0', 10, b'1');
INSERT INTO `club_card` VALUES (2706, '56b29b77485bb3a9eb679c396041393d', '9c81c906e0b83b375d09329fd29713f7', b'0', 10, b'1');
INSERT INTO `club_card` VALUES (2707, '49c47f5644b7b456a3956fa8026f9935', '0c49eed7457f74850046d48fbd1f5b2d', b'0', 10, b'1');
INSERT INTO `club_card` VALUES (2708, '3963a5134359771998dc14d885630b25', '6cf2bbc561a8071df69e9f8fdff3031b', b'0', 10, b'1');
INSERT INTO `club_card` VALUES (2709, '8c07ad283e075cfd566acb56a01053cb', '9f93a7ef61ea8a0aeeb07affd3f68c50', b'0', 10, b'1');
INSERT INTO `club_card` VALUES (2710, 'f516eafeccecfb7a3771941e5c91e57c', 'a61343b6e08fa517fee6c2f752c70fa9', b'0', 10, b'1');
INSERT INTO `club_card` VALUES (2711, '38226cf106527847c641ff40ba9720fd', '0d6d7fadd140b62ac05aafcec3e2c96f', b'0', 10, b'1');
INSERT INTO `club_card` VALUES (2712, '1b9ffd90edf5a878711501388d14f63a', '487e7918c986863a16456b779ea92ad0', b'0', 10, b'1');
INSERT INTO `club_card` VALUES (2713, '07f00ffe45e9aebb679c0154e276a56e', '559379456f6064897e5d4d545e17ecbb', b'0', 10, b'1');
INSERT INTO `club_card` VALUES (2714, 'f26572752ded5e74c146eff14874e448', '2cd2f09d93f079a2fa2d596375339f05', b'0', 10, b'1');
INSERT INTO `club_card` VALUES (2715, '468c4028a2e6fafa6f3a5f08f6cd8774', '46428f0e77bc7ef2becf3c4c8b37e2c5', b'0', 10, b'1');
INSERT INTO `club_card` VALUES (2716, '10557de6cc81be8219d4623d851a1537', 'd74ed6bec0d55cce7ff194c703237f26', b'0', 10, b'1');
INSERT INTO `club_card` VALUES (2717, '08f001e409d92702e76235cd78a99562', '638e22d8b29e770ac74af29ce9fd553e', b'0', 10, b'1');
INSERT INTO `club_card` VALUES (2718, '0c6cd6596317c615cc91cad0a2c84653', '397986c935b0cc312cd976438060f5f4', b'0', 10, b'1');
INSERT INTO `club_card` VALUES (2719, '975a9622a1ee1e9ea265f4ee50ccf9a5', 'b29a27cbbc83fa2b7ed0da8ac110eb50', b'0', 10, b'1');
INSERT INTO `club_card` VALUES (2720, '2595141faab00871803421327683294c', '15f098c08c1e29e23b980d92865c153f', b'0', 10, b'1');
INSERT INTO `club_card` VALUES (2721, 'db3faacaf9f703d8624fa9f2d7b85ce4', '3ea722ea9e69e21b3c7cf5e6e254119f', b'0', 10, b'1');
INSERT INTO `club_card` VALUES (2722, '95e68c97970171cf26ad3c5e234d18e1', 'd08292c266bb8c56ed191f43af39ab77', b'0', 10, b'1');
INSERT INTO `club_card` VALUES (2723, '9e6e35c108a88be10ae318a634a8f558', '3ccabdfc1d732fb33f4c7f57a8990cfa', b'0', 10, b'1');
INSERT INTO `club_card` VALUES (2724, '7acb8e7921af03965c5e7ad1e35c8856', '09a24292674fccbfc104cae0c5776996', b'0', 10, b'1');
INSERT INTO `club_card` VALUES (2725, 'e64a50a7001a25649939e756e8b5081b', '7a7c7c9b3d23dc3fbdda8151f950e5c1', b'0', 10, b'1');
INSERT INTO `club_card` VALUES (2726, '3c4f65d34473e8a8aaea93f5fddf2d48', '3ec70ec2ab0d89a023046921357c4b7a', b'0', 10, b'1');
INSERT INTO `club_card` VALUES (2727, '40420d67cfb169a1fe539a7794b3f74c', '89d1530eb51ef523d766ff6b8039e851', b'0', 10, b'1');
INSERT INTO `club_card` VALUES (2728, '0ed11ebf7417c875be58e2283bbd3f8a', '4c8b6c6e079082ca971c5305876e6e8a', b'0', 10, b'1');
INSERT INTO `club_card` VALUES (2729, '44b5a038c683f8e46a19006a2caa0eca', 'cd69d9f470128551d94607b2e676230d', b'0', 10, b'1');
INSERT INTO `club_card` VALUES (2730, 'a1afaafea57338075fed777fbd18f8d6', 'e760b3df16e3827bff1a7180f2f8050f', b'0', 10, b'1');
INSERT INTO `club_card` VALUES (2731, 'caf3c3d610e5dc28c79fb35e8145f8f6', '53724fc1be01cfed1f4fedd2cd1ffb39', b'0', 10, b'1');
INSERT INTO `club_card` VALUES (2732, '6ced5cefbd3e3891fbdeabf6a94a1451', '09f666e1f532432ede1696a2e9ce9660', b'0', 10, b'1');
INSERT INTO `club_card` VALUES (2733, 'b33946ec81f6e7ddc669110551814433', 'f6870faa505100d2c9a1ca76839c445f', b'0', 10, b'1');
INSERT INTO `club_card` VALUES (2734, 'de497ace06267bd469475db0024c1a00', 'ed7fa4c40f5d5e9f815e8ebb70b4825f', b'0', 10, b'1');
INSERT INTO `club_card` VALUES (2735, 'ea779e0bac03da3380f514f78339c7d9', '6fc795ebf561a6fda5d433dd469d614e', b'0', 10, b'1');
INSERT INTO `club_card` VALUES (2736, '73e5d0e91c2694f8e17ed449b4f759d8', 'f960284084805726682034ac17888e9e', b'0', 10, b'1');
INSERT INTO `club_card` VALUES (2737, '35508e2b9e86b0e848e40c30805ace9b', '22d19107dd36cd6cc691e7c2f9bd78c6', b'0', 10, b'1');
INSERT INTO `club_card` VALUES (2738, '617e7a10a580cb726fb962fc5ce6353e', '31c1e405770ddd97e92d002981ed2c1b', b'0', 10, b'1');
INSERT INTO `club_card` VALUES (2739, '030190dfa1c0396ca78bfe8cc4d00454', '520a33dee09e3e2acb7b3504b567da4a', b'0', 10, b'1');
INSERT INTO `club_card` VALUES (2740, '3adaff938bd8a8f02314a30581d4ff26', '7f5995aafb850f87552d25c75744daba', b'0', 10, b'1');
INSERT INTO `club_card` VALUES (2741, 'f760bf5f26a666b7885407b8c6212b35', 'cddad4fe520aea4d339270f82e64b102', b'0', 10, b'1');
INSERT INTO `club_card` VALUES (2742, '270ea443706fa6f352a170b701f56b2a', '4ce9da1af9e19d73af40927344533fc2', b'0', 10, b'1');
INSERT INTO `club_card` VALUES (2743, '20dea635f1c8bb52808bdc697b6de7fd', '28eff34858f4347977fd9f8f8f8b8912', b'0', 10, b'1');
INSERT INTO `club_card` VALUES (2744, '399cb77f3d49f25ba9abf4aae1001f4d', '9dfba4da33bb18060ffdf887aa6e6dad', b'0', 10, b'1');
INSERT INTO `club_card` VALUES (2745, '7c4d3995c19761e19bc6e5c314f53ce0', '53836babf2f35b4160272e68b446c733', b'0', 10, b'1');
INSERT INTO `club_card` VALUES (2746, '107a2ec5327d519d078bc157e6d3e2ae', '2cce97a41c6a596b4e30bf526262fc51', b'0', 10, b'1');
INSERT INTO `club_card` VALUES (2747, '3850479abcba654ecac2b0fa6e73a79e', '6445d9bf1b938c2124d661774c63a0f9', b'0', 10, b'1');
INSERT INTO `club_card` VALUES (2748, 'aca0da61688825b46630e1f2304cef02', '9a6880bdd275c4c01360ff9be5744e71', b'0', 10, b'1');
INSERT INTO `club_card` VALUES (2749, '370ff2248159fb72b1329251227b22b5', '7e2122e7fd188cf593c9ba0e3b049065', b'0', 10, b'1');
INSERT INTO `club_card` VALUES (2750, 'ed710f58b55a75d06659f87dde4822b8', 'e2049dd5ff054f3285d138a75c2aabba', b'0', 10, b'1');
INSERT INTO `club_card` VALUES (2751, '49f9a6afc5de5f5eac0516d58135acfa', '3c7ee07a79b882f3d9fb903acdb9bf68', b'0', 10, b'1');
INSERT INTO `club_card` VALUES (2752, '0670198cea0df993f23df34174d09ce2', '4579868fdc4085e0a0627cc29c3a8b75', b'0', 10, b'1');
INSERT INTO `club_card` VALUES (2753, 'ca822f59dbf4fdd78ba9cf408de876bf', '20a82a3758faf5fb74cfb034263adf3b', b'0', 10, b'1');
INSERT INTO `club_card` VALUES (2754, 'ff4b93978a1fe1bba08eb3592d7aa231', 'e9346e9d38cfa6cfa55fa1c4ffbbade4', b'0', 10, b'1');
INSERT INTO `club_card` VALUES (2755, '77cb01116ea01b2bad8f71f508f62470', '7d1e05de9c2efa9625d90143a666a81b', b'0', 10, b'1');
INSERT INTO `club_card` VALUES (2756, '11eb10f18c97e10a7c34b7f99a152b2f', '2bdc0a6bcfd1bcfc53c159f54524fd35', b'0', 10, b'1');
INSERT INTO `club_card` VALUES (2757, 'ea98a5789c3ff077b798e3be8cc913cc', '97e4be9f9ef12796f37edd5ae30e7da2', b'0', 10, b'1');
INSERT INTO `club_card` VALUES (2758, 'fd487064e3f7a4ccc3d1f2ae3bdedca3', 'f680f6c61e7168749c1351b4b0950b9d', b'0', 10, b'1');
INSERT INTO `club_card` VALUES (2759, '2ce48edcf54daefc98ad19f22eed81e1', '694a5e5581649994cbb6214c3f3996ca', b'0', 10, b'1');
INSERT INTO `club_card` VALUES (2760, 'baa1531638b1911e1d94b133fa2c2033', '97dadb8865b05dc6c0a9a1335f33bd00', b'0', 10, b'1');
INSERT INTO `club_card` VALUES (2761, '60721beb7a76cc2b90cd6eaa5d9b6d1e', '8af6eb8deb3cc0d3f18bfcc0b49f4deb', b'0', 10, b'1');
INSERT INTO `club_card` VALUES (2762, '5eea519a3d0685e65cbcdc491dfee143', 'ef0fdaeafd226a114e910bd40b017d77', b'0', 10, b'1');
INSERT INTO `club_card` VALUES (2763, 'cdde0ba998efbe61702ea06d06148e44', 'ccda8d00e55ef1335dfd51540e80f83a', b'0', 10, b'1');
INSERT INTO `club_card` VALUES (2764, '8caaba13ce7b85bfdcf11620399ee0d2', '3cad98f0ba7eac25fce77b5888566596', b'0', 10, b'1');
INSERT INTO `club_card` VALUES (2765, 'ba05407dad4f2ac6508346acd711467c', '10d431077426d5c7441bea1a0e866cc3', b'0', 10, b'1');
INSERT INTO `club_card` VALUES (2766, 'eacd02706f45011ef590fb1ae84b8183', 'e8b5e21506e379835299b17751392be3', b'0', 10, b'1');
INSERT INTO `club_card` VALUES (2767, '71caea81034217b7e501825b0817653f', '21fb40f34d5586ae619021a8b8bcac67', b'0', 10, b'1');
INSERT INTO `club_card` VALUES (2768, '129dbc538991246de2d67d10a033b25a', 'b501c1140f1b7d11e9d0f245e7c00865', b'0', 10, b'1');
INSERT INTO `club_card` VALUES (2769, '5754cb47cdab23225e9109146276e1ba', 'f1e747addddf8b79b3687f5a86bdfeef', b'0', 10, b'1');
INSERT INTO `club_card` VALUES (2770, '89469efe073cf006faabac887a6c7a33', 'a15eed2af0c8558c9178cc85c0e273db', b'0', 10, b'1');
INSERT INTO `club_card` VALUES (2771, '7a7c4af016660f235f2bca32894698a2', '269742304ab3c1804b33326f8c66cd3d', b'0', 10, b'1');
INSERT INTO `club_card` VALUES (2772, '24d4df75ec7f11bd236aa60c8c04c8ce', '5c43bb97c5d68a89ae11e90c4ea81c61', b'0', 10, b'1');
INSERT INTO `club_card` VALUES (2773, '0c06bc35f780bd5811f34627e31c081a', '3bedffec42d5a504ec9171ccaa391347', b'0', 10, b'1');
INSERT INTO `club_card` VALUES (2774, '4e14978ca1f60e0437d678640153adc5', 'd7bbb6edf00743efc476922e54b3b6d7', b'0', 10, b'1');
INSERT INTO `club_card` VALUES (2775, '975b786212577fdc28dcc779cba31d4b', '54cba44a77c0f5258bf26d1dc2c65ab0', b'0', 10, b'1');
INSERT INTO `club_card` VALUES (2776, '5ebcf7079215b11b5d7f5d5691fbd637', 'c38d416e92bbe0584b62136287c11bc6', b'0', 10, b'1');
INSERT INTO `club_card` VALUES (2777, '82175676230ab029cb4dfbd08ba80ae4', '1c6192aabce00ae10de2cbe457d2cc94', b'0', 10, b'1');
INSERT INTO `club_card` VALUES (2778, 'fee4f54e673e54c88489d6c83563c67a', '76604e1df0389dc1d051a4dcbf08f629', b'0', 10, b'1');
INSERT INTO `club_card` VALUES (2779, '32b66d89bf74821e92df12e4251ac556', '662bfc5e626a7d36e3e67c3c8de6e3b2', b'0', 10, b'1');
INSERT INTO `club_card` VALUES (2780, 'de741e8a35d8835b2bf54f6bb3b30b38', 'c1869b2c9427ece23f7362e1e50f3f52', b'0', 10, b'1');
INSERT INTO `club_card` VALUES (2781, '00126e2254bd98f5b2beae21bc940f3f', 'cf278564c783209ce442aa924b40677a', b'0', 10, b'1');
INSERT INTO `club_card` VALUES (2782, 'c1b89754bd0fe51af1818b9942bee0be', '0c85b66e2754f41351c8dbe3c0831aa5', b'0', 10, b'1');
INSERT INTO `club_card` VALUES (2783, '8f33524b7ddbcdff6f77894ec8f624d0', '460ce37ad37d521b65019030b9f2fe1b', b'0', 10, b'1');
INSERT INTO `club_card` VALUES (2784, '4665b5bf496dcc6f303f42296f9cf64f', '002b9ae7c5ea997dd76f1dc0fa8895dc', b'0', 10, b'1');
INSERT INTO `club_card` VALUES (2785, '631c33301c12d9b28baf03c785f7da24', '737fd80c9ab450c35d58853bdf5bc588', b'0', 10, b'1');
INSERT INTO `club_card` VALUES (2786, '8abf9887c29d7806ac85738ccdb4d6f3', 'dcead0fbe8c8d00f5cd33908df8f10fc', b'0', 10, b'1');
INSERT INTO `club_card` VALUES (2787, '37364e36c299b61c868f8418e68c92b3', '97458f721947d07de051779da88c3686', b'0', 10, b'1');
INSERT INTO `club_card` VALUES (2788, '5c29ce03af67a4881c5e9e0ba20d43ad', 'e09debf21c62a88f0558c253013e39c7', b'0', 10, b'1');
INSERT INTO `club_card` VALUES (2789, '595f7cc0bc917f48d9a3a31516f1a007', '2b8e8eb738df2283658d85d23ad6cab5', b'0', 10, b'1');
INSERT INTO `club_card` VALUES (2790, '4905e161c8deae8d8f9209503974e660', '2865ca7053813f98470ffb5a9fcc4a2b', b'0', 10, b'1');
INSERT INTO `club_card` VALUES (2791, '141f9e043668adfd890be4d54e3e70e5', '07fdfc40ab11653fe55c54e8ba7cfd32', b'0', 10, b'1');
INSERT INTO `club_card` VALUES (2792, '883e45a16c0924858464d5dcc08a70d9', '42cb96dd6261804df95a8c77ea162075', b'0', 10, b'1');
INSERT INTO `club_card` VALUES (2793, '854c6f32dfa90e331fa691da51761482', 'b31cd70d99208c1f8e4b64371a6aaffb', b'0', 10, b'1');
INSERT INTO `club_card` VALUES (2794, 'eccee511158f865e84485135452e4d03', 'd889331c4056c78a86aae5840f1c496e', b'0', 10, b'1');
INSERT INTO `club_card` VALUES (2795, '0c68466663cec271aeaee12aa9b19840', '40dbe422efa3893d916ab6358e530b7b', b'0', 10, b'1');
INSERT INTO `club_card` VALUES (2796, '24b6ce9e5814754dfb389efc9b4c86c6', '0ec013b442a3caca997773066508a827', b'0', 10, b'1');
INSERT INTO `club_card` VALUES (2797, 'd6d2aaf6001473d29ef81b147d958eca', '0c95df5d26400b19e670f79f7b6b8eb4', b'0', 10, b'1');
INSERT INTO `club_card` VALUES (2798, '764e1234441d7ca8e45f91734eb98b2c', '7963a6b25075ebb01c7de861fcc1a5e5', b'0', 10, b'1');
INSERT INTO `club_card` VALUES (2799, 'cf238a7617065539b7ecdfe7521c9caf', 'd21268a028abdd9cbcdd899adf28a0f2', b'0', 10, b'1');
INSERT INTO `club_card` VALUES (2800, 'fe959298f6bb72ac72b3eb68b74ff779', '238fbcf382c37566c0c626d8b73723ec', b'0', 10, b'1');
INSERT INTO `club_card` VALUES (2801, '25ec686be82b6160d318537218478ac4', '07f8d02f79944b51a727ee0de1d731cd', b'0', 10, b'1');
INSERT INTO `club_card` VALUES (2802, 'f43ca8099526a9bd344f4cf5bf87ee3e', 'bb5249ff484548a1134c279a77e8d5e8', b'0', 10, b'1');
INSERT INTO `club_card` VALUES (2803, 'bee19afb442b032ccfc8d5e774a6f510', '8614ca0dd439ca53773d3edaa6fac2c4', b'0', 10, b'1');
INSERT INTO `club_card` VALUES (2804, '55ab91ed36ee409c2c2cec3304b0ce05', 'cf01ca00cc67261f3ecfa54462d91ffe', b'0', 10, b'1');
INSERT INTO `club_card` VALUES (2805, '6862d6b582a8f1e6b0fe8910fada8502', '99a2e4f1d874e80a5592fa837f7f6594', b'0', 10, b'1');
INSERT INTO `club_card` VALUES (2806, 'c4a3a6bc35ebb46bf3e46cd38ee3a915', '37b1a18a25360263b4b02cff4b9a06a4', b'0', 10, b'1');
INSERT INTO `club_card` VALUES (2807, 'e570aa264a871c8191f523fc33822885', 'd8af6dec14fb5a55b72523fe2e7cf92c', b'0', 10, b'1');
INSERT INTO `club_card` VALUES (2808, 'e0df02f4f50d9565d7e8ef14ee8651d6', 'fac7e8cd583cdb58142ec582a5092e0f', b'0', 10, b'1');
INSERT INTO `club_card` VALUES (2809, 'd796d55e8433575500c9c5dfad071fe4', '082395687e2045b268aa465ccff43637', b'0', 10, b'1');
INSERT INTO `club_card` VALUES (2810, 'acbbe70ad7ae55559124787d1285f3c5', '47092f46e28bd5b73309bfa4b2ebb2bf', b'0', 10, b'1');
INSERT INTO `club_card` VALUES (2811, 'fdc1956582f071c55ab3a84110674e94', '5c40fe6133bc1b40fdb1f0124aa34d20', b'0', 10, b'1');
INSERT INTO `club_card` VALUES (2812, 'e474e7904ab098de02f23cfaa91aafb0', '13d1df7abf991640fade585e01d72f56', b'0', 10, b'1');
INSERT INTO `club_card` VALUES (2813, 'aac116bd0e0334564a620650eb45d898', 'c8aa129d730dcfa420a54b786c2f1866', b'0', 10, b'1');
INSERT INTO `club_card` VALUES (2814, 'a321d289b292be83c5df8d7368475503', '0be57f2bfef4fb38f064abadd36357d1', b'0', 10, b'1');
INSERT INTO `club_card` VALUES (2815, '6ca9d4acf04a4e856a41bd8ca9d1ed74', '12eeec3ffab42ba0f305bd2f5f313f00', b'0', 10, b'1');
INSERT INTO `club_card` VALUES (2816, '9668014cbcb37319cc42507ca620cf2a', '2c6b05710be80d6c01db72f1e4ff7de9', b'0', 10, b'1');
INSERT INTO `club_card` VALUES (2817, '7bf850a6aa37311c60728ddaf6f9ffc8', '1d3de7bea741d95b248b64b346161842', b'0', 10, b'1');
INSERT INTO `club_card` VALUES (2818, '82a28bde0c908562eda24d02ea3f9479', '75a290901c0ee59a15e9ef6171693405', b'0', 10, b'1');
INSERT INTO `club_card` VALUES (2819, '71147cbb0bc73b46323f1617a6c5afc4', '2a1ef0615efcc234711da3afaf4d47ee', b'0', 10, b'1');
INSERT INTO `club_card` VALUES (2820, '1df2f8c578c51bdd655d36a074af5f81', '723ef05a3635477b2f94f8cfd542904c', b'0', 10, b'1');
INSERT INTO `club_card` VALUES (2821, 'c48a97dc077275fa4db45ee883891e28', '4b7197d4e65478e869bfb9c6ba8d7772', b'0', 10, b'1');
INSERT INTO `club_card` VALUES (2822, '9e8ff00f5c367127df1cca36d57edbdb', '6ab1c7cdcf07a3664678168459ae3724', b'0', 10, b'1');
INSERT INTO `club_card` VALUES (2823, 'f4fbb58cadda9813401af5d6e15b93b5', '85a1aa6287d71116915270f72b940d52', b'0', 10, b'1');
INSERT INTO `club_card` VALUES (2824, '4ea7e8ddf90e7697094d9a43f126f22c', 'b1a1057ebc724c4876e275ccc7cd3b86', b'0', 10, b'1');
INSERT INTO `club_card` VALUES (2825, '2aa3d6b6d10f7cf2b4412370ee4fe22a', 'fac9dfde5352cdeab39d800baf75cd3f', b'0', 10, b'1');
INSERT INTO `club_card` VALUES (2826, '13ad83217e478ae7c5b3c022867c643f', 'e71034ff1e8bf3d5f460b567749895f0', b'0', 10, b'1');
INSERT INTO `club_card` VALUES (2827, '4e4337f50d12f0d4ce3fb89104a9ea60', 'ac0a88d0f5a4ac147e59ecd27f2df064', b'0', 10, b'1');
INSERT INTO `club_card` VALUES (2828, 'af1bed1e43291d57dfbfc5bbcbb94cf0', 'c7ef3db5211b7538f565ca0974cea47f', b'0', 10, b'1');
INSERT INTO `club_card` VALUES (2829, '483494c89b7d1f651c3417063e12e7de', 'fc18d3913c5ef6405f871424cbbaa4b8', b'0', 10, b'1');
INSERT INTO `club_card` VALUES (2830, 'ab9052484326769f6c0e55d85f7d5e92', 'bcdf625d70812239a5d56293ce1fdd28', b'0', 10, b'1');
INSERT INTO `club_card` VALUES (2831, '8a63ed25be5c6a8d81bc6400915f44f9', '9f13ac1e567b37583b7767afcd63b63a', b'0', 10, b'1');
INSERT INTO `club_card` VALUES (2832, '3431d985f61f70b12272b587909b2fb1', 'e5f03e73b3d813b7711f52e2a8c852fd', b'0', 10, b'1');
INSERT INTO `club_card` VALUES (2833, '9cf9b6915089a6abc86fba300b8ac64e', 'da36fb72b2fcc710548cb31484f59bcb', b'0', 10, b'1');
INSERT INTO `club_card` VALUES (2834, '2a31aad7f032af979d505d962c7a2566', '65ca5a24e8abd9ba354f17234b8f6d3a', b'0', 10, b'1');
INSERT INTO `club_card` VALUES (2835, 'bb324251cea23052a01bdd26d4ed96b7', 'e0b15335f12aa7582b8ab20d87bc6d72', b'0', 10, b'1');
INSERT INTO `club_card` VALUES (2836, 'd833242d9af7c071d25c8eee2b38642f', '7e0ac1d75f056512a4a42f57b57a4323', b'0', 10, b'1');
INSERT INTO `club_card` VALUES (2837, '2fe38b74d7530f0d8cd5dd4c2293cdd2', '0bf3080748922dd05f51d56b6131c44e', b'0', 10, b'1');
INSERT INTO `club_card` VALUES (2838, 'a05830458c28ed515329b26796cb47b7', '7de77b01c51f43aff78fe66cd8960e0e', b'0', 10, b'1');
INSERT INTO `club_card` VALUES (2839, '6adfeac235128d1181d26b536e3152dd', 'e2ab1e83a54bc7172dd3ea3cc74d3e76', b'0', 10, b'1');
INSERT INTO `club_card` VALUES (2840, 'b0045f0bf4d7aeb2e58fd3dc9d1239ca', '8a927c391ff5dcb56f838d445236d643', b'0', 10, b'1');
INSERT INTO `club_card` VALUES (2841, '6a5d316ce5c3f8630f1787621c89893e', '7c6486bed43d22a2fd5934b76f233285', b'0', 10, b'1');
INSERT INTO `club_card` VALUES (2842, '62ee79b91b42b42a7736949bf8176f91', '919febd09db3e46f633e62b9cc42ac22', b'0', 10, b'1');
INSERT INTO `club_card` VALUES (2843, '24b0106367cf7e451d89780cca84dbf2', 'a7a42110ce6a0051c436c2f7ad49282f', b'0', 10, b'1');
INSERT INTO `club_card` VALUES (2844, 'd0eae8fd2dd37622e06662ac93fb2fbd', '4dedf49ddb910e4b4dea59967713c514', b'0', 10, b'1');
INSERT INTO `club_card` VALUES (2845, 'be6041bbae66d17001f8ba64aaff46be', '439ae49e0e510d6fbf96e94533720ee9', b'0', 10, b'1');
INSERT INTO `club_card` VALUES (2846, '2523005846d9d3c2a6dcbac6dfb619cc', 'f13395f33a51215824854b2abbc0e977', b'0', 10, b'1');
INSERT INTO `club_card` VALUES (2847, '698548fb7afaca906bc22cc0c407617b', 'cacb357c4b3fff17dd3216eeb59cc365', b'0', 10, b'1');
INSERT INTO `club_card` VALUES (2848, 'da7a51d696dd83e7f1bc755dbec0fa96', 'e195f5089790be6ae101fd7a068bb7f7', b'0', 10, b'1');
INSERT INTO `club_card` VALUES (2849, 'acca84fcd4d89e2149e4f762e40e8de7', 'e46eb050842c64b761f86bf99baef1c6', b'0', 10, b'1');
INSERT INTO `club_card` VALUES (2850, 'd9d3cf5d0ba1ac26c0a063c99ead682e', '26581c23e48c2ba3d6a3c12000a493bb', b'0', 10, b'1');
INSERT INTO `club_card` VALUES (2851, '517fa3e10881c43331f10dbf4a3ec07f', 'f1413f7712d8770b294d24e5f51a5085', b'0', 10, b'1');
INSERT INTO `club_card` VALUES (2852, '8db0fb48bde70a9588532de182ccaf3c', '1c044ccf1dfe9953943b78d113788f9c', b'0', 10, b'1');
INSERT INTO `club_card` VALUES (2853, 'e2805ab5dac9e6be9925758b1071a1e3', '8beb82b132dda352641fe2ca5296de2a', b'0', 10, b'1');
INSERT INTO `club_card` VALUES (2854, 'fabacf0ac617389cd7c389501f613ac0', '908ce9f677b84b7a6942f0fb4d3a7baf', b'0', 10, b'1');
INSERT INTO `club_card` VALUES (2855, 'ef6655cff795a520abb7e4437a416bd3', 'c16a02f0a2a4f1b1d7013b3a5ed5acaa', b'0', 10, b'1');
INSERT INTO `club_card` VALUES (2856, '7c65adca6c9c18bb33fd7bf903bc3590', 'e510a7a502145cfc59ac50108db03585', b'0', 10, b'1');
INSERT INTO `club_card` VALUES (2857, '80f8e692ec74f58f0d42fccb09af17fd', '06ffe7b87f2dda7b8b6a5a77eec614dc', b'0', 10, b'1');
INSERT INTO `club_card` VALUES (2858, '65834379770bd4b1399f0775b04b5ba6', '5602c4cb632dbfbe5545d8f645f82398', b'0', 10, b'1');
INSERT INTO `club_card` VALUES (2859, '220f7bd8dc0116431cd1f73d8528eeb0', 'cee3790cd0201bee3a6cfbc080215d89', b'0', 10, b'1');
INSERT INTO `club_card` VALUES (2860, 'aac3340f6e20f8a5c9e0d5934dc96043', '49b78461308b1b4acb1ce2d8e2b8a4df', b'0', 10, b'1');
INSERT INTO `club_card` VALUES (2861, '72e9d3d713aa8cd48f58280112718184', 'c548b6ccd7267bc0ec3fed923f983f6c', b'0', 10, b'1');
INSERT INTO `club_card` VALUES (2862, '4d7bee2c19db917439e9e6fda848cba3', '4d7a87f3647af352f78ee7b5734ed940', b'0', 10, b'1');
INSERT INTO `club_card` VALUES (2863, '94df28355978f38cfee27fbd5b6eec86', '58545e24b3efbaa2b75b1e1dfe646317', b'0', 10, b'1');
INSERT INTO `club_card` VALUES (2864, 'b53af69c756964999d994900f4e48889', '5fe052d880e4660262de8ace3230f015', b'0', 10, b'1');
INSERT INTO `club_card` VALUES (2865, '80294ff1150267dbd5ba62b1e87e8627', '7025906f21079b368987924b585d000a', b'0', 10, b'1');
INSERT INTO `club_card` VALUES (2866, '6ce3b1b3b52fd88d9a57240081030143', 'e2905105e7093f4b0c2786ea90302383', b'0', 10, b'1');
INSERT INTO `club_card` VALUES (2867, '28f9fd96353798a06c8ec96cc776a6b7', '16a8e53d1b84840e80972472d7318688', b'0', 10, b'1');
INSERT INTO `club_card` VALUES (2868, '2e781305c2b70bf6571797cd34fbc8ed', 'df1773d6321ad46b8b24efe69e74501c', b'0', 10, b'1');
INSERT INTO `club_card` VALUES (2869, '73d3e196f6e1ab18c9d814c73da5b7da', 'aa974a6bfcf75b4b1144aa4ff1a64994', b'0', 10, b'1');
INSERT INTO `club_card` VALUES (2870, '5b98eda1aa3939a110603db9bad579bf', 'f132679be246e3ce8044f0add91f86a4', b'0', 10, b'1');
INSERT INTO `club_card` VALUES (2871, 'f415b3c9b23b3bdd0ff58ad115d076de', '0b0b757e0feebbd1204c18f5168efaca', b'0', 10, b'1');
INSERT INTO `club_card` VALUES (2872, 'd36e1aafd92accbc0ea2b54b2cc2faf8', '4d5acb398ac9ad119c3b171b65464d36', b'0', 10, b'1');
INSERT INTO `club_card` VALUES (2873, 'b589b6ee1de62cd47666c1ac8a5641cb', 'a5ebbc40a7fc79c9d0ba825504cedfdc', b'0', 10, b'1');
INSERT INTO `club_card` VALUES (2874, '4d0708bd6c447d5ace12d9b4e4217d0f', '3f122d66f0075b63889ae9db1ec4e7db', b'0', 10, b'1');
INSERT INTO `club_card` VALUES (2875, '04122d42715ce1d36f566c378bef6da9', '1a2ba2c03198504f63d23ea904dc7e11', b'0', 10, b'1');
INSERT INTO `club_card` VALUES (2876, 'abfdaf566e34b3eb56c7ad8fc975ddec', '4d08fd1c69b11afaedbe81ee2197a399', b'0', 10, b'1');
INSERT INTO `club_card` VALUES (2877, '2c7107d91ab9997a2a07b77178147a3b', '32b758093ee180233b18f6fe91d08fe5', b'0', 10, b'1');
INSERT INTO `club_card` VALUES (2878, '162ca156e4f42a6f7a00a98e91833a4b', '1af795fdfbea6f8d0fc49fb9e7317a78', b'0', 10, b'1');
INSERT INTO `club_card` VALUES (2879, 'a5d5795aacdec790f14c22e2221d8897', '53578b7638e9368c71c59133d413cc92', b'0', 10, b'1');
INSERT INTO `club_card` VALUES (2880, 'ed2db001667048965bc4f845c7b0e3b8', '6e03c0f5ee6a7743e25e8c5f8ad63355', b'0', 10, b'1');
INSERT INTO `club_card` VALUES (2881, '74e267895fe8f3bfa0fa6dada598679d', '1bde6c2dda747c9fc08280c7f972c8aa', b'0', 10, b'1');
INSERT INTO `club_card` VALUES (2882, 'fc2c8e82be975b29ec2959c684b215d2', '72c8c2c7f3685c801270562a3e0c1692', b'0', 10, b'1');
INSERT INTO `club_card` VALUES (2883, 'c2aa6b56324a3b2f6818de32dbfa8d9e', '07f3e786cb70c0a744a07325f5c248eb', b'0', 10, b'1');
INSERT INTO `club_card` VALUES (2884, 'b0cf57d3ea96703aa1d8e5cd0f9dddd0', 'd85896692d2a81da6fca78bbebc3de52', b'0', 10, b'1');
INSERT INTO `club_card` VALUES (2885, '5b66c32b50243316c8f0abaf8fc7c574', '918c44686adc3d43b067c2420464fab8', b'0', 10, b'1');
INSERT INTO `club_card` VALUES (2886, '88bbfcfd5a425b37338c85ad7c17217e', 'bf8b79ce83d33a2258afe2b6cce96459', b'0', 10, b'1');
INSERT INTO `club_card` VALUES (2887, 'f6ba48b2a6f5c1d24fe90d1564374e04', '4971c5d1f6aba21e485521d4a27f6a23', b'0', 10, b'1');
INSERT INTO `club_card` VALUES (2888, 'e4c69ddd08541d1fc5e4389d2134285c', 'c54f3ae2b9aaa501f93fa1f07555d0fb', b'0', 10, b'1');
INSERT INTO `club_card` VALUES (2889, 'f54f9af973bb8acc61b178850a54f656', 'b1c23731122b774c30d50e18f887e2f3', b'0', 10, b'1');
INSERT INTO `club_card` VALUES (2890, '149bf3d744d84685d2298b2aacbc8c36', '0361d968b9de86780daced4e85624980', b'0', 10, b'1');
INSERT INTO `club_card` VALUES (2891, '194063af9624be3bb810491fbf2c697f', 'c36e1d5fd8cb94b238175342c1dd4388', b'0', 10, b'1');
INSERT INTO `club_card` VALUES (2892, '849541581e037c5e8f22b82dde7611eb', 'c98305c4bdae4a985ea36fefe188e98f', b'0', 10, b'1');
INSERT INTO `club_card` VALUES (2893, 'f5f0c4e95acba87f5db94d4f8f9e79f2', '9d27171b39518c64b1d1f10468bb9eb6', b'0', 10, b'1');
INSERT INTO `club_card` VALUES (2894, '0390268944088a3f6763a8e8966c6c9d', '9d8d425ba46f5a47d2d1d84b71ad27fb', b'0', 10, b'1');
INSERT INTO `club_card` VALUES (2895, 'c1579849f4e66571bb5248f18a9c1410', '6f60aaf20abcbff63ed353489ed7c286', b'0', 10, b'1');
INSERT INTO `club_card` VALUES (2896, 'b15e0074140ef649b2dbdadebd33e080', '50004f2e91061fcf0403507a211f2d6d', b'0', 10, b'1');
INSERT INTO `club_card` VALUES (2897, '67c19774d1bcf4293c2dfed16e4fbea4', 'b41f1a97d200ec1584370b0d40c2eda7', b'0', 10, b'1');
INSERT INTO `club_card` VALUES (2898, '8abb141a7d7e38e8ea64d05d9a44cc95', '893dee76d892056b5116cab107a990d3', b'0', 10, b'1');
INSERT INTO `club_card` VALUES (2899, '797942e308ada544846e09f7fad092ab', '37ec060882ad564ad82d5bfdfabbed71', b'0', 10, b'1');
INSERT INTO `club_card` VALUES (2900, '1ef69fa13c085c684391ef54f94012b6', '7df5600c86ec594597b9813ed602925d', b'0', 10, b'1');
INSERT INTO `club_card` VALUES (2901, 'e0d7b101e0f213e115af2a431a2821fc', 'bee672ac8e55e2c8eae9a0226efdfc18', b'0', 10, b'1');
INSERT INTO `club_card` VALUES (2902, '5387bf2ced29c37c9f692180088ff592', 'b3ecae271ff12506ac495411c3fd2f49', b'0', 10, b'1');
INSERT INTO `club_card` VALUES (2903, 'db604ff0d3ea6a19bbf8cffd9e9768fa', 'f1b95186466172d7a476d2b9114202ce', b'0', 10, b'1');
INSERT INTO `club_card` VALUES (2904, '75c91ba696f91254acda50c1c0416cbe', 'db2f20df0f9530d471d665825a52f0de', b'0', 10, b'1');
INSERT INTO `club_card` VALUES (2905, 'fcba256822ebe7f3885e6d6ece22845f', '6634080863232015773cb4d71d660de3', b'0', 10, b'1');
INSERT INTO `club_card` VALUES (2906, '94b087f4a8029856b1f3aa297e1d98e0', 'aa13594a2ed2e5b08e4867a26da21882', b'0', 10, b'1');
INSERT INTO `club_card` VALUES (2907, '1b5da42e4fad6f749e012d7b61e48ead', 'a093e0ab6c6c9687c46421f349fe6a5f', b'0', 10, b'1');
INSERT INTO `club_card` VALUES (2908, 'e75a7bc84edfaf84a779dd4978045313', 'f2bd17efa7ad0bda16d8537a40e7ee8b', b'0', 10, b'1');
INSERT INTO `club_card` VALUES (2909, '93eb69677552682dc7a4cf9a340cee73', '96e7f721a9211e30763ae41d04c30db2', b'0', 10, b'1');
INSERT INTO `club_card` VALUES (2910, 'e60a4b786b525e5adfd75689f7c2d5b2', 'c7a4fc430afaca854264adefc4f222cd', b'0', 10, b'1');
INSERT INTO `club_card` VALUES (2911, '038a9a2fbd7fffb86879334002288cd1', 'd740d2520f7a34d8e2e130bee81ea40d', b'0', 10, b'1');
INSERT INTO `club_card` VALUES (2912, 'ec57da68e83624cf814c99401195da3e', 'b5a0c931aa2071a2caa8de1cbafa81c5', b'0', 10, b'1');
INSERT INTO `club_card` VALUES (2913, '7035ce33c36183bf3746180cf3f452a1', 'b507fbc04c7e3e62005d5f10412bc49d', b'0', 10, b'1');
INSERT INTO `club_card` VALUES (2914, '8a33b345bc1088c859859d50edc0736e', 'f0b2d28f1a94fd259e70f9fff49fd5df', b'0', 10, b'1');
INSERT INTO `club_card` VALUES (2915, '38514848088d70368df2ac4d4775d45f', 'f84cb336cc7d0a87825942cfe0fafd9b', b'0', 10, b'1');
INSERT INTO `club_card` VALUES (2916, '8baa24aa906188c93c7d7f26cd146e16', '667d47735c8496f5eb2d1c59203fedd7', b'0', 10, b'1');
INSERT INTO `club_card` VALUES (2917, '119c6b82f2b887cda9e2d6e60da1b992', 'd1bdbf36453afa33e92ef6b490a01569', b'0', 10, b'1');
INSERT INTO `club_card` VALUES (2918, '463f2fd37e3b4c7081acacd4fd38f240', '78204252dfc18d2c11fbeb580f2951ff', b'0', 10, b'1');
INSERT INTO `club_card` VALUES (2919, '128ddc5357bcf1d77efeb67e9b12e099', 'ac998f5385ec2bc5857ca68804dc2212', b'0', 10, b'1');
INSERT INTO `club_card` VALUES (2920, 'ebef7b8f4822b1fc2bffe8aceed60c14', '2b66a464e95353e6e207e708e2afc4da', b'0', 10, b'1');
INSERT INTO `club_card` VALUES (2921, 'a33776c696e79cb2922872fe7485885c', '065c0323e10545451586d72685d6dd56', b'0', 10, b'1');
INSERT INTO `club_card` VALUES (2922, 'fa042855f58e381b88adf08426134fff', 'aaac9bf84531a1220ea1e4ab86b63857', b'0', 10, b'1');
INSERT INTO `club_card` VALUES (2923, '93829092fe32d4e81ee4d87c68d43a7a', '39d148678b7b5d24a00cfd46f760003e', b'0', 10, b'1');
INSERT INTO `club_card` VALUES (2924, '6a860aea88c94cf0912f7fc65ed9416e', '09e1d9b441c3424a27dccde12f664246', b'0', 10, b'1');
INSERT INTO `club_card` VALUES (2925, 'cf8b1872d11818c081d1081b23d94a38', 'b56a763eace79d0125248b5849969719', b'0', 10, b'1');
INSERT INTO `club_card` VALUES (2926, 'fc700ae88d1988c2046e6b693e003c91', 'cbedec62255cce9c5add1a032b297bee', b'0', 10, b'1');
INSERT INTO `club_card` VALUES (2927, '1ca6c3b45389bbed57151cf60d6ace60', '512f1a89b161809ff513d6ee732aa7d5', b'0', 10, b'1');
INSERT INTO `club_card` VALUES (2928, 'de7e558495aeb002acb7ecb33a93e96e', '74627391c8ae5ad9c7bddf93fee98a47', b'0', 10, b'1');
INSERT INTO `club_card` VALUES (2929, '40bfb2465e8b877fec2c891365116e38', 'b5780874a48c0f92395b95bf12163616', b'0', 10, b'1');
INSERT INTO `club_card` VALUES (2930, 'd386b706bdb8723cfed953706f4e2ff7', 'ca01317d9bbe61d5bec3b055768ec06e', b'0', 10, b'1');
INSERT INTO `club_card` VALUES (2931, '6b8f0d9b6bc91dcbcb5c1bdf79f4bad3', '4c1f11f96b66b2871beb69ecb7db39e6', b'0', 10, b'1');
INSERT INTO `club_card` VALUES (2932, 'db5d338fe97992b87b3825e486ee3604', 'ccb79d8a3fd7eefd2d8acb016ee35700', b'0', 10, b'1');
INSERT INTO `club_card` VALUES (2933, '3d91a131bb92e01fb39ef04b8c8762c5', '0d37c4aad7a4f4fd95f6e410eef007cf', b'0', 10, b'1');
INSERT INTO `club_card` VALUES (2934, '925b88bf2ed00654a6caf8fd552ce0a3', '7477e95c32f1cf04b9743e5b998e12d6', b'0', 10, b'1');
INSERT INTO `club_card` VALUES (2935, '4583096c8b6d1c22dc5464b90c85016b', 'c7cc11f5c1f005b75c7a1e7545ebfb57', b'0', 10, b'1');
INSERT INTO `club_card` VALUES (2936, 'b4591f531547971030ea557ef69463ce', 'cbace417194cb3d1980f01928af2a82a', b'0', 10, b'1');
INSERT INTO `club_card` VALUES (2937, '66b2f86461188e9bcc22541ba39d22d9', '50b1c94a1f3dd03891cf8049946da204', b'0', 10, b'1');
INSERT INTO `club_card` VALUES (2938, '3ec0ac31f5df4363589b2801b284a9d5', '73459ea898db745c3e7465c51d12c86e', b'0', 10, b'1');
INSERT INTO `club_card` VALUES (2939, 'f1b853878b57d9276848e1cc025cbc3a', '61ecf8af7b94a6e3602897a963d3e6a3', b'0', 10, b'1');
INSERT INTO `club_card` VALUES (2940, 'efecb32074120d75467cf7a58b50ce59', '6d5ec26b349132b52bf8ed964743a0da', b'0', 10, b'1');
INSERT INTO `club_card` VALUES (2941, '3c0eb177c0ac1d1ed8561cecd9bce50f', '2b53700c9e51f159c47a7e7a42d6d720', b'0', 10, b'1');
INSERT INTO `club_card` VALUES (2942, 'ea95f36f2858346713594053d03a293a', 'c4a96f7aec68f5724b08c5a14a01ff48', b'0', 10, b'1');
INSERT INTO `club_card` VALUES (2943, 'a1db70a4ce639e42246bcd7c6d0481a7', '791311556c7507b14b0dc2950a8c2795', b'0', 10, b'1');
INSERT INTO `club_card` VALUES (2944, '85024f89ffad23f1fcd5a2324f839b41', 'e298459a2af0cf4ae6b62fe430cf8350', b'0', 10, b'1');
INSERT INTO `club_card` VALUES (2945, 'a20e07c5916628cfa4ba3e901e613eea', '13e9871b0dbd07aa0d8f946887d22ddf', b'0', 10, b'1');
INSERT INTO `club_card` VALUES (2946, 'a43d68107a277934ae67d7d301dfea38', '66d233bffe7a84f60c0304e7b0daa78c', b'0', 10, b'1');
INSERT INTO `club_card` VALUES (2947, '7ed5c1e7ff5bdaa0d02cb30cd493b335', 'cf5bb4adac233ac9dedcb9ccd0ecb9c9', b'0', 10, b'1');
INSERT INTO `club_card` VALUES (2948, 'c52ba3c7d0192cba8194242ecdf8fd91', '185faf1f39aa9918d98a36c79a6d6a89', b'0', 10, b'1');
INSERT INTO `club_card` VALUES (2949, 'b2165133516c6ecc0b263699636b7c4b', '5854b385ea101c98999c912a87543d8c', b'0', 10, b'1');
INSERT INTO `club_card` VALUES (2950, 'c89d09ab39ae9e6cb6d8e899dfd81545', 'e84938dfac535819396f2d906ec43ce2', b'0', 10, b'1');
INSERT INTO `club_card` VALUES (2951, '4f730080bd65f84f5bcfa3720726f66e', 'e6b7b25cfc249e55afface1c4c2c7399', b'0', 10, b'1');
INSERT INTO `club_card` VALUES (2952, 'dee790b0ab9853bf68f1a5f881754d4d', '12b17c043304a0fe43559a86591b157f', b'0', 10, b'1');
INSERT INTO `club_card` VALUES (2953, 'b158045cc36a6ee53d31b3229ef0bcd3', '0d77e5f9f6f841837a3c9bff7d175588', b'0', 10, b'1');
INSERT INTO `club_card` VALUES (2954, 'd9740f1b303e55ded846bd88bd69abbb', 'fb5583b8eb991ec8de50183c1cb1885d', b'0', 10, b'1');
INSERT INTO `club_card` VALUES (2955, 'd718b197c9984df8b8657c1fd1152859', '0405b2165b62feff1163d969a40ffc7d', b'0', 10, b'1');
INSERT INTO `club_card` VALUES (2956, 'aa989603e83c81344ecdbbf109da455a', 'ec0b19b19a9d3372da83441fc8000f3b', b'0', 10, b'1');
INSERT INTO `club_card` VALUES (2957, 'afbc64a30b288bf54aa7c7b2d86b3686', 'afb7d5b85af574effb53248394b45b80', b'0', 10, b'1');
INSERT INTO `club_card` VALUES (2958, '8c7bf027fb07033b696838630579545d', '92fe9d46c76f99e353adace10cc5ca07', b'0', 10, b'1');
INSERT INTO `club_card` VALUES (2959, '193505dc7eee73a4d0d1144dfc8d550d', '62169d3d275c2513ae771b533cae2d47', b'0', 10, b'1');
INSERT INTO `club_card` VALUES (2960, '67a1e2737f0b1843a51e2eb63d5c0761', '764c71c6ea1cdb1a849ea1ab5b111fa0', b'0', 10, b'1');
INSERT INTO `club_card` VALUES (2961, '51a9b43fc9e04c86106a80a521ff608b', '735931648122786a1248df486553666f', b'0', 10, b'1');
INSERT INTO `club_card` VALUES (2962, 'def0e05575012d35180abee321a21ce6', '1f1a9b47cc4a6a91fe47184b8196cd1e', b'0', 10, b'1');
INSERT INTO `club_card` VALUES (2963, 'bdc300d7b6273129859c2a8124275045', '3eba9a3a06c656fb9f7828399f34958b', b'0', 10, b'1');
INSERT INTO `club_card` VALUES (2964, 'a00df03a0942a14bee18f6a0b31c40cf', '1bb25a063a5af40990a9919a2d5b4509', b'0', 10, b'1');
INSERT INTO `club_card` VALUES (2965, '1530f9155d71673661e88883edf5a78b', '547375da8712b432a1b77c44a5d5358c', b'0', 10, b'1');
INSERT INTO `club_card` VALUES (2966, '36d7a767996c86bba7917570a358bd97', '05a43b696ffe321c48c8bf9009173fc6', b'0', 10, b'1');
INSERT INTO `club_card` VALUES (2967, '7978551c8e0ccd3d298667e55b79312c', '10bca9b05f7c9a90992dccb37e7a48f9', b'0', 10, b'1');
INSERT INTO `club_card` VALUES (2968, '719093b0abe5f25740049721675883a6', '761388eaf008cf0536e60d9face76c01', b'0', 10, b'1');
INSERT INTO `club_card` VALUES (2969, 'f7e6c2d2df81bc9f8d9de29063fecaa2', '7b3e3544eb143cc1b876cb7f446c35d4', b'0', 10, b'1');
INSERT INTO `club_card` VALUES (2970, '13701f56fe455a7ad31de0f5f8bf7907', 'e555409b2494039a9e03f040be309bcf', b'0', 10, b'1');
INSERT INTO `club_card` VALUES (2971, '61cefe42db27d65d6fbb0257d57e2012', '5e5b9794908387c22990661996b0527c', b'0', 10, b'1');
INSERT INTO `club_card` VALUES (2972, '15360a4ef57fe09ab6308c444a0535d6', '85ee0fba1b786edab850a5aa12219ae9', b'0', 10, b'1');
INSERT INTO `club_card` VALUES (2973, 'fc44ff3e67c1bcb5fa1cc87f3514bcc7', '07f5bfe51a90f8706f58e70dc960a47a', b'0', 10, b'1');
INSERT INTO `club_card` VALUES (2974, 'b2c5a0b9156a2e18e7d6174c82aee48c', '0639517167cf9c189f5f6e7938e70c6b', b'0', 10, b'1');
INSERT INTO `club_card` VALUES (2975, '54e8041af2eb4d5b2177579231897518', '042ba3049407fd806f06ad3232ff982f', b'0', 10, b'1');
INSERT INTO `club_card` VALUES (2976, '6b2064577204a8b618a2f7e0ed982b8d', '4be82c9efb0db646cb5f5d51236ab46d', b'0', 10, b'1');
INSERT INTO `club_card` VALUES (2977, '7f25f7722adea5669970178398252f03', '97bad49af2a793afde617c2288fd1f47', b'0', 10, b'1');
INSERT INTO `club_card` VALUES (2978, '5f39928233eda30718db10b432b8c67b', 'bf63aaa3a1ae0f99976200dbd15a9618', b'0', 10, b'1');
INSERT INTO `club_card` VALUES (2979, 'ec40026b8d59359d52f297029db13ab2', '0d75d43208009f936dfe0af64eb8fe38', b'0', 10, b'1');
INSERT INTO `club_card` VALUES (2980, 'b603f86fe4eaf7ad4f8ab96080940466', 'e4a3e6a73f4cbcf7501baa9913217cc1', b'0', 10, b'1');
INSERT INTO `club_card` VALUES (2981, '28a4ba1be30a054a627fe88f270640ef', 'ce6c58408219810ec0afc0070c41f98b', b'0', 10, b'1');
INSERT INTO `club_card` VALUES (2982, '5dc71ad7cb4562e6f86a6a275fdf0158', '691f98a647fd21d6728857b61629e903', b'0', 10, b'1');
INSERT INTO `club_card` VALUES (2983, '31dde4a86e1ea30e3f5dce527353d2dc', '5c5a8a1dc87c2d030fb936989a0b9e0c', b'0', 10, b'1');
INSERT INTO `club_card` VALUES (2984, '5856eb79cf1d02172f370f41d7801e04', 'edb26fb2be4987df48f2e3412b003ffe', b'0', 10, b'1');
INSERT INTO `club_card` VALUES (2985, '43b4ae215f150e0a16e80d3923539cd7', 'b7b805f71f8e3bb842cce1034df51719', b'0', 10, b'1');
INSERT INTO `club_card` VALUES (2986, '0adfc07892122aeb77af51cda542d957', 'f3682548db3c8f469f417d0fc68a97fb', b'0', 10, b'1');
INSERT INTO `club_card` VALUES (2987, '09f5f06f8047244bcc51997c5cad5c36', 'a3270c77886f56a2f417b5a8aff2652c', b'0', 10, b'1');
INSERT INTO `club_card` VALUES (2988, 'e6bc04a8ce587c71f343f50cb4ffe5b1', '786f4d843d251c10a33436b77d5ee27f', b'0', 10, b'1');
INSERT INTO `club_card` VALUES (2989, '00dbe750036d427564fa8bd4dedd9ee2', '24300c451f930b55b7a52ef95fbe48e5', b'0', 10, b'1');
INSERT INTO `club_card` VALUES (2990, 'ca3e20af243a87c63d04f4b12af2df6a', '02ccc3102be672f087fb5c99fcb4872d', b'0', 10, b'1');
INSERT INTO `club_card` VALUES (2991, '68e1e9d55202833fd260c8934c5c15e9', '732fc74e94be3fc324d3939c42b33d93', b'0', 10, b'1');
INSERT INTO `club_card` VALUES (2992, '50e1ba3510a76498c546931f560cd72a', '6a918fa47e9982eb5b911daed8e88703', b'0', 10, b'1');
INSERT INTO `club_card` VALUES (2993, '2ffb80b6055284238ac8609ab68bf2b4', '60a860beecbd965074353e542d70e672', b'0', 10, b'1');
INSERT INTO `club_card` VALUES (2994, '5e283dde02f624ff3b54ab35f270b1f0', '6f7b3bb3fc1d17f5eadba79919490885', b'0', 10, b'1');
INSERT INTO `club_card` VALUES (2995, '6d4d8082cc620fb20cd118939f4138b2', '6d16e8fa378d155916371e4beefe1c15', b'0', 10, b'1');
INSERT INTO `club_card` VALUES (2996, '64b3c8c802f06f3b1166f05d778db70d', '378041acb7e61052f0597efc4466e361', b'0', 10, b'1');
INSERT INTO `club_card` VALUES (2997, '6b2f59af92093030ccc0b86d7e186d8c', '40ea4eb3338ceed67a90b86f22d01526', b'0', 10, b'1');
INSERT INTO `club_card` VALUES (2998, 'b3c2efd1a5facc4724ed0811c565e903', '582da38b4098862c64fcaf85b1e74519', b'0', 10, b'1');
INSERT INTO `club_card` VALUES (2999, 'ae2fc9c6d9243e60a83f10e7f2dc8b45', '0a1a0f94b382acdf4f95b8ee78261d9b', b'0', 10, b'1');
COMMIT;

-- ----------------------------
-- Table structure for collect
-- ----------------------------
DROP TABLE IF EXISTS `collect`;
CREATE TABLE `collect` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '注解',
  `user_id` int(11) NOT NULL COMMENT '用户id',
  `type` int(4) NOT NULL COMMENT '收藏类型',
  `song_id` int(11) DEFAULT NULL COMMENT '歌曲id',
  `song_list_id` int(11) DEFAULT NULL COMMENT '歌曲列表id',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=74 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of collect
-- ----------------------------
BEGIN;
INSERT INTO `collect` VALUES (2, 1, 0, 21, NULL, '2019-01-07 03:17:42');
INSERT INTO `collect` VALUES (3, 94, 0, 22, NULL, '2019-01-07 16:38:23');
INSERT INTO `collect` VALUES (4, 94, 0, 23, NULL, '2019-01-07 16:41:44');
INSERT INTO `collect` VALUES (6, 94, 0, 21, NULL, '2019-01-07 16:43:45');
INSERT INTO `collect` VALUES (10, 94, 0, 3, NULL, '2019-01-07 16:58:59');
INSERT INTO `collect` VALUES (16, 94, 0, 24, NULL, '2019-01-07 17:34:07');
INSERT INTO `collect` VALUES (21, 5, 0, 24, NULL, '2019-01-08 15:18:33');
INSERT INTO `collect` VALUES (24, 5, 0, 8, NULL, '2019-01-08 16:07:57');
INSERT INTO `collect` VALUES (43, 5, 0, 7, NULL, '2019-04-26 01:06:20');
INSERT INTO `collect` VALUES (49, 26, 0, 21, NULL, '2020-03-22 02:08:41');
INSERT INTO `collect` VALUES (50, 26, 0, 100, NULL, '2020-03-22 03:41:14');
INSERT INTO `collect` VALUES (51, 1, 0, 22, NULL, '2020-04-05 20:07:09');
INSERT INTO `collect` VALUES (52, 12, 0, 99, NULL, '2020-04-05 21:19:06');
INSERT INTO `collect` VALUES (55, 1, 0, 17, NULL, '2020-06-10 14:17:56');
INSERT INTO `collect` VALUES (64, 1, 0, 116, NULL, '2020-06-10 14:24:55');
INSERT INTO `collect` VALUES (66, 1, 0, 129, NULL, '2020-06-10 14:29:34');
INSERT INTO `collect` VALUES (67, 26, 0, 11, NULL, '2020-06-14 02:59:34');
INSERT INTO `collect` VALUES (68, 1, 0, 11, NULL, '2020-06-14 03:00:03');
INSERT INTO `collect` VALUES (70, 26, 0, 36, NULL, '2020-06-14 03:15:31');
INSERT INTO `collect` VALUES (71, 26, 0, 69, NULL, '2020-06-14 03:29:10');
INSERT INTO `collect` VALUES (72, 26, 0, 45, NULL, '2020-06-14 03:29:19');
INSERT INTO `collect` VALUES (73, 26, 0, 113, NULL, '2020-06-14 03:29:40');
COMMIT;

-- ----------------------------
-- Table structure for comment
-- ----------------------------
DROP TABLE IF EXISTS `comment`;
CREATE TABLE `comment` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '注解',
  `user_id` int(11) NOT NULL COMMENT '用户id',
  `song_id` int(11) DEFAULT NULL COMMENT '歌曲id',
  `song_list_id` int(11) DEFAULT NULL COMMENT '歌曲列表id',
  `content` varchar(255) DEFAULT NULL COMMENT '评论内容',
  `create_time` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `type` int(11) NOT NULL COMMENT '类型',
  `up` int(11) NOT NULL DEFAULT '0' COMMENT '未知。。',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=68 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of comment
-- ----------------------------
BEGIN;
INSERT INTO `comment` VALUES (3, 1, 0, 1, '里面乱乱糟糟\n我们别再闹了\n这个冬天已然很冷了\n我们靠在一起。好吗', '2019-01-06 16:12:13', 1, 1);
INSERT INTO `comment` VALUES (5, 1, 21, NULL, '允儿牵动我的心!!!', '2019-01-06 18:12:53', 0, 0);
INSERT INTO `comment` VALUES (9, 1, 22, NULL, '林允儿这个人，饭她真的很骄傲。韩国人说汉语总会带着地域性极强的泡菜味，可是林允儿真的很用心在把准每一个汉字，从咬字到发音，再加上轻柔干净的嗓音加持，将柔美与舒缓表达到极致，将歌里想诉说的那种感情娓娓道来。', '2019-01-06 19:36:01', 0, 0);
INSERT INTO `comment` VALUES (10, 1, 21, NULL, '像我们之间一段长久未诉的告白，被你这样娓娓道来，你问我爱你有多深，我爱你有几分，我的情不移我的爱不变，月亮代表我的心。', '2019-01-06 19:44:37', 0, 3);
INSERT INTO `comment` VALUES (11, 1, 21, NULL, '当听这首歌曲的时候，看看天上的月亮。美爆了！', '2019-01-06 19:45:51', 0, 0);
INSERT INTO `comment` VALUES (12, 1, 23, NULL, '太尼马好听了！堂堂正正的林歌手！！', '2019-01-06 19:48:25', 0, 0);
INSERT INTO `comment` VALUES (13, 1, 23, NULL, '林允儿啊，真的唱的很标准，很动人，我的同学都没想到是林允儿唱的，呜呜呜，爱死你了林允儿', '2019-01-06 19:54:01', 0, 0);
INSERT INTO `comment` VALUES (14, 1, 22, NULL, '真的好棒，我只听她这个版本的', '2019-01-06 19:55:43', 0, 0);
INSERT INTO `comment` VALUES (16, 1, 5, NULL, '好听啊', '2019-01-06 19:56:52', 0, 0);
INSERT INTO `comment` VALUES (17, 1, 22, NULL, '我的允宝啊，努力演戏想让我们看到一样的你，努力学中文唱给我们听越来越爱你了', '2019-01-06 19:58:53', 0, 0);
INSERT INTO `comment` VALUES (18, 1, 22, NULL, '好听啊', '2019-01-06 20:01:46', 0, 0);
INSERT INTO `comment` VALUES (19, 1, 23, NULL, '好听啊', '2019-01-06 20:03:59', 0, 0);
INSERT INTO `comment` VALUES (20, 1, 21, NULL, '好听啊', '2019-01-06 20:04:22', 0, 0);
INSERT INTO `comment` VALUES (23, 1, NULL, 5, '赞！！', '2019-01-08 01:05:27', 1, 2);
INSERT INTO `comment` VALUES (24, 5, NULL, 1, '超喜欢！', '2019-01-08 21:46:29', 1, 0);
INSERT INTO `comment` VALUES (25, 5, NULL, 5, '大爱我林！', '2019-01-08 21:47:45', 1, 1);
INSERT INTO `comment` VALUES (26, 5, NULL, 2, 'nice', '2019-01-08 22:11:23', 1, 1);
INSERT INTO `comment` VALUES (27, 1, NULL, 0, '很有感觉', '2019-01-08 22:32:51', 1, 2);
INSERT INTO `comment` VALUES (28, 5, 26, NULL, '好听', '2019-01-08 22:42:07', 0, 0);
INSERT INTO `comment` VALUES (29, 5, 21, NULL, 'nice!', '2019-01-08 22:57:08', 0, 0);
INSERT INTO `comment` VALUES (30, 5, 15, NULL, '好听！', '2019-01-08 23:03:43', 0, 0);
INSERT INTO `comment` VALUES (31, 1, 13, NULL, 'rrrr', '2019-01-15 16:28:03', 0, 0);
INSERT INTO `comment` VALUES (32, 1, 19, NULL, '赞', '2019-03-07 16:34:12', 0, 0);
INSERT INTO `comment` VALUES (33, 1, 6, NULL, '赞', '2019-03-12 09:06:21', 0, 0);
INSERT INTO `comment` VALUES (34, 1, NULL, 1, 'hao', '2019-03-16 21:07:01', 1, 0);
INSERT INTO `comment` VALUES (35, 1, NULL, 38, 'hao', '2019-03-24 01:39:06', 1, 0);
INSERT INTO `comment` VALUES (36, 1, NULL, 0, '妙！', '2019-03-24 01:48:56', 1, 1);
INSERT INTO `comment` VALUES (37, 1, NULL, 80, '好听', '2019-03-24 01:51:02', 1, 0);
INSERT INTO `comment` VALUES (38, 1, NULL, 80, '好听！！！', '2019-03-24 01:52:20', 1, 0);
INSERT INTO `comment` VALUES (39, 1, NULL, 80, '好听', '2019-03-24 01:53:06', 1, 0);
INSERT INTO `comment` VALUES (40, 1, NULL, 80, 'good', '2019-03-24 01:53:45', 1, 0);
INSERT INTO `comment` VALUES (41, 1, NULL, 80, 'nice', '2019-03-24 01:55:04', 1, 0);
INSERT INTO `comment` VALUES (42, 1, NULL, 80, 'nice', '2019-03-24 01:57:02', 1, 0);
INSERT INTO `comment` VALUES (43, 1, NULL, 82, 'success', '2019-03-24 01:57:40', 1, 0);
INSERT INTO `comment` VALUES (45, 1, NULL, 1, '啦啦啦(*≧∀≦)ﾉ', '2019-04-25 21:24:43', 1, 0);
INSERT INTO `comment` VALUES (46, 1, 21, NULL, '111', '2019-04-26 00:51:18', 0, 0);
INSERT INTO `comment` VALUES (47, 1, NULL, 1, '222', '2019-04-26 01:01:27', 1, 0);
INSERT INTO `comment` VALUES (48, 5, NULL, 10, '我喜欢你', '2019-04-26 01:03:12', 1, 0);
INSERT INTO `comment` VALUES (49, 1, NULL, 0, '', '2019-05-23 21:35:47', 1, 0);
INSERT INTO `comment` VALUES (50, 1, NULL, 51, '好听', '2019-05-23 21:38:04', 1, 0);
INSERT INTO `comment` VALUES (51, 1, NULL, 5, '好听', '2019-05-23 21:39:55', 1, 0);
INSERT INTO `comment` VALUES (52, 1, NULL, 5, '好听', '2019-05-23 21:40:25', 1, 0);
INSERT INTO `comment` VALUES (53, 1, 107, NULL, 'I love you！！！', '2019-06-03 02:16:23', 0, 0);
INSERT INTO `comment` VALUES (54, 1, 95, NULL, '好听', '2020-03-14 16:14:53', 0, 0);
INSERT INTO `comment` VALUES (55, 1, 28, NULL, '?', '2020-03-14 16:19:11', 0, 0);
INSERT INTO `comment` VALUES (56, 26, 69, NULL, 'good!', '2020-03-22 02:19:03', 0, 0);
INSERT INTO `comment` VALUES (57, 26, 10, NULL, 'good', '2020-03-22 03:40:10', 0, 3);
INSERT INTO `comment` VALUES (58, 1, NULL, 82, 'ssss22??', '2020-05-17 08:54:22', 1, 0);
INSERT INTO `comment` VALUES (59, 1, NULL, 1, '', '2020-05-17 09:00:15', 1, 0);
INSERT INTO `comment` VALUES (60, 1, NULL, 1, 'sdsdsadsd', '2020-05-17 09:00:17', 1, 0);
INSERT INTO `comment` VALUES (61, 1, NULL, 1, '???', '2020-05-17 09:00:20', 1, 0);
INSERT INTO `comment` VALUES (62, 1, 12, NULL, '213', '2020-06-08 09:40:27', 0, 0);
INSERT INTO `comment` VALUES (63, 1, NULL, 2, 'asda', '2020-06-11 14:42:33', 1, 0);
INSERT INTO `comment` VALUES (64, 1, 129, NULL, 'das', '2020-06-11 14:45:27', 0, 0);
INSERT INTO `comment` VALUES (65, 1, NULL, 1, '这里有一个憨批', '2020-06-11 14:45:59', 1, 0);
INSERT INTO `comment` VALUES (66, 26, 9, NULL, 'sad', '2020-06-14 02:36:52', 0, 0);
INSERT INTO `comment` VALUES (67, 1, NULL, 5, 'asdsad', '2020-06-18 12:55:08', 1, 0);
COMMIT;

-- ----------------------------
-- Table structure for consumer
-- ----------------------------
DROP TABLE IF EXISTS `consumer`;
CREATE TABLE `consumer` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '用户id',
  `username` varchar(255) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL DEFAULT '123456' COMMENT '用户密码',
  `sex` int(11) DEFAULT '0' COMMENT '性别',
  `phone_num` char(15) DEFAULT NULL COMMENT '手机号',
  `email` char(30) DEFAULT NULL COMMENT '邮箱',
  `birth` datetime DEFAULT NULL COMMENT '出生年月',
  `introduction` varchar(255) DEFAULT NULL COMMENT '介绍',
  `location` varchar(45) DEFAULT NULL COMMENT '地点',
  `avatar` varchar(255) DEFAULT NULL COMMENT '头像',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `is_member` bit(1) NOT NULL DEFAULT b'0' COMMENT '是否为会员',
  `role` char(10) DEFAULT '用户',
  PRIMARY KEY (`id`),
  UNIQUE KEY `username_UNIQUE` (`username`),
  UNIQUE KEY `phone_num_UNIQUE` (`phone_num`),
  UNIQUE KEY `email_UNIQUE` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of consumer
-- ----------------------------
BEGIN;
INSERT INTO `consumer` VALUES (1, 'Yin', '626a63f1e223f22068246f2ba8a5ceee', 0, '13776412237', 'yoona@qq.com', '2019-06-20 00:00:00', '好好吃饭', '山西', '/avatarImages/1132f644-5e75-443c-8ec6-52d78a6c23b2.jpg', '2019-01-04 21:42:24', '2020-06-18 12:54:12', b'1', 'user');
INSERT INTO `consumer` VALUES (2, '012', 'e10adc3949ba59abbe56e057f20f883e', 0, '13754803255', 'love@gmail.com', '2019-04-14 00:00:00', '我就喜欢吃', '北京', '/avatarImages/d4d59e3280104729853977d174c2c94e.JPG', '2019-01-05 15:02:45', '2020-06-16 10:19:02', b'0', 'user');
INSERT INTO `consumer` VALUES (5, '789', 'e10adc3949ba59abbe56e057f20f883e', 0, '13634377258', '666@126.com', '2019-01-08 21:15:48', '今天很开心啊', '山西', '/avatarImages/894ea522afc04127bfa4ac324c049c82.JPG', '2019-01-07 16:16:42', '2020-06-16 10:19:02', b'0', 'user');
INSERT INTO `consumer` VALUES (8, 'tawuhen', 'e10adc3949ba59abbe56e057f20f883e', 0, '', '192673541@qq.com', '2019-04-25 18:58:39', '你好', '北京', '/avatarImages/3b5de8ed18454b8ab1438766afe792cb.JPG', '2019-04-25 00:28:58', '2020-06-16 10:19:02', b'0', 'user');
INSERT INTO `consumer` VALUES (12, 'yoona', 'e10adc3949ba59abbe56e057f20f883e', 0, '13854173655', '1236795@qq.com', '2019-04-25 10:56:54', 'hhh', '北京', '/avatarImages/de508d6d39954a97b689c1f9ef2ac6cd.JPG', '2019-04-25 10:56:54', '2020-06-16 10:19:02', b'0', 'user');
INSERT INTO `consumer` VALUES (16, '1234321', 'e10adc3949ba59abbe56e057f20f883e', 1, '13754803257', '123@qq.com', '2020-03-08 17:25:45', '', '', '/avatarImages/827de2fa689540a395234fa45c317f53.JPG', '2020-03-08 17:25:45', '2020-06-16 10:19:02', b'0', 'user');
INSERT INTO `consumer` VALUES (20, '234321', 'e10adc3949ba59abbe56e057f20f883e', 0, '15754801257', '12987@qq.com', '2020-03-08 23:41:22', '', '', '/avatarImages/497cd5367f464739b2d59d9cbad93603.JPG', '2020-03-08 23:41:22', '2020-06-16 10:19:02', b'0', 'user');
INSERT INTO `consumer` VALUES (21, 'yoonaA', 'e10adc3949ba59abbe56e057f20f883e', 1, NULL, NULL, '2020-03-25 00:00:00', '', '', '/avatarImages/9b223aad3fc749af9b5d05e0cf8b73be.JPG', '2020-03-21 22:18:33', '2020-06-16 10:19:02', b'0', 'user');
INSERT INTO `consumer` VALUES (24, 'yoonaAA', 'e10adc3949ba59abbe56e057f20f883e', 1, NULL, NULL, '2020-03-04 00:00:00', '', '', '/avatarImages/e848fb45499d491bb78a77cd3dd7b51f.JPG', '2020-03-21 22:20:27', '2020-06-16 10:19:02', b'0', 'user');
INSERT INTO `consumer` VALUES (25, 'yoonaAB', 'e10adc3949ba59abbe56e057f20f883e', 1, NULL, NULL, '2020-03-02 00:00:00', '', '', '/avatarImages/7bd160ba433c4ab89178841d9fb246d4.JPG', '2020-03-21 22:21:50', '2020-06-16 10:19:02', b'0', 'user');
INSERT INTO `consumer` VALUES (26, 'admin', 'e10adc3949ba59abbe56e057f20f883e', 1, '18776530219', '1596863112@qq.com', '2020-06-12 19:02:22', '这个人很懒,什么都没留下', '广西贵港', '/avatarImages/fded7d78-1859-45c4-948f-cc79336b6c5a.jpg', '2020-06-12 11:01:23', '2020-06-19 02:20:05', b'1', 'user');
COMMIT;

-- ----------------------------
-- Table structure for list_song
-- ----------------------------
DROP TABLE IF EXISTS `list_song`;
CREATE TABLE `list_song` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `song_id` int(11) NOT NULL COMMENT '歌曲id',
  `song_list_id` int(11) NOT NULL COMMENT '歌曲列表id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=210 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of list_song
-- ----------------------------
BEGIN;
INSERT INTO `list_song` VALUES (1, 36, 1);
INSERT INTO `list_song` VALUES (3, 5, 2);
INSERT INTO `list_song` VALUES (4, 7, 2);
INSERT INTO `list_song` VALUES (5, 11, 2);
INSERT INTO `list_song` VALUES (6, 38, 6);
INSERT INTO `list_song` VALUES (7, 39, 6);
INSERT INTO `list_song` VALUES (8, 44, 1);
INSERT INTO `list_song` VALUES (9, 22, 2);
INSERT INTO `list_song` VALUES (10, 22, 12);
INSERT INTO `list_song` VALUES (11, 38, 5);
INSERT INTO `list_song` VALUES (12, 39, 5);
INSERT INTO `list_song` VALUES (13, 38, 5);
INSERT INTO `list_song` VALUES (14, 39, 5);
INSERT INTO `list_song` VALUES (15, 45, 4);
INSERT INTO `list_song` VALUES (16, 45, 12);
INSERT INTO `list_song` VALUES (17, 10, 13);
INSERT INTO `list_song` VALUES (18, 10, 2);
INSERT INTO `list_song` VALUES (19, 28, 3);
INSERT INTO `list_song` VALUES (20, 10, 3);
INSERT INTO `list_song` VALUES (21, 30, 10);
INSERT INTO `list_song` VALUES (22, 31, 10);
INSERT INTO `list_song` VALUES (23, 82, 6);
INSERT INTO `list_song` VALUES (24, 83, 6);
INSERT INTO `list_song` VALUES (25, 84, 6);
INSERT INTO `list_song` VALUES (26, 85, 6);
INSERT INTO `list_song` VALUES (27, 99, 7);
INSERT INTO `list_song` VALUES (28, 100, 8);
INSERT INTO `list_song` VALUES (29, 78, 9);
INSERT INTO `list_song` VALUES (30, 79, 9);
INSERT INTO `list_song` VALUES (31, 80, 9);
INSERT INTO `list_song` VALUES (32, 86, 7);
INSERT INTO `list_song` VALUES (33, 87, 7);
INSERT INTO `list_song` VALUES (34, 88, 8);
INSERT INTO `list_song` VALUES (35, 100, 7);
INSERT INTO `list_song` VALUES (36, 82, 11);
INSERT INTO `list_song` VALUES (37, 65, 11);
INSERT INTO `list_song` VALUES (38, 50, 11);
INSERT INTO `list_song` VALUES (39, 67, 14);
INSERT INTO `list_song` VALUES (40, 78, 14);
INSERT INTO `list_song` VALUES (41, 26, 14);
INSERT INTO `list_song` VALUES (42, 4, 15);
INSERT INTO `list_song` VALUES (43, 7, 15);
INSERT INTO `list_song` VALUES (44, 21, 15);
INSERT INTO `list_song` VALUES (45, 24, 16);
INSERT INTO `list_song` VALUES (46, 40, 16);
INSERT INTO `list_song` VALUES (47, 50, 16);
INSERT INTO `list_song` VALUES (48, 70, 16);
INSERT INTO `list_song` VALUES (49, 72, 17);
INSERT INTO `list_song` VALUES (50, 73, 17);
INSERT INTO `list_song` VALUES (51, 51, 18);
INSERT INTO `list_song` VALUES (52, 52, 18);
INSERT INTO `list_song` VALUES (53, 65, 18);
INSERT INTO `list_song` VALUES (54, 67, 18);
INSERT INTO `list_song` VALUES (55, 2, 19);
INSERT INTO `list_song` VALUES (56, 7, 19);
INSERT INTO `list_song` VALUES (57, 55, 19);
INSERT INTO `list_song` VALUES (58, 53, 19);
INSERT INTO `list_song` VALUES (59, 54, 19);
INSERT INTO `list_song` VALUES (60, 4, 20);
INSERT INTO `list_song` VALUES (61, 7, 20);
INSERT INTO `list_song` VALUES (62, 11, 20);
INSERT INTO `list_song` VALUES (63, 26, 20);
INSERT INTO `list_song` VALUES (64, 99, 21);
INSERT INTO `list_song` VALUES (65, 100, 21);
INSERT INTO `list_song` VALUES (66, 86, 21);
INSERT INTO `list_song` VALUES (67, 91, 22);
INSERT INTO `list_song` VALUES (68, 94, 22);
INSERT INTO `list_song` VALUES (69, 77, 22);
INSERT INTO `list_song` VALUES (70, 68, 22);
INSERT INTO `list_song` VALUES (71, 50, 22);
INSERT INTO `list_song` VALUES (72, 76, 17);
INSERT INTO `list_song` VALUES (73, 93, 15);
INSERT INTO `list_song` VALUES (74, 92, 15);
INSERT INTO `list_song` VALUES (75, 78, 72);
INSERT INTO `list_song` VALUES (76, 79, 72);
INSERT INTO `list_song` VALUES (77, 80, 72);
INSERT INTO `list_song` VALUES (78, 64, 71);
INSERT INTO `list_song` VALUES (79, 65, 71);
INSERT INTO `list_song` VALUES (80, 50, 71);
INSERT INTO `list_song` VALUES (81, 51, 71);
INSERT INTO `list_song` VALUES (82, 51, 70);
INSERT INTO `list_song` VALUES (83, 50, 70);
INSERT INTO `list_song` VALUES (84, 64, 62);
INSERT INTO `list_song` VALUES (85, 65, 62);
INSERT INTO `list_song` VALUES (86, 66, 62);
INSERT INTO `list_song` VALUES (87, 67, 62);
INSERT INTO `list_song` VALUES (88, 25, 63);
INSERT INTO `list_song` VALUES (89, 26, 63);
INSERT INTO `list_song` VALUES (90, 79, 63);
INSERT INTO `list_song` VALUES (91, 65, 64);
INSERT INTO `list_song` VALUES (92, 64, 64);
INSERT INTO `list_song` VALUES (93, 80, 64);
INSERT INTO `list_song` VALUES (94, 25, 65);
INSERT INTO `list_song` VALUES (95, 64, 65);
INSERT INTO `list_song` VALUES (96, 67, 67);
INSERT INTO `list_song` VALUES (97, 64, 67);
INSERT INTO `list_song` VALUES (98, 25, 67);
INSERT INTO `list_song` VALUES (99, 25, 69);
INSERT INTO `list_song` VALUES (100, 24, 69);
INSERT INTO `list_song` VALUES (101, 25, 69);
INSERT INTO `list_song` VALUES (102, 26, 69);
INSERT INTO `list_song` VALUES (103, 48, 69);
INSERT INTO `list_song` VALUES (104, 80, 68);
INSERT INTO `list_song` VALUES (105, 64, 68);
INSERT INTO `list_song` VALUES (106, 25, 68);
INSERT INTO `list_song` VALUES (107, 67, 66);
INSERT INTO `list_song` VALUES (108, 64, 66);
INSERT INTO `list_song` VALUES (109, 80, 66);
INSERT INTO `list_song` VALUES (110, 102, 23);
INSERT INTO `list_song` VALUES (112, 101, 25);
INSERT INTO `list_song` VALUES (113, 102, 30);
INSERT INTO `list_song` VALUES (114, 102, 32);
INSERT INTO `list_song` VALUES (115, 101, 34);
INSERT INTO `list_song` VALUES (116, 42, 36);
INSERT INTO `list_song` VALUES (117, 43, 36);
INSERT INTO `list_song` VALUES (118, 41, 36);
INSERT INTO `list_song` VALUES (119, 36, 38);
INSERT INTO `list_song` VALUES (120, 37, 38);
INSERT INTO `list_song` VALUES (121, 101, 38);
INSERT INTO `list_song` VALUES (122, 101, 37);
INSERT INTO `list_song` VALUES (123, 102, 39);
INSERT INTO `list_song` VALUES (124, 37, 40);
INSERT INTO `list_song` VALUES (125, 108, 40);
INSERT INTO `list_song` VALUES (126, 102, 40);
INSERT INTO `list_song` VALUES (127, 112, 41);
INSERT INTO `list_song` VALUES (128, 102, 41);
INSERT INTO `list_song` VALUES (129, 102, 42);
INSERT INTO `list_song` VALUES (130, 41, 24);
INSERT INTO `list_song` VALUES (131, 100, 23);
INSERT INTO `list_song` VALUES (132, 98, 47);
INSERT INTO `list_song` VALUES (133, 61, 47);
INSERT INTO `list_song` VALUES (134, 62, 47);
INSERT INTO `list_song` VALUES (135, 33, 49);
INSERT INTO `list_song` VALUES (136, 68, 49);
INSERT INTO `list_song` VALUES (137, 33, 49);
INSERT INTO `list_song` VALUES (138, 23, 49);
INSERT INTO `list_song` VALUES (139, 33, 50);
INSERT INTO `list_song` VALUES (140, 21, 50);
INSERT INTO `list_song` VALUES (141, 61, 52);
INSERT INTO `list_song` VALUES (142, 62, 52);
INSERT INTO `list_song` VALUES (143, 21, 60);
INSERT INTO `list_song` VALUES (144, 22, 60);
INSERT INTO `list_song` VALUES (145, 23, 60);
INSERT INTO `list_song` VALUES (146, 63, 58);
INSERT INTO `list_song` VALUES (147, 98, 58);
INSERT INTO `list_song` VALUES (148, 63, 53);
INSERT INTO `list_song` VALUES (149, 30, 54);
INSERT INTO `list_song` VALUES (150, 61, 56);
INSERT INTO `list_song` VALUES (151, 63, 56);
INSERT INTO `list_song` VALUES (152, 98, 57);
INSERT INTO `list_song` VALUES (153, 32, 54);
INSERT INTO `list_song` VALUES (154, 22, 57);
INSERT INTO `list_song` VALUES (155, 98, 59);
INSERT INTO `list_song` VALUES (156, 63, 59);
INSERT INTO `list_song` VALUES (157, 62, 61);
INSERT INTO `list_song` VALUES (158, 22, 61);
INSERT INTO `list_song` VALUES (159, 68, 51);
INSERT INTO `list_song` VALUES (160, 35, 51);
INSERT INTO `list_song` VALUES (161, 32, 51);
INSERT INTO `list_song` VALUES (162, 33, 61);
INSERT INTO `list_song` VALUES (163, 86, 43);
INSERT INTO `list_song` VALUES (164, 100, 44);
INSERT INTO `list_song` VALUES (165, 87, 45);
INSERT INTO `list_song` VALUES (166, 86, 45);
INSERT INTO `list_song` VALUES (167, 100, 44);
INSERT INTO `list_song` VALUES (168, 88, 46);
INSERT INTO `list_song` VALUES (169, 99, 73);
INSERT INTO `list_song` VALUES (170, 88, 74);
INSERT INTO `list_song` VALUES (171, 99, 74);
INSERT INTO `list_song` VALUES (172, 88, 73);
INSERT INTO `list_song` VALUES (173, 103, 78);
INSERT INTO `list_song` VALUES (174, 103, 84);
INSERT INTO `list_song` VALUES (175, 103, 75);
INSERT INTO `list_song` VALUES (176, 103, 76);
INSERT INTO `list_song` VALUES (177, 103, 77);
INSERT INTO `list_song` VALUES (178, 103, 79);
INSERT INTO `list_song` VALUES (179, 88, 80);
INSERT INTO `list_song` VALUES (180, 99, 80);
INSERT INTO `list_song` VALUES (181, 103, 80);
INSERT INTO `list_song` VALUES (182, 104, 80);
INSERT INTO `list_song` VALUES (183, 104, 81);
INSERT INTO `list_song` VALUES (184, 88, 82);
INSERT INTO `list_song` VALUES (185, 99, 82);
INSERT INTO `list_song` VALUES (186, 105, 83);
INSERT INTO `list_song` VALUES (187, 99, 48);
INSERT INTO `list_song` VALUES (188, 95, 26);
INSERT INTO `list_song` VALUES (189, 96, 27);
INSERT INTO `list_song` VALUES (190, 97, 26);
INSERT INTO `list_song` VALUES (191, 95, 28);
INSERT INTO `list_song` VALUES (192, 98, 29);
INSERT INTO `list_song` VALUES (193, 62, 29);
INSERT INTO `list_song` VALUES (194, 87, 31);
INSERT INTO `list_song` VALUES (195, 61, 31);
INSERT INTO `list_song` VALUES (196, 63, 31);
INSERT INTO `list_song` VALUES (197, 87, 55);
INSERT INTO `list_song` VALUES (198, 96, 55);
INSERT INTO `list_song` VALUES (199, 98, 33);
INSERT INTO `list_song` VALUES (200, 63, 33);
INSERT INTO `list_song` VALUES (201, 105, 83);
INSERT INTO `list_song` VALUES (202, 106, 83);
INSERT INTO `list_song` VALUES (203, 107, 53);
INSERT INTO `list_song` VALUES (204, 107, 60);
INSERT INTO `list_song` VALUES (205, 108, 8);
INSERT INTO `list_song` VALUES (206, 112, 24);
INSERT INTO `list_song` VALUES (207, 113, 40);
INSERT INTO `list_song` VALUES (208, 109, 8);
INSERT INTO `list_song` VALUES (209, 107, 23);
COMMIT;

-- ----------------------------
-- Table structure for membership
-- ----------------------------
DROP TABLE IF EXISTS `membership`;
CREATE TABLE `membership` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `renewal_time` bigint(20) DEFAULT NULL COMMENT '续费时间',
  `expire_time` bigint(20) DEFAULT NULL COMMENT '到期时间',
  `consumer_id` int(11) DEFAULT NULL COMMENT '客户id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of membership
-- ----------------------------
BEGIN;
INSERT INTO `membership` VALUES (1, 1592021656266, 1597205656266, 1);
COMMIT;

-- ----------------------------
-- Table structure for rank
-- ----------------------------
DROP TABLE IF EXISTS `rank`;
CREATE TABLE `rank` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `song_list_id` int(11) NOT NULL COMMENT '歌曲列表id',
  `consumer_id` int(11) NOT NULL COMMENT '用户id',
  `score` int(11) NOT NULL DEFAULT '0' COMMENT '评分',
  PRIMARY KEY (`id`),
  UNIQUE KEY `consumerId` (`consumer_id`,`song_list_id`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of rank
-- ----------------------------
BEGIN;
INSERT INTO `rank` VALUES (1, 2, 1, 2);
INSERT INTO `rank` VALUES (2, 2, 2, 3);
INSERT INTO `rank` VALUES (3, 1, 1, 10);
INSERT INTO `rank` VALUES (7, 13, 1, 5);
INSERT INTO `rank` VALUES (19, 21, 1, 5);
INSERT INTO `rank` VALUES (20, 31, 1, 5);
INSERT INTO `rank` VALUES (21, 5, 1, 0);
INSERT INTO `rank` VALUES (24, 11, 1, 4);
INSERT INTO `rank` VALUES (25, 10, 1, 5);
INSERT INTO `rank` VALUES (27, 6, 1, 6);
INSERT INTO `rank` VALUES (28, 7, 1, 10);
INSERT INTO `rank` VALUES (29, 1, 26, 4);
INSERT INTO `rank` VALUES (30, 7, 26, 2);
INSERT INTO `rank` VALUES (32, 3, 26, 5);
INSERT INTO `rank` VALUES (33, 14, 26, 9);
INSERT INTO `rank` VALUES (34, 9, 1, 10);
INSERT INTO `rank` VALUES (35, 2, 26, 10);
COMMIT;

-- ----------------------------
-- Table structure for singer
-- ----------------------------
DROP TABLE IF EXISTS `singer`;
CREATE TABLE `singer` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(45) NOT NULL COMMENT '歌手名',
  `sex` int(11) DEFAULT NULL COMMENT '性别',
  `pic` varchar(255) DEFAULT NULL COMMENT '照片',
  `birth` datetime DEFAULT NULL COMMENT '出生年月',
  `location` varchar(45) DEFAULT NULL COMMENT '地点',
  `introduction` varchar(1024) DEFAULT NULL COMMENT '说明',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of singer
-- ----------------------------
BEGIN;
INSERT INTO `singer` VALUES (1, 'Sleepmakeswaves', 2, '/img/singerPic/8630651c8e6f4e9a8b3c92c2eb594e60.jpg', '2014-03-07 00:00:00', '不明', 'sleepmakeswaves have announced a national headlining tour for July and August, launching their second album \'Love Of Cartography\'.\nsleepmakeswaves have announced a national headlining tour for July and August, launching their second album \'Love Of Cartography\'.\n　　Known for the passionate energy they bring to live instrumental rock, the band will take their epic and climactic live show around the country for their biggest shows to date. The album and tour follows a massive 3 years of touring in support of ARIA-nominated debut \'...and so we destroyed everything\' which has seen them tour Australia, the US, UK and Europe multiple times.');
INSERT INTO `singer` VALUES (2, '周杰伦', 1, '/img/singerPic/e2b13b0983f24c6fbef9f8e344e82164.jpg', '1979-01-08 17:29:15', '中国台湾', '著名歌手，音乐人，词曲创作人，编曲及制作人，MV及电影导演。新世纪华语歌坛领军人物，中国风歌曲始祖，被时代周刊誉为“亚洲猫王”，是2000年后亚洲流行乐坛最具革命性与指标性的创作歌手，亚洲销量超过3100万张，有“亚洲流行天王”之称，开启华语乐坛“R&B时代”与“流行乐中国风”的先河，周杰伦的出现打破了亚洲流行乐坛长年停滞不前的局面，为亚洲流行乐坛翻开了新的一页，是华语乐坛真正把R&B提升到主流高度的人物，引领华语乐坛革命整十年，改写了华语乐坛的流行方向。');
INSERT INTO `singer` VALUES (3, '惘闻', 2, '/img/singerPic/9bd3dad1ec364275b0a827eb4e0f1d93.jpg', '1999-11-25 00:00:00', '中国', '中国器乐摇滚领军乐队—惘闻，1999年成立于中国北方的海滨城市大连。乐队由：吉他手：谢玉岗；吉他手：耿鑫；贝斯手：徐增铮；鼓手：周连江；键盘手：张岩峰；号手：黄凯，6人组成；成军近20年的惘闻，至今发行过10张录音室专辑，1张电影原声专辑，1张与瑞典后摇乐团Pg.Lost共同发行的Split专辑。 惘闻一直保持着勤奋且低调的创作之姿，不断突破创新，不仅是中国后摇滚、器乐摇滚的绝对代表乐队，更一直活跃在国际舞台之上；乐队展开过四次大规模的欧洲巡演，2018年1月前往冰岛录制第十张专辑《看不见的城市》并于同年7月发行。 China’s most prominent instrumental band Wang Wen begins 20 years ago in the coastal city Dalian. By now they have released 9 studio albums, 1 OST album and 1 split vinyl with the Swedish band Pg.Lost. Wang Wen is indeed an incredibly creative band and productive at the same time. The band is well respected in China for their immersive and deeply moving music. They are also very active on the international stages, having toured in Europe four times and recorded their tenth album in Iceland. The new album will be released globally this year in 2018, and its going to be their most poetical work.');
INSERT INTO `singer` VALUES (4, 'Athletics', 2, '/img/singerPic/58241306869e4600a5b87bb505faae81.png', '2008-02-13 00:00:00', '美国', 'ATHLETICS是一个独摇滚乐队,2008年秋成立于纽约州的Oneont，乐队组建时，Garrett Yaeger和John Cannon刚离开The Cast Before The Break。乐队起初是以Garrett独奏的形式开始，但有了John和Howie Cohen、Jimmy Boyce的加入，ATHLETICS很快成为了一个完整的乐队。当他们有足够的词曲,立刻在Oneonta灌制了一个五首歌的EP\"Sleep Comes In Interludes\", 由The Cast Before The Break前成员TJ Foster制作。发行了EP后, 乐队继续创作，直到准备好录制第一张完整连贯的专辑，这是他们的处女秀，在2010年的秋冬季完成。由Moving Mountains \' Greg Dunn制作，Deep Elm Records发行, ATHLETICS首张大碟\"Why Aren\'t I Home?\"2010年10月26日正式面市。');
INSERT INTO `singer` VALUES (5, 'MONO', 2, '/img/singerPic/3827534bc5954dc6963d7cf256254215.jpg', '1974-07-27 00:00:00', '日本', 'New Noise荣誉呈现 MONO “Nowhere Now Here” 2019中国巡演 3月1日 北京 糖果三层 3月2日 上海 Modernsky Lab 3月3日 杭州 MAO Livehouse 3月5日 南京 欧拉艺术空间 3月6日 武汉 VOX Livehouse 3月7日 广州 MAO Livehouse 3月8日 深圳 HOU Live 3月9日 成都 正火艺术中心 3月10日 昆明 Modernsky Lab 购票：秀动网 Info：newnoise.cn 【乐队联系】 亚洲巡演经纪 Jef/NewNoise jef@newnoise.cn');
INSERT INTO `singer` VALUES (6, 'Aural Method', 2, '/img/singerPic/2fac2dda642640b99085c1f009fd86db.jpg', '2012-08-13 00:00:00', 'Houston', '无');
INSERT INTO `singer` VALUES (7, '艺声', 1, '/img/singerPic/yisheng.jpg', '1984-08-24 00:00:00', '韩国', '韩国著名男子团体Super Junior成员之一。2001年参加Starlight Casting System Casting，获得SM BEST选拔大赛歌唱赛第一名。经过长达5年的练习生训练，于2005年11月6日以Super Junior的身份正式出道。有着“艺术般声音”的他，被冠以“艺声”这个名号，是队中公认唱功最好的成员之一，因深沉、富有磁性且感情丰富的嗓音而在队里担当主唱。曾表演音乐剧、为多部电视剧演唱OST。值得一提的是，他也是朱一丹女士的疯狂追求者之一。');
INSERT INTO `singer` VALUES (8, 'Ennio Morricone', 1, '/img/singerPic/Morricone.jpg', '1928-11-10 00:00:00', '意大利', '埃尼欧·莫里科内，意大利作曲家，生于罗马，曾为超过500部的电影电视写过配乐。2007年他获得奥斯卡终身成就奖，成为第二位获此殊荣的作曲家。他获得两次格莱美奖，两次金球奖，五次英国电影和电视艺术学院奖等多项音乐奖项。');
INSERT INTO `singer` VALUES (9, '林俊杰', 1, '/img/singerPic/linjunjie.jpg', '1981-03-27 00:00:00', '新加坡', '著名男歌手，作曲人、作词人、音乐制作人，偶像与实力兼具。林俊杰出生于新加坡的一个音乐世家。在父母的引导下，4岁就开始学习古典钢琴，不善言辞的他由此发现了另一种与人沟通的语言。小时候的林俊杰把哥哥林俊峰当作偶像，跟随哥哥的步伐做任何事，直到接触流行音乐后，便爱上创作这一条路。2003年以专辑《乐行者》出道，2004年一曲《江南》红遍两岸三地，凭借其健康的形象，迷人的声线，出众的唱功，卓越的才华，迅速成为华语流行乐坛的领军人物之一，迄今为止共创作数百首音乐作品，唱片销量在全亚洲逾1000万张。');
INSERT INTO `singer` VALUES (10, '王力宏', 1, '/img/singerPic/wanglihong.jpg', '1976-05-17 14:00:30', '美国', '中国著名流行歌手、词曲创作音乐人；亚洲华语流行乐坛最具代表性的创作、偶像、实力派音乐偶像巨星。1995年发行首张专辑《情敌贝多芬》在台湾出道，亦是金曲奖中最年轻的封王者，其唱片总销量在全亚洲已超过2500万张。从改编歌曲《龙的传人》融合西方电子节奏和东方旋律的华人中式嘻哈风，再到为华语流行乐注入新元素，进一步将其推向全世界。超高唱片销量便可以证明力宏的影响力毋庸置疑的强。况且身为金曲奖常客，3次接受CNN电视台访问。首创Chinked-out曲风，将中国风推向世界。');
INSERT INTO `singer` VALUES (11, 'Eminem', 1, '/img/singerPic/Eminem.jpg', '1972-10-17 15:35:23', '美国', '埃米纳姆（Eminem）是美国的一名说唱歌手。其风格类型为：Hardcore Rap（硬核说唱）。埃米纳姆最大的突破就是证明白人也能介入到黑人一统天下的说唱（RAP）界中，而且获得巨大的成功。同时他的叛逆不仅长期以来深受美国青少年喜爱，也让他在舆论中始终遭到抨击。Eminem获得的奖杯总数窜至历史第三位，居麦当娜和皮特-加布里埃尔之后。');
INSERT INTO `singer` VALUES (12, '李荣浩', 1, '/img/singerPic/lironghao.jpg', '1985-07-11 21:52:23', '中国安徽', '李荣浩，1985年7月11日生于蚌埠，中国流行音乐制作人、歌手、吉他手。曾为众多艺人创作歌曲以及担任制作人，也曾为多部电影与多款电子游戏制作音乐。2013年9月17日发行个人首张原创专辑《模特》，凭借这张专辑入围第25届金曲奖最佳国语男歌手奖、最佳新人奖、最佳专辑制作人、最佳国语专辑、最佳作词奖等五项大奖提名，成为最大黑马，实现了从制作人到歌手的华丽转身。');
INSERT INTO `singer` VALUES (13, '田馥甄', 0, '/img/singerPic/tianfuzhen.jpg', '1983-03-30 21:55:44', '中国台湾', '艺名Hebe，台湾知名女艺人，女子演唱团体S.H.E组合成员，出生于台湾新竹县新丰乡，于2000年参加“宇宙2000实力美少女争霸战”选秀活动，并于同年与宇宙唱片（华研唱片前身）签约培训，接着在隔年与Selina、Ella组成S.H.E，并于2001年9月11日发行S.H.E首张专辑《女生宿舍》正式出道。2010年下半年，S.H.E正式迈向“单飞不解散”阶段，接着同年9月3日，使用本名“田馥甄”推出首张个人专辑《To Hebe》');
INSERT INTO `singer` VALUES (14, '许嵩', 1, '/img/singerPic/xusong.jpg', '1986-05-14 21:58:45', '中国安徽', '著名作词人、作曲人、唱片制作人、歌手。内地独立音乐之标杆人物，有音乐鬼才之称。2009年独立出版首张词曲全创作专辑《自定义》，2010年独立出版第二张词曲全创作专辑《寻雾启示》，两度掀起讨论热潮，一跃成为内地互联网讨论度最高的独立音乐人。2011年加盟海蝶音乐，推出第三张词曲全创作专辑《苏格拉没有底》，发行首月即在大陆地区摘下唱片销量榜冠军，轰动全国媒体，并拉开全国巡回签售及歌迷见面会。');
INSERT INTO `singer` VALUES (15, '张国荣', 1, '/img/singerPic/zhangguorong.jpg', '1956-09-12 22:02:38', '中国香港', '张国荣是一位在全球华人社会和亚洲地区具有影响力的著名歌手、演员和音乐人；大中华区乐坛和影坛巨星；演艺圈多栖发展最成功的代表之一。张国荣是香港乐坛的殿堂级歌手之一，曾获得香港乐坛最高荣誉金针奖；他是第一位享誉韩国乐坛的华人歌手，亦是华语唱片在韩国销量纪录保持者。他通晓词曲创作，曾担任过MTV导演、唱片监制、电影编剧、电影监制。他于1991年当选香港电影金像奖影帝。。。');
INSERT INTO `singer` VALUES (16, '杨宗纬', 1, '/img/singerPic/yangzongwei.jpg', '1978-04-04 22:04:47', '中国台湾', '大学时期参加台湾歌唱选秀节目《超级星光大道》获选为第一届“人气王”。比赛的时候，杨宗纬歌声阳刚而细腻，富含感情，辨识度高，感染力强，以演唱抒情歌曲见长，选曲跨越性别界线，无论是男女歌手的抒情歌曲，经过他重新诠释之后，常常都可以得到不输原唱或甚至超越原唱的评价。出道后屡创多项记录，包括发行首张专辑，便以新人之姿登上台北小巨蛋举办个人演唱会。。。');
INSERT INTO `singer` VALUES (17, '朴树', 1, '/img/singerPic/pushu.jpg', '1973-11-08 22:07:08', '中国江苏', '中国大陆歌手，音乐人。1996年10月正式成为“麦田音乐”签约歌手，为简略笔划而定艺名朴树。首支单曲《火车开往冬天》，96年底推出后成绩斐然。99年1月，推出首张个人专辑《我去两千年》。99年12月与华纳唱片正式签订唱片合约，成为其亚太区旗下的第一位内地歌手，其首张专辑《我去两千年》将由华纳重新混录和拍摄最新单曲录影带后，于2000年上半年在海外隆重上市。代表作品：《那些花儿》，《白桦林》，《生如夏花》。主要成就：中歌榜最佳新人奖，最受欢迎男歌手，年度最佳制作人奖。');
INSERT INTO `singer` VALUES (18, '李克勤', 1, '/img/singerPic/likeqin.jpg', '1967-12-06 22:10:04', '中国香港', '中国香港很有影响力的粤语流行曲歌手与演员。1985年凭《雾之恋》夺得“十九区业余歌唱大赛”冠军而晋身乐坛。曾于2002、2003和2005年度《十大劲歌金曲颁奖典礼》中三度夺得「最受欢迎男歌手」，于2003年度《叱吒乐坛流行榜颁奖典礼》上获得「叱吒乐坛我最喜爱的男歌手」，并于《第二十七届十大中文金曲颁奖典礼》(2004年度)上夺得「最优秀流行男歌手大奖」，2010年度音乐先锋榜颁奖礼 ── 20家电台联颁亚太歌手奖。');
INSERT INTO `singer` VALUES (19, '张碧晨', 0, '/img/singerPic/zhangbichen.jpg', '1989-09-10 22:15:16', '中国天津', '1989年9月10日出生于中国天津，中国女歌手。 2013年，张碧晨以韩国女子组合“Sunny days ”出道，并获得“K-POP ”世界庆典“最优秀奖”。2014年7月，张碧晨参加第三季《中国好声音》，以一首《她说》进入那英组，并于10月7日以一首《时间去哪儿了》荣获第三季《中国好声音》全国总冠军，成为《中国好声音》首位女冠军。');
INSERT INTO `singer` VALUES (20, 'IU', 0, '/img/singerPic/IU.jpg', '1993-05-16 22:22:00', '韩国', '李知恩 (IU)，1993年5月16日出生于韩国首尔特别市，韩国女歌手、演员、主持人。2008年以一首《迷儿》正式出道，历经一年的练习生生涯。2011年以一首《好日子》在韩国走红，随后于2011年末推出正规二辑《Last Fantasy》 PK记录74次，AK约90次。2013年IU发行正规三辑《MODERN TIMES》再次获得关注。2012年~2015年分别位列韩国福布斯名人榜第三、第八、第十和第十四位。2015年，发行迷你专辑《CHAT-SHIRE》');
INSERT INTO `singer` VALUES (21, '金泰妍', 0, '/img/singerPic/taiyan.jpg', '1989-03-09 00:33:15', '韩国', '金泰妍(김태연/ Kim Tae-yeon/金泰耎)，艺名太妍(태연/TaeYeon)，1989年3月9日出生于韩国全罗北道全州市，韩国女歌手、主持人，女子演唱团体少女时代成员之一。2004年在第八届SM青少年选拔大赛歌王中夺得第一名，进入韩国SM娱乐有限公司开始练习生生涯。2007年8月以演唱团体少女时代成员身份正式出道。2008年为韩国KBS电视台电视剧《快刀洪吉童》演唱主题曲《如果》；同年12月凭借歌曲《听得见吗》获得第23届韩国金唱片大奖人气奖 。');
INSERT INTO `singer` VALUES (23, '毛不易', 1, '/img/singerPic/maobuyi.jpg', '1994-10-01 18:59:43', '中国黑龙江', '原名王维家，1994年10月1日出生于黑龙江省齐齐哈尔市泰来县，中国内地流行乐男歌手，毕业于杭州师范大学护理专业。');
INSERT INTO `singer` VALUES (24, '胡歌', 1, '/img/singerPic/huge.jpg', '1982-09-02 17:52:02', '中国上海', '中国著名男演员、歌手，有“古装王子”的美称。2005年毕业于上海戏剧学院01级表演系本科，在电视连续剧《仙剑奇侠传》中成功塑造了豪爽深情的“李逍遥”而成名，他还为此剧唱插曲《六月的雨》《逍遥叹》等。胡歌主演过多部广为人知的影视剧，多部电视剧打破电视台收视记录。其人擅长摄影，文采飞扬，志做导演，频唱影视剧歌曲。2013年，主演的话剧《如梦之梦》和《永远的尹雪艳》登上舞台。');
INSERT INTO `singer` VALUES (25, '陈势安', 1, '/img/singerPic/chengshian.jpg', '1984-06-04 17:57:54', '马来西亚', '陈势安（1984年6月4日－）为马来西亚籍的西马男歌手，出生于槟城州威省大山脚，出道前是个化妆师。2011年发行个人第三张专辑《再爱一遍，天后陈势安》。');
INSERT INTO `singer` VALUES (26, '王菲', 0, '/img/singerPic/wangfei.jpg', '1969-08-08 17:58:31', '中国北京', '中国著名女歌手、演员。是继邓丽君后大中华地区成就最高、影响力最大的华语女歌手。以其极具辨识度的天籁空灵般嗓音，在华语歌坛创造了属于她自己的时代。她是首位登上美国《时代周刊》封面并接受CNN专访的华语歌手。她是身价最高，演唱会上座率最高，演唱会票房累计最高的华语女歌手。王菲北京出生。1987年放弃厦门大学生物系的录取跟随父母移居香港，并拜师戴思聪学习声乐，1989年签约新艺宝唱片公司并发行了第一张个人专辑，从此正式步入乐坛，曾使用艺名王靖雯。');
INSERT INTO `singer` VALUES (27, 'Álvaro Soler', 1, '/img/singerPic/soler.jpg', '1991-01-01 23:43:19', '西班牙', '全名是Álvaro Tauchert Soler，是一位新晋西班牙歌手，流行音乐作曲家。出生于1991年，西班牙巴塞罗纳。');
INSERT INTO `singer` VALUES (28, 'Celine Dion', 0, '/img/singerPic/1586075898639Celine Dion.png', '1968-03-30 00:00:00', '加拿大', '1980年，12岁的席琳·迪翁步入歌坛，15岁时推出首支法文单曲，1990年，推出首张英文专辑《UNISON》。1996年为美国亚特兰大奥运会演唱了主题曲《The Power of The Dream》。1997年为电影《泰坦尼克号》献唱片尾曲《My Heart Will Go On》，并获得第70届奥斯卡最佳电影歌曲奖。');
INSERT INTO `singer` VALUES (29, '胡伟立', 1, '/img/singerPic/1586076393834胡伟立.png', '1937-01-01 00:00:00', '中国江苏', '中国音乐家协会会员、中国电影家协会会员、中国电影音乐学会特约理事、香港作曲家作词家协会（CASH）会员、香港弦乐教师协会理事、香港艺术家联盟会员、香港电影戏剧总会会员。主要作品有《神州行组曲》、《北国风云》、《C大调中胡协奏曲》等大型合奏曲。');
INSERT INTO `singer` VALUES (30, '五月天', 2, '/img/singerPic/1586076633782五月天.jpg', '1997-03-29 00:00:00', '中国台湾', '五月天（Mayday），中国台湾摇滚乐团，由温尚翊（怪兽）、陈信宏（阿信）、石锦航（石头）、蔡升晏（玛莎）、刘谚明（冠佑）五位成员组成。\n乐团前身为“So Band”乐团，在1997年3月29日更名为“五月天”。');
INSERT INTO `singer` VALUES (31, 'Beyond', 2, '/img/singerPic/1586078551461Beyond.jpg', '1983-01-01 00:00:00', '中国香港', '中国香港摇滚乐队，由黄家驹、黄贯中、黄家强、叶世荣组成。');
INSERT INTO `singer` VALUES (32, 'Ramin Djawadi', 1, '/img/singerPic/1586078732611Ramin Djawadi.jpg', '1974-06-05 00:00:00', '德国', '德籍伊朗作曲家，为电影和电视剧担任管弦配乐作曲家，因曾获得格莱美奖提名而逐渐为人所熟知。');
INSERT INTO `singer` VALUES (33, '小林未郁', 0, '/img/singerPic/1586078973463小林未郁.jpeg', '1978-01-01 00:00:00', '日本', '日本女钢琴家、歌手。');
INSERT INTO `singer` VALUES (34, 'Various Artists', 3, '/img/singerPic/1586079436284Various Artists.jpg', '2020-04-05 00:00:00', '', '暂无介绍');
INSERT INTO `singer` VALUES (35, '少女时代', 2, '/img/singerPic/1586090215632少女时代.jpg', '2007-08-05 00:00:00', '韩国', '少女时代（Girls\' Generation）是韩国SM娱乐有限公司于2007年推出的女子流行演唱团体，由金泰妍、郑秀妍、李顺圭、黄美英、金孝渊、权俞利、崔秀英、林允儿和徐珠贤9人组成，现以5人形式进行演艺活动。');
INSERT INTO `singer` VALUES (36, 'The Piano Guys', 2, '/img/singerPic/1586089570101the piano guys.jpg', '2012-07-01 00:00:00', '美国', 'The Piano Guys直译为“钢琴男孩儿”，台湾翻译成“酷音乐团”。apple music在中国区上架后，有译“钢琴达人”。作为Neo-classical目前的代表性乐团之一，初衷是创造出能够激励人们的音乐和视频，想将自己的音乐带给这个世界。The Piano Guys改编的古典音乐融合自然、过渡流畅，MV拍摄优美大气、富于想象力。');
INSERT INTO `singer` VALUES (37, 'Peter Broderick', 1, '/img/singerPic/1586081310686Peter Broderick.jpeg', '1987-01-20 00:00:00', '美国', '是美国音乐家和作曲家，来自俄勒冈州的卡尔顿。他以自己的名义发布的独奏材料，成为了Efterklang的成员之一，并与多个乐团合作创作，作为一个自由音乐家演奏。');
INSERT INTO `singer` VALUES (38, 'Shayne Ward', 1, '/img/singerPic/1586090400493Shayne Ward.jpg', '1984-10-16 00:00:00', '英国', '2005年，肖恩·沃德因获得英国歌唱选秀节目《The X Factor》年度总冠军而成名 [1]  。赛后，签约索尼旗下公司Syco Music，并发行单曲《That\'s my goal》，以超过31.3万张的销售成绩创下英国唱片单曲首日畅销纪录第三名和英国单日付费下载次数最多的单曲吉尼斯纪录。');
INSERT INTO `singer` VALUES (39, 'Yiruma', 1, '/img/singerPic/1586090648269Yiruma.jpg', '1978-02-15 00:00:00', '韩国', '李闰珉出生于韩国首尔，在英国长大，曾就学于英国伦敦\'The Purcell School\' 特别音乐学校，后来毕业于 \'King\'s College London\' ，主修作曲。');
INSERT INTO `singer` VALUES (40, 'Josh Ritter', 1, '/img/singerPic/1586090939016Josh Ritter.jpg', '1976-11-21 00:00:00', '美国', 'Josh Ritter (born October 21, 1976) is an American singer-songwriter, guitarist and author who performs and records with The Royal City Band.');
INSERT INTO `singer` VALUES (41, 'Tone Damli Aaberge', 0, '/img/singerPic/1586091104616Tone Damli Aaberge.jpg', '1988-04-12 00:00:00', '挪威', 'Tone Damli Aaberge/Tone Damli，是位来自挪威的年轻女歌手。当她才17岁的时候，曾参加了2005年那届挪威偶像。可惜她在比赛中获得亚军，屈居于Jorun Stiansen之后。她是2009年欧洲电视网歌唱大赛里的总决赛选手，她演唱了一首\"Butterflies\"，可惜最后也只得到亚军，屈居于Alexander Rybak之后');
COMMIT;

-- ----------------------------
-- Table structure for song
-- ----------------------------
DROP TABLE IF EXISTS `song`;
CREATE TABLE `song` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `singer_id` int(11) NOT NULL COMMENT '歌手id',
  `name` varchar(128) NOT NULL COMMENT '歌曲名',
  `introduction` varchar(255) DEFAULT NULL COMMENT '说明',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '发行时间',
  `update_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `pic` varchar(255) DEFAULT NULL COMMENT '照片',
  `lyric` text COMMENT '歌词',
  `url` varchar(255) NOT NULL COMMENT 'url',
  `downloads` int(11) DEFAULT '0',
  `play_count` int(11) DEFAULT '0',
  `is_pay` bit(1) DEFAULT b'0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=134 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of song
-- ----------------------------
BEGIN;
INSERT INTO `song` VALUES (9, 2, '周杰伦-稻香', '魔杰座', '2018-12-27 08:17:12', '2020-06-14 02:34:14', '/img/songPic/daoxiang.jpg', '[by:橘子大宝宝]\n[ti:稻香]\n[ar:周杰伦]\n[00:31.00]对这个世界如果你有太多的抱怨\n[00:34.05]跌倒了就不敢继续往前走\n[00:37.02]为什麽人要这麽的脆弱 堕落\n[00:41.55]请你打开电视看看\n[00:43.14]多少人为生命在努力勇敢的走下去\n[00:46.89]我们是不是该知足\n[00:49.43]珍惜一切 就算没有拥有\n[00:54.24]还记得你说家是唯一的城堡\n[00:57.49]随着稻香河流继续奔跑\n[01:00.42]微微笑 小时候的梦我知道\n[01:05.51]不要哭让萤火虫带着你逃跑\n[01:09.21]乡间的歌谣永远的依靠\n[01:12.12]回家吧 回到最初的美好\n[01:41.14]不要这麽容易就想放弃 就像我说的\n[01:44.59]追不到的梦想 换个梦不就得了\n[01:47.55]为自己的人生鲜艳上色 先把爱涂上喜欢的颜色\n[01:51.80]笑一个吧 功成名就不是目的\n[01:55.62]让自己快乐快乐这才叫做意义\n[01:58.51]童年的纸飞机 现在终於飞回我手里\n[02:04.41]所谓的那快乐 赤脚在田里追蜻蜓追到累了\n[02:08.62]偷摘水果被蜜蜂给叮到怕了 谁在偷笑呢\n[02:13.16]我靠着稻草人吹着风唱着歌睡着了\n[02:16.72]哦 哦 午后吉它在虫鸣中更清脆\n[02:19.58]哦 哦 阳光洒在路上就不怕心碎\n[02:22.53]珍惜一切 就算没有拥有\n[02:27.36]还记得你说家是唯一的城堡\n[02:31.24]随着稻香河流继续奔跑\n[02:34.18]微微笑 小时候的梦我知道\n[02:39.35]不要哭让萤火虫带着你逃跑\n[02:42.94]乡间的歌谣永远的依靠\n[02:45.91]回家吧 回到最初的美好\n[02:51.03]还记得你说家是唯一的城堡\n[02:54.55]随着稻香河流继续奔跑\n[02:57.62]微微笑 小时候的梦我知道\n[03:02.67]不要哭让萤火虫带着你逃跑\n[03:06.35]乡间的歌谣永远的依靠\n[03:09.23]回家吧 回到最初的美好', '/song/周杰伦-稻香.mp3', 13, 12, b'1');
INSERT INTO `song` VALUES (10, 2, '周杰伦&潘儿-夜的第七章', '依然范特西', '2018-12-27 08:26:27', '2020-06-20 01:28:57', '/img/songPic/yedediqizhang.jpg', '[00:00.00] 作曲 : 周杰伦\n[00:01.00] 作词 : 黄俊郎\n[00:31.55]编曲：钟兴民，林迈可\n[00:42.99]1983年小巷12月晴朗\n[00:45.69]夜的第7章\n[00:46.84]打字机继续推向接近事实的那下一行\n[00:49.59]石楠烟斗的雾\n[00:51.00]飘向枯萎的树沉默的对我哭诉\n[00:54.18]贝克街旁的的圆形广场\n[00:56.43]盔甲战士臂上\n[00:57.87]鸢尾花的徽章微亮\n[01:00.15]无人马车声响深夜的拜访\n[01:02.39]邪恶在维多利亚的月光下血色的开场\n[01:05.45]消失的手枪焦黑的手杖\n[01:07.48]融化的蜡像谁不在场\n[01:09.26]珠宝箱上符号的假象\n[01:11.04]矛盾通往他堆砌的死巷\n[01:12.76]证据被完美埋葬\n[01:14.22]那嘲弄苏格兰警场的嘴角上扬\n[01:16.28]如果邪恶是华丽残酷的乐章（那么正义 是深沉无奈的惆怅）\n[01:21.95]他的终场我会亲手写上（那我就点亮 在灰烬中的微光）\n[01:27.45]晨曦的光风干最后一行忧伤（那么雨滴 会洗净黑暗的高墙）\n[01:33.03]黑色的墨染上安祥（散场灯关上 红色的布幕下降）\n[01:42.87]\n[02:04.82]事实只能穿向没有脚印的土壤\n[02:07.47]突兀的细微花香刻意显眼的服装\n[02:10.26]每个人为不同的理由戴着面具说谎\n[02:13.15]动机也只有一种名字那叫做欲望\n[02:16.00]far  farther  farther  far  far\n[02:17.37]the  father  father  far  far\n[02:18.80]越过人性的沼泽谁真的可以不被弄脏\n[02:21.57]我们可以遗忘原谅但必须\n[02:23.75]知道真相被移动\n[02:24.98]过的铁床那最后一块图终于拼上\n[02:27.28]我听见脚步声预料的软皮鞋跟\n[02:30.04]他推开门晚风晃了煤油灯一阵\n[02:32.77]打字机停在凶手的名称我转身\n[02:36.08]西敏寺的夜空开始沸腾\n[02:39.02]在胸口绽放艳丽的死亡\n[02:41.41]我品尝这最后一口甜美的真相\n[02:44.13]微笑回想正义只是安静的伸张\n[02:47.46]提琴在泰晤士\n[02:49.23]如果邪恶（我听见脚步声 预料的软皮鞋跟）\n[02:51.51]是华丽残酷的乐章（他推开门晚风晃了煤油灯一阵）\n[02:55.15]他的终场我会亲手写上（打字机停在凶手的名称我转身）\n[02:58.99]（西敏寺的夜空开始沸腾）\n[03:06.25]黑色的墨染上安祥\n[03:12.04]如果邪恶是华丽残酷的乐章\n[03:17.50]他的终场我会亲手写上\n[03:23.10]晨曦的光风干最后一行忧伤\n[03:28.68]黑色的墨染上安祥', '/song/周杰伦&潘儿-夜的第七章.mp3', 29, 20, b'1');
INSERT INTO `song` VALUES (11, 2, '周杰伦-告白气球', '床边故事', '2018-12-27 08:45:24', '2020-06-20 01:42:14', '/img/songPic/gaobaiqiqui.jpg', '[00:00.00] 作曲 : 周杰伦\n[00:01.00] 作词 : 方文山\n[00:32.840] 塞纳河畔 左岸的咖啡\n[00:35.438] 我手一杯 品尝你的美\n[00:38.655] 留下唇印的嘴\n[00:43.273] 花店玫瑰 名字写错谁\n[00:46.159] 告白气球 风吹到对街\n[00:49.225] 微笑在天上飞\n[00:53.503] 你说你有点难追 想让我知难而退\n[00:58.374] 礼物不需挑最贵 只要香榭的落叶\n[01:04.141] 喔 营造浪漫的约会 不害怕搞砸一切\n[01:09.205] 拥有你就拥有 全世界\n[01:14.289] 亲爱的 爱上你 从那天起\n[01:20.520] 甜蜜的很轻易\n[01:25.040] 亲爱的 别任性 你的眼睛\n[01:31.189] 在说我愿意\n[01:57.772] 塞纳河畔 左岸的咖啡\n[02:00.373] 我手一杯 品尝你的美\n[02:03.323] 留下唇印的嘴\n[02:08.304] 花店玫瑰 名字写错谁\n[02:10.954] 告白气球 风吹到对街\n[02:14.125] 微笑在天上飞\n[02:18.302] 你说你有点难追 想让我知难而退\n[02:23.187] 礼物不需挑最贵 只要香榭的落叶\n[02:28.500] 喔 营造浪漫的约会 不害怕搞砸一切\n[02:33.745] 拥有你就拥有 全世界\n[02:39.115] 亲爱的 爱上你 从那天起\n[02:45.012] 甜蜜的很轻易\n[02:49.827] 亲爱的 别任性 你的眼睛\n[02:55.829] 在说我愿意\n[03:00.627] 亲爱的 爱上你 恋爱日记\n[03:06.656] 飘香水的回忆\n[03:11.150] 一整瓶 的梦境 全都有你\n[03:17.249] 搅拌在一起\n[03:21.813] 亲爱的别任性 你的眼睛\n[03:31.562] 在说我愿意', '/song/周杰伦-告白气球.mp3', 7, 53, b'1');
INSERT INTO `song` VALUES (12, 2, '周杰伦-夜曲', '床边故事', '2018-12-30 02:11:23', '2020-06-14 02:34:13', '/img/songPic/gaobaiqiqui.jpg', '[00:23.310]一群嗜血的蚂蚁 被腐肉所吸引\n[00:27.490]我面无表情 看孤独的风景\n[00:30.540]失去你 爱恨开始分明\n[00:33.030]失去你 还有什N事好关心\n[00:35.770]当鸽子不再象徵和平\n[00:37.550]我终于被提醒\n[00:38.910]广场上喂食的是秃鹰\n[00:41.580]我用漂亮的押韵\n[00:43.030]形容被掠夺一空的爱情\n[00:46.720]啊 乌云开始遮蔽 夜色不干净\n[00:49.520]公园里 葬礼的回音 在漫天飞行\n[00:52.380]送你的 白色玫瑰\n[00:53.820]在纯黑的环境凋零\n[00:55.520]乌鸦在树枝上诡异的很安静\n[00:57.880]静静听 我黑色的大衣\n[00:59.870]想温暖你 日渐冰冷的回忆\n[01:02.220]走过的 走过的 生命\n[01:03.650]啊 四周弥漫雾气\n[01:05.070]我在空旷的墓地\n[01:06.340]老去后还爱你\n[01:07.430]为你弹奏萧邦的夜曲\n[01:11.550]纪念我死去的爱情\n[01:14.300]跟夜风一样的声音\n[01:17.030]心碎的很好听\n[01:19.830]手在键盘敲很轻\n[01:22.570]我给的思念很小心\n[01:25.300]你埋葬的地方叫幽冥\n[01:29.990]为你弹奏萧邦的夜曲\n[01:33.570]纪念我死去的爱情\n[01:36.340]而我为你隐姓埋名\n[01:39.150]在月光下弹琴\n[01:41.900]对你心跳的感应\n[01:44.670]还是如此温热亲近\n[01:47.410]怀念你那鲜红的唇印\n[01:53.270]\n[02:14.540]那些断翅的蜻蜓 散落在这森林\n[02:17.600]而我的眼睛 没有丝毫同情\n[02:20.450]失去你 泪水混浊不清\n[02:22.950]失去你 我连笑容都有阴影\n[02:25.680]风在长满青苔的屋顶\n[02:27.310]嘲笑我的伤心\n[02:29.170]像一口没有水的枯井\n[02:31.510]我用凄美的字型\n[02:33.030]描绘后悔莫及的那爱情\n[02:36.590]为你弹奏萧邦的夜曲\n[02:39.380]纪念我死去的爱情\n[02:42.100]跟夜风一样的声音\n[02:44.890]心碎的很好听\n[02:47.640]手在键盘敲很轻\n[02:50.370]我给的思念很小心\n[02:53.150]你埋葬的地方叫幽冥\n[02:57.700]为你弹奏萧邦的夜曲\n[03:01.360]纪念我死去的爱情\n[03:04.220]而我为你隐姓埋名 在月光下弹琴\n[03:09.620]对你心跳的感应 还是如此温热亲近\n[03:15.170]怀念你那鲜红的唇印\n[03:20.810]一群嗜血的蚂蚁 被腐肉所吸引\n[03:23.630]我面无表情 看孤独的风景\n[03:26.660]失去你 爱恨开始分明\n[03:29.070]失去你 还有什N事好关心\n[03:31.860]当鸽子不再象徵和平\n[03:33.560]我终于被提醒\n[03:35.320]广场上喂食的是秃鹰\n[03:37.670]我用漂亮的押韵\n[03:38.970]形容被掠夺一空的爱情', '/song/周杰伦-夜曲.mp3', 25, 25, b'0');
INSERT INTO `song` VALUES (13, 2, '周杰伦-红尘客栈', '十二新作', '2018-12-30 02:23:53', '2020-06-11 04:07:39', '/img/songPic/hongchengkezhan.jpg', '[by:青蒿素]\n[00:00.00] 作曲 : 周杰伦\n[00:01.00] 作词 : 方文山\n[00:04.803] 编曲：黄雨勋\n[00:07.032]\n[00:22.628] 天涯的尽头是风沙\n[00:28.000] 红尘的故事叫牵挂\n[00:33.282] 封刀隐没在寻常人家 东篱下\n[00:38.902] 闲云野鹤古刹\n[00:44.099] 快马在江湖里厮杀\n[00:49.339] 无非是名跟利放不下\n[00:54.603] 心中有江山的人岂能快意潇洒\n[01:00.090] 我只求与你共华发\n[01:07.466] 剑出鞘恩怨了 谁笑\n[01:12.296] 我只求今朝拥你入怀抱\n[01:17.706] 红尘客栈风似刀\n[01:21.615] 骤雨落宿命敲\n[01:26.716] 任武林谁领风骚\n[01:29.107] 我却只为你折腰\n[01:33.619] 过荒村野桥寻世外古道\n[01:38.999] 远离人间尘嚣\n[01:41.553] 柳絮飘 执子之手逍遥\n[01:51.203]\n[02:06.759] 檐下窗棂斜映枝桠\n[02:11.979] 与你席地对座饮茶\n[02:17.305] 我以工笔画将你牢牢地记下\n[02:23.039] 提笔不为风雅\n[02:27.989] 灯下叹红颜近晚霞\n[02:32.946] 我说缘份一如参禅不说话\n[02:38.756] 你泪如梨花洒满了纸上的天下\n[02:44.245] 爱恨如写意山水画\n[02:51.637] 剑出鞘恩怨了 谁笑\n[02:56.249] 我只求今朝拥你入怀抱\n[03:01.516] 红尘客栈风似刀\n[03:05.653] 骤雨落宿命敲\n[03:10.799] 任武林谁领风骚\n[03:13.186] 我却只为你折腰\n[03:17.523] 过荒村野桥寻世外古道\n[03:22.758] 远离人间尘嚣\n[03:25.467] 柳絮飘 执子之手逍遥\n[03:30.838]\n[03:48.576] 任武林谁领风骚\n[03:50.734] 我却只为你折腰\n[03:54.926] 你回眸多娇我泪中带笑\n[04:00.316] 酒招旗风中萧萧\n[04:04.376] 剑出鞘恩怨了', '/song/周杰伦-红尘客栈.mp3', 0, 6, b'0');
INSERT INTO `song` VALUES (14, 2, '周杰伦-开不了口', '范特西', '2018-12-30 02:36:08', '2020-06-09 10:27:03', '/img/songPic/kaibulkou.jpg', '[00:00.00] 作曲 : 周杰伦\n[00:01.00] 作词 : 徐若瑄\n[00:27.330]才离开没多久就开始  担心今天的你过得好不好\n[00:34.140]整个画面是你  想你想的睡不着\n[00:39.040]\n[00:40.920]嘴嘟嘟那可爱的模样  还有在你身上香香的味道\n[00:47.600]我的快乐是你  想你想的都会笑\n[00:53.790]\n[00:56.820]没有你在我有多难熬（没有你在我有多难熬多烦恼）\n[01:04.260]没有你烦我有多烦恼（没有你烦我有多烦恼多难熬）\n[01:07.850]\n[01:08.580]穿过云层  我试着努力向你奔跑\n[01:14.580]爱才送到  你却已在别人怀抱\n[01:20.190]\n[01:21.640]就是开不了口  让她知道\n[01:26.780]我一定会呵护着你  也逗你笑\n[01:34.180]你对我有多重要  我后悔没  让你知道\n[01:41.140]安静的听你撒娇  看你睡着  一直到老\n[01:47.270]\n[01:48.600]就是开不了口  让她知道\n[01:54.360]就是那么简单几句  我办不到\n[02:01.640]整颗心悬在半空  我只能够  远远看着\n[02:08.580]这些我都做得到  但那个人已经不是我\n[02:15.910]\n[02:44.140]没有你在我有多难熬（没有你在我有多难熬多烦恼）\n[02:50.940]没有你烦我有多烦恼（没有你烦我有多烦恼多难熬）\n[02:57.350]\n[02:57.930]穿过云层  我试着努力向你奔跑\n[03:04.270]爱才送到  你却已在别人怀抱\n[03:10.060]\n[03:11.460]就是开不了口  让她知道\n[03:16.800]我一定会呵护着你  也逗你笑\n[03:23.910]你对我有多重要  我后悔没  让你知道\n[03:30.980]安静的听你撒娇  看你睡着  一直到老\n[03:37.480]\n[03:39.700]就是开不了口  让她知道\n[03:44.380]就是那么简单几句  我办不到\n[03:51.450]整颗心悬在半空  我只能够  远远看着\n[03:58.410]这些我都做得到  但那个人已经不是我\n[04:20.750]\n[04:21.340]我总是开不了口 我总是开不了口\n[04:27.390]我只能够远远地看着你 开不了口', '/song/周杰伦-开不了口.mp3', 0, 1, b'0');
INSERT INTO `song` VALUES (15, 2, '周杰伦-菊花台', '依然范特西', '2018-12-30 02:42:47', '2018-12-30 02:42:47', '/img/songPic/juhuatai.jpg', '[by:立酱]\n[00:00.00] 作曲 : 周杰伦\n[00:00.200] 作词 : 方文山\n[00:00.600]编曲：钟兴民\n[00:01.600]制作人：周杰伦\n[00:02.600]吉他：蔡科俊Again\n[00:03.600]弦乐编写：钟兴民\n[00:04.600]Programmer：魏百谦\n[00:05.600]弦乐团：中国爱乐\n[00:06.600]录音工程：杨瑞代\n[00:07.600]录音室：ALFA STUDIO\n[00:08.600]混音工程：杨大纬\n[00:09.600]混音录音室：杨大纬录音工作室\n[00:10.600]弦乐录音师：李岳松(北京)/魏百谦(台北)\n[00:11.600]弦乐录音室：计划生育录音室(北京)/Room19 Studio (台北)\n[00:35.900]你的泪光\n[00:39.400]柔弱中带伤\n[00:42.850]惨白的月弯弯\n[00:46.350]勾住过往\n[00:49.860]夜 太漫长\n[00:53.360]凝结成了霜\n[00:56.720]是谁在阁楼上冰冷地绝望\n[01:03.820]雨 轻轻弹\n[01:07.370]朱红色的窗\n[01:10.780]我一生在纸上被风吹乱\n[01:17.730]梦 在远方\n[01:21.290]化成一缕香\n[01:24.690]随风飘散\n[01:27.250]你的模样\n[01:34.510]菊花残 满地伤\n[01:37.770]你的笑容已泛黄\n[01:42.190]花落人断肠\n[01:44.640]我心事静静淌\n[01:48.200]北风乱 夜未央\n[01:51.550]你的影子剪不断\n[01:56.000]徒留我孤单在湖面成双\n[02:30.900]花 已向晚\n[02:34.360]飘落了灿烂\n[02:37.810]凋谢的世道上\n[02:41.270]命运不堪\n[02:44.820]愁 莫渡江\n[02:48.440]秋心拆两半\n[02:51.640]怕你上不了岸\n[02:55.000]一辈子摇晃\n[02:58.850]谁 的江山\n[03:02.310]马蹄声狂乱\n[03:05.760]我一身的戎装\n[03:09.220]呼啸沧桑\n[03:12.720]天 微微亮\n[03:16.170]你轻声地叹\n[03:19.730]一夜惆怅 如此委婉\n[03:29.430]菊花残 满地伤\n[03:32.640]你的笑容已泛黄\n[03:37.160]花落人断肠\n[03:39.610]我心事静静淌\n[03:43.110]北风乱 夜未央\n[03:46.520]你的影子剪不断\n[03:50.970]徒留我孤单在湖面成双\n[04:00.700]菊花残 满地伤\n[04:03.950]你的笑容已泛黄\n[04:08.400]花落人断肠\n[04:10.900]我心事静静淌\n[04:14.410]北风乱 夜未央\n[04:17.910]你的影子剪不断\n[04:25.100]徒留我孤单在湖面成双', '/song/周杰伦-菊花台.mp3', 0, 0, b'0');
INSERT INTO `song` VALUES (16, 2, '周杰伦-牛仔很忙', '我很忙', '2018-12-30 02:48:47', '2020-06-10 14:13:29', '/img/songPic/nuizaihenmang.jpg', '[by:立酱]\n[00:00.00] 作曲 : 周杰伦\n[00:01.00] 作词 : 黄俊郎\n[00:03.00]编曲：钟兴民\n[00:04.00]制作人：周杰伦\n[00:05.00]吉他：蔡科俊Again\n[00:06.00]弦乐编写：周杰伦\n[00:07.00]小提琴：王宜桢\n[00:08.00]合声编写：周杰伦\n[00:09.00]合声：周杰伦\n[00:10.00]录音师：杨瑞代\n[00:11.00]录音室：JVR STUDIO\n[00:12.00]混音师：杨大纬\n[00:13.00]混音录音室：杨大纬录音工作室\n[00:16.35]呜啦啦啦火车笛\n[00:18.16]随着奔腾的马蹄\n[00:20.26]小妹妹吹着口琴\n[00:22.20]夕阳下美了剪影\n[00:24.05]我用子弹写日记\n[00:25.95]介绍完了风景\n[00:27.75]接下来换介绍我自己\n[00:31.91]我虽然是个牛仔\n[00:33.71]在酒吧只点牛奶\n[00:35.72]为什么不喝啤酒\n[00:37.57]因为啤酒伤身体\n[00:39.52]很多人不长眼睛\n[00:41.47]嚣张都靠武器\n[00:43.42]赤手空拳就缩成蚂蚁\n[00:47.60]不用麻烦了 不用麻烦了\n[00:48.95]不用麻烦 不用麻烦了\n[00:50.35]不用麻烦了\n[00:51.45]你们一起上 我在赶时间\n[00:52.80]每天决斗 观众都累了\n[00:53.96]英雄也累了\n[00:55.10]不用麻烦了 不用麻烦了\n[00:56.66]副歌不长 你们有几个\n[00:57.96]一起上好了\n[00:59.11]正义呼唤我 美女需要我\n[01:00.52]牛仔很忙的\n[01:26.24]我啦啦啦骑毛驴\n[01:27.94]因为马跨不上去\n[01:29.86]洗澡都洗泡泡浴\n[01:31.72]因为可以玩玩具\n[01:33.62]我有颗善良的心\n[01:35.53]都只穿假牛皮\n[01:37.68]喔跌倒时尽量不压草皮\n[01:41.64]枪口它没长眼睛\n[01:43.39]我曾经答应上帝\n[01:45.34]除非是万不得已\n[01:47.19]我尽量射橡皮筋\n[01:49.29]老板先来杯奶昔\n[01:50.99]要逃命前请你\n[01:53.15]顺便喂喂我那只小毛驴\n[01:57.41]不用麻烦了 不用麻烦了\n[01:58.73]不用麻烦 不用麻烦了\n[01:59.98]不用麻烦了\n[02:00.68]你们一起上 我在赶时间\n[02:02.53]每天决斗 观众都累了\n[02:03.93]英雄也累了\n[02:04.63]不用麻烦了 不用麻烦了\n[02:06.14]副歌不长 你们有几个\n[02:07.44]一起上好了\n[02:08.67]正义呼唤我 美女需要我\n[02:10.28]牛仔很忙的\n[02:28.18]不用麻烦了 不用麻烦了\n[02:29.58]不用麻烦 不用麻烦了\n[02:30.78]不用麻烦了\n[02:32.07]你们一起上 我在赶时间\n[02:33.62]每天决斗 观众都累了\n[02:34.88]英雄也累了\n[02:35.58]不用麻烦了 不用麻烦了\n[02:37.18]副歌不长 你们有几个\n[02:38.43]一起上好了\n[02:39.87]正义呼唤我 美女需要我\n[02:41.37]牛仔很忙的', '/song/周杰伦-牛仔很忙.mp3', 13, 6, b'0');
INSERT INTO `song` VALUES (17, 2, '周杰伦-烟花易冷', '跨时代', '2018-12-30 02:57:23', '2020-06-19 03:06:48', '/img/songPic/yanhuayileng.jpg', '[by:立酱]\n[00:00.00] 作曲 : 周杰伦\n[00:01.00] 作词 : 方文山\n[00:03.00]编曲：黄雨勋\n[00:04.00]制作人：周杰伦\n[00:05.00]录音师：杨瑞代Gary\n[00:06.00]录音室：JVR Studio\n[00:07.00]混音工程：杨大纬录音工作室\n[00:12.09]繁华声 遁入空门 折煞了世人\n[00:18.01]梦偏冷 辗转一生 情债又几本\n[00:24.32]如你默认 生死枯等\n[00:30.55]枯等一圈 又一圈的 年轮\n[00:36.99]浮图塔 断了几层 断了谁的魂\n[00:43.28]痛直奔 一盏残灯 倾塌的山门\n[00:49.26]容我再等 历史转身\n[00:55.74]等酒香醇 等你弹 一曲古筝\n[01:02.17]雨纷纷 旧故里草木深\n[01:08.58]我听闻 你始终一个人\n[01:14.35]斑驳的城门 盘踞着老树根\n[01:20.65]石板上回荡的是 再等\n[01:26.93]雨纷纷 旧故里草木深\n[01:32.97]我听闻 你仍守着孤城\n[01:39.40]城郊牧笛声 落在那座野村\n[01:45.76]缘份落地生根是 我们\n[01:54.98]听青春 迎来笑声 羡煞许多人\n[02:01.37]那史册 温柔不肯 下笔都太狠\n[02:07.39]烟花易冷 人事易分\n[02:13.51]而你在问 我是否还 认真\n[02:19.70]千年后 累世情深 还有谁在等\n[02:25.80]而青史 岂能不真 魏书洛阳城\n[02:32.08]如你在跟 前世过门\n[02:39.02]跟着红尘 跟随我 浪迹一生\n[02:44.97]雨纷纷 旧故里草木深\n[02:50.96]我听闻 你始终一个人\n[02:57.47]斑驳的城门 盘踞着老树根\n[03:03.61]石板上回荡的是 再等\n[03:09.78]雨纷纷 旧故里草木深\n[03:15.95]我听闻 你仍守着孤城\n[03:22.40]城郊牧笛声 落在那座野村\n[03:28.68]缘份落地生根是 我们\n[03:35.34]雨纷纷 旧故里草木深\n[03:37.64]我听闻 你始终一个人\n[03:39.60]斑驳的城门 盘踞着老树根\n[03:41.47]石板上回荡的是 再等\n[03:42.89]雨纷纷 雨纷纷 旧故里草木深\n[03:44.77]我听闻 我听闻 你仍守着孤城\n[03:47.48]城郊牧笛声 落在那座野村\n[03:52.16]缘份落地生根是 我们\n[03:59.91]缘份落地生根是 我们\n[04:05.74]伽蓝寺听雨声盼 永恒', '/song/周杰伦-烟花易冷.mp3', 7, 27, b'0');
INSERT INTO `song` VALUES (18, 2, '周杰伦-听妈妈的话', '依然范特西', '2018-12-30 03:08:45', '2018-12-30 03:08:45', '/img/songPic/yanhuayileng.jpg', '[00:08.619]小朋友你是否有很多问号\n[00:12.049]为什么 别人在那看漫画 我却在学画画 对着钢琴说话\n[00:17.100]别人在玩游戏 我却靠在墙壁背我的ABC\n[00:20.359]我说我要一个大大的飞机 但却得到一台旧旧录音机\n[00:25.319]为什么要听妈妈的话 长大后你就会开始懂了这段话\n[00:30.278]长大后我开始明白\n[00:32.948]为什么我跑得比别人快 飞得比别人高\n[00:35.728]将来大家看的都是我画的漫画 大家唱的都是我写的歌\n[00:40.868]妈妈的辛苦不让你看见 温暖的食谱在她心里面\n[00:46.048]有空就多多握握她的手 把手牵着一起梦游\n[00:50.988]听妈妈的话 别让她受伤 想快快长大 才能保护她\n[01:10.300]美丽的白发 幸福中发芽 天使的魔法 温暖中慈祥\n[01:30.219]在你的未来 音乐是你的王牌 拿王牌谈个恋爱\n[01:36.180]唉!我不想把你教坏 还是听妈妈的话吧 晚点再恋爱吧\n[01:40.109]我知道你未来的路 但妈比我更清楚\n[01:42.997]你会开始学其他同学在书包写东写西\n[01:46.658]但我建议最好写妈妈我会用功读书\n[01:48.219]用功读书 怎么会从我嘴巴说出\n[01:50.348]不想你输 所以要叫你用功读书\n[01:52.988]妈妈织给你的毛衣 你要好好的收着\n[01:56.180]因为母亲节到时 我要告诉她我还留着\n[01:57.988]对了 我会遇到周润发\n[01:59.949]所以你可以跟同学炫耀赌神未来是你爸爸\n[02:02.798]我找不到童年写的情书 你写完不要送人\n[02:06.349]因为过两天你会在操场上捡到\n[02:08.999]你会开始喜欢上流行歌 因为张学友开始准备唱吻别\n[02:13.009]听妈妈的话 别让她受伤 想快快长大 才能保护她\n[02:32.299]美丽的白发 幸福中发芽 天使的魔法 温暖中慈祥\n[02:52.727]听妈妈的话 别让她受伤 想快快长大 才能保护她\n[03:13.699]长大后我开始明白\n[03:18.199]为什么我跑得比别人快 飞得比别人高\n[03:20.929]将来大家看的都是我画的漫画 大家唱的都是我写的歌\n[03:26.099]妈妈的辛苦不让你看见 温暖的食谱在她心里面\n[03:31.227]有空就多多握握她的手 把手牵着一起梦游\n[03:36.239]听妈妈的话 别让她受伤 想快快长大 才能保护她\n[03:54.939]美丽的白发 幸福中发芽 天使的魔法 温暖中慈祥', '/song/周杰伦-听妈妈的话.mp3', 0, 0, b'0');
INSERT INTO `song` VALUES (19, 2, '周杰伦-七里香', '七里香', '2018-12-30 03:13:15', '2018-12-30 03:13:15', '/img/songPic/qilixiang.jpg', '[00:00.00] 作曲 : 周杰伦\n[00:01.00] 作词 : 方文山\n[00:27.430]窗外的麻雀 在电线杆上多嘴\n[00:34.330]你说这一句 很有夏天的感觉\n[00:40.980]手中的铅笔 在纸上来来回回\n[00:47.300]我用几行字形容你是我的谁\n[00:54.030]秋刀鱼的滋味 猫跟你都想了解\n[01:01.100]初恋的香味就这样被我们寻回\n[01:07.400]那温暖的阳光 像刚摘的鲜艳草莓\n[01:14.140]你说你舍不得吃掉这一种感觉\n[01:20.450]雨下整夜 我的爱溢出就像雨水\n[01:27.240]院子落叶 跟我的思念厚厚一叠\n[01:33.920]几句是非 也无法将我的热情冷却\n[01:41.510]你出现在我诗的每一页\n[01:47.470]雨下整夜 我的爱溢出就像雨水\n[01:54.120]窗台蝴蝶 像诗里纷飞的美丽章节\n[02:00.840]我接着写 把永远爱你写进诗的结尾\n[02:08.350]你是我唯一想要的了解\n[02:14.660]\n[02:41.250]雨下整夜 我的爱溢出就像雨水\n[02:47.850]院子落叶 跟我的思念厚厚一叠\n[02:54.550]几句是非 也无法将我的热情冷却\n[03:02.150]你出现在我诗的每一页\n[03:07.790]\n[03:08.510]那饱满的稻穗 幸福了这个季节\n[03:15.850]而你的脸颊像田里熟透的蕃茄\n[03:21.870]你突然对我说 七里香的名字很美\n[03:28.560]我此刻却只想亲吻你倔强的嘴\n[03:35.010]雨下整夜 我的爱溢出就像雨水\n[03:41.680]院子落叶 跟我的思念厚厚一叠\n[03:48.300]几句是非 也无法将我的热情冷却\n[03:55.900]你出现在我诗的每一页\n[04:02.360]整夜 我的爱溢出就像雨水\n[04:08.520]窗台蝴蝶 像诗里纷飞的美丽章节\n[04:15.470]我接着写 把永远爱你写进诗的结尾\n[04:22.770]你是我唯一想要的了解\n[04:29.280]', '/song/周杰伦-七里香.mp3', 0, 0, b'0');
INSERT INTO `song` VALUES (20, 2, '周杰伦-晴天', '叶惠美', '2018-12-30 03:17:20', '2018-12-30 03:17:20', '/img/songPic/qingtian.jpg', '[00:00.00] 作曲 : 周杰伦\n[00:01.00] 作词 : 周杰伦\n[00:28.950]故事的小黄花\n[00:32.380]从出生那年就飘着\n[00:35.870]童年的荡秋千\n[00:39.370]随记忆一直晃到现在\n[00:42.440]ㄖㄨㄟ ㄙㄡ ㄙㄡ ㄒ一 ㄉㄡ ㄒ一ㄌㄚ\n[00:45.530]ㄙㄡ ㄌㄚ ㄒ一 ㄒ一 ㄒ一 ㄒ一 ㄌㄚ ㄒ一 ㄌㄚ ㄙㄡ\n[00:49.570]吹着前奏望着天空\n[00:52.870]我想起花瓣试着掉落\n[00:56.410]为你翘课的那一天\n[00:58.550]花落的那一天\n[01:00.190]教室的那一间\n[01:01.990]我怎么看不见\n[01:03.880]消失的下雨天\n[01:05.410]我好想再淋一遍\n[01:09.750]没想到失去的勇气我还留着\n[01:15.530]好想再问一遍\n[01:17.520]你会等待还是离开\n[01:24.500]刮风这天我试过握着你手\n[01:30.080]但偏偏雨渐渐大到我看你不见\n[01:38.450]还要多久我才能在你身边\n[01:44.870]等到放晴的那天也许我会比较好一点\n[01:52.330]从前从前有个人爱你很久\n[01:57.960]但偏偏风渐渐把距离吹得好远\n[02:06.240]好不容易又能再多爱一天\n[02:12.910]但故事的最后你好像还是说了拜拜\n[02:21.990]\n[02:34.660]为你翘课的那一天\n[02:36.500]花落的那一天\n[02:38.300]教室的那一间\n[02:40.040]我怎么看不见\n[02:41.780]消失的下雨天\n[02:43.680]我好想再淋一遍\n[02:47.610]没想到失去的勇气我还留着\n[02:54.090]好想再问一遍\n[02:55.650]你会等待还是离开\n[03:02.470]刮风这天我试过握着你手\n[03:07.900]但偏偏雨渐渐大到我看你不见\n[03:16.420]还要多久我才能在你身边\n[03:22.900]等到放晴的那天也许我会比较好一点\n[03:30.310]从前从前有个人爱你很久\n[03:36.440]偏偏风渐渐把距离吹得好远\n[03:44.290]好不容易又能再多爱一天\n[03:50.770]但故事的最后你好像还是说了拜拜\n[03:58.010]刮风这天我试过握着你手\n[04:01.760]但偏偏雨渐渐大到我看你不见\n[04:05.050]还要多久我才能够在你身边\n[04:08.630]等到放晴那天也许我会比较好一点\n[04:12.570]从前从前有个人爱你很久\n[04:15.510]但偏偏雨渐渐把距离吹得好远\n[04:18.950]好不容易又能再多爱一天\n[04:22.430]但故事的最后你好像还是说了拜', '/song/周杰伦-晴天.mp3', 0, 0, b'0');
INSERT INTO `song` VALUES (33, 7, '艺声-문 열어봐 (Here I am)', 'Here I am', '2018-12-30 10:31:30', '2020-06-10 14:11:19', '/img/songPic/HereIam.jpg', '[00:00.00] 作曲 : 艺声/BrotherSu\n[00:01.00] 作词 : 艺声/BrotherSu\n[00:17.39]핑계가 필요 했었나 봐\n[00:24.44]편의점 앞에서 술을 조금 마셨어\n[00:32.90]정말 조금 인데도\n[00:36.07]세상이 흐려지는 게\n[00:39.13]좀 취한 것 같아 나\n[00:45.11]시계를 잃어 버렸나 봐\n[00:52.24]한쪽 팔이 허전해\n[00:55.87]바라보다 알았어\n[01:00.82]시계 탓도 아니고 내 팔 위에 있던\n[01:06.30]네 손 하나 느낄 수 없단 걸\n[01:12.85]매일 가던 길인데\n[01:16.55]어떻게 이렇게 네가\n[01:21.44]좋아하는 게 많았는지\n[01:26.84]손에 잡히는 데로\n[01:29.79]술기운에 사긴 샀는데\n[01:33.96]넌 아직 그 곳에 사는지\n[01:40.33]문 열어봐 내가 여기 왔잖아\n[01:45.78]왜 몰라 네가 좋아하던 화분에\n[01:51.05]꽃도 조금 샀는데\n[01:54.14]이것 봐 네가 사준 셔츠에\n[01:59.72]네 향기 빼고 모든 게 돌아왔는데\n[02:05.39]너만 없네 문 열어봐\n[02:15.76]그리 쉬운 말인데 그 땐 왜 그렇게\n[02:22.56]사랑한단 말이 어려웠는지\n[02:29.19]우리 헤어진 후에\n[02:32.43]네 모습 보이지 않아도\n[02:36.49]넌 아직 내 맘에 사는 지\n[02:42.51]문 열어봐 내가 여기 왔잖아\n[02:48.25]왜 몰라 네가 좋아하던 화분에\n[02:53.60]꽃도 조금 샀는데\n[02:56.70]이것 봐 네가 사준 셔츠에\n[03:02.32]네 향기 빼고 모든 게 돌아왔는데\n[03:07.83]너만 없네 문 열어봐\n[03:12.72]불 켜진 네 방 창가에\n[03:16.58]흐릿하게 보여\n[03:19.64]이름을 불러보지만\n[03:24.56]내 목소리 닿을 것만 같아\n[03:27.90]내 마음도 닿을 것만 같아\n[03:32.34]제발 닫힌 이 문 좀 열어봐\n[03:38.45]내게 돌아와\n[03:44.57]문 열어봐 내가 여기 왔잖아\n[03:50.18]왜 몰라 네가 좋아하던 화분에\n[03:55.45]꽃도 조금 샀는데\n[03:58.58]이것 봐 네가 사준 셔츠에\n[04:04.12]네 향기 빼고 모든 게 돌아왔는데\n[04:09.72]너만 없네 문 열어봐\n[04:19.82]문 열어봐', '/song/艺声-문 열어봐 (Here I am).mp3', 0, 2, b'0');
INSERT INTO `song` VALUES (34, 7, '艺声-春天的阵雨 (Paper Umbrella)', '봄날의 소나기', '2018-12-30 10:37:22', '2020-06-09 10:48:07', '/img/songPic/Umbrella.jpg', '[00:00.00] 作曲 : 1601\n[00:00.789] 作词 : 徐智恩\n[00:02.367]编曲：1601\n[00:16.785]네가 떠난 그 순간\n[00:20.411]온 세상이 내게서 등을 돌리더라\n[00:27.508]미친 사람같이 보고 싶어 헤매이는데\n[00:35.684]너는 지금 어디니\n[00:42.177]서투르게 사랑한 것처럼\n[00:49.283]헤어짐까지 또 서툴러서 미안해\n[00:56.639]아무것도 모르고 널 보낸 나라서\n[01:03.491]온다 떨어진다\n[01:06.158]내 찢어진 하늘 사이로\n[01:10.546]한 방울 두 방울 봄날의 소나기\n[01:17.698]너를 그려보다 불러보다\n[01:21.775]기억이 비처럼 내린 새벽\n[01:26.358]밤새 난 그 빗속에\n[01:29.686]종이로 된 우산을 쓰고 있네\n[01:39.305]괜찮다곤 했지만\n[01:42.883]버텨낼 수 있을까\n[01:45.452]나도 모르겠어\n[01:49.940]네가 없는 이 거리\n[01:53.816]그럼에도 꽃은 피는데\n[01:58.000]하염없는 기다림\n[02:04.642]미련하게 사랑한 것처럼\n[02:11.744]헤어짐까지\n[02:14.410]또 미련해서 미안해\n[02:18.999]못해준 게\n[02:20.661]이렇게 발목을 잡는 걸\n[02:25.948]온다 떨어진다\n[02:28.465]내 찢어진 하늘 사이로\n[02:32.989]한 방울 두 방울\n[02:36.560]봄날의 소나기\n[02:40.188]너를 그려보다 불러보다\n[02:44.166]기억이 비처럼 내린 새벽\n[02:48.602]밤새 난 그 빗속에\n[02:52.178]널 보내던 그날과 같은 하루\n[02:57.372]온몸이 굳어버린 난\n[03:00.946]그때처럼\n[03:02.309]단 한 발도 움직일 수 없는데\n[03:12.430]간다 사라진다\n[03:15.105]내 흐려진 시선 너머로\n[03:19.540]한 방울 두 방울 그리고 여전히\n[03:26.702]슬피 떨어지던 꽃잎 위에\n[03:30.834]기억이 비처럼 내린 새벽\n[03:35.217]밤새 난 그 빗속에 종이로\n[03:39.452]된 우산을 쓰고 있네', '/song/艺声-春天的阵雨 (Paper Umbrella).mp3', 0, 1, b'0');
INSERT INTO `song` VALUES (35, 7, '艺声 + 灿烈-어떤 말로도 (Confession)', '봄날의 소나기', '2018-12-30 17:00:27', '2020-06-11 04:29:38', '/img/songPic/Confession.jpg', '[00:00.00] 作曲 : 艺声/BrotherSu\n[00:01.00] 作词 : 艺声/BrotherSu\n[00:08.89]생각나 잊을 수 없어 그 미소\n[00:13.32]난 말이야 온통 네 생각뿐인 걸\n[00:19.14]대체 무슨 마법을 건 거야\n[00:22.65]내 마음의 꽃이 피고 있는 걸\n[00:27.19]있잖아 들리니 내 심장소리\n[00:31.65]Only you 내 생애 가장 아름다운 별\n[00:37.68]너 하나로 빛나고 있는\n[00:40.84]이 세상 우리 함께라면\n[00:45.36]어떤 말로도 어떤 표현도\n[00:49.65]내 마음 다 전할 수 없지만 괜찮아\n[00:56.47]사랑이란 쉽지 만은 않을 거야\n[01:03.44]꽃을 들고서 다가가 볼까\n[01:07.97]허전한 네 손 꼭 잡으며\n[01:12.07]이렇게 용기를 내어 내 사랑을\n[01:20.62]고백하고 싶어\n[01:31.71]요즘 나 이유 없이 웃음이나\n[01:33.78]또 너의 꿈을 꾸는 것도 일상이야\n[01:36.49]처음 주고 받은 메시지\n[01:38.04]보고 또 다시 보는 것도\n[01:39.82]벌써 몇 번째인지\n[01:41.10]기분 좋은 향기 같은 너\n[01:42.88]조금씩 서로를 닮아가고 있는 걸\n[01:45.00]오늘은 손을 잡고 걷고 싶어\n[01:47.34]한발씩 가까워지는\n[01:48.59]하루 하루가 꿈만 같아\n[01:50.03]난 그냥 가만히 잘 있다가도\n[01:54.13]문득 떠오르는 네 생각에\n[01:56.35]자꾸 바보처럼 실없이 웃게 돼\n[01:59.69]날 바라보고 웃던 미소가 좋아\n[02:03.08]매일 볼 수 있다면\n[02:07.40]어떤 말로도 어떤 표현도\n[02:11.91]내 마음 다 전할 수 없지만 괜찮아\n[02:18.74]사랑이란 쉽지 만은 않을 거야\n[02:25.61]꽃을 들고서 다가가 볼까\n[02:30.25]허전한 네 손 꼭 잡으며\n[02:34.27]이렇게 용기를 내어 내 사랑을\n[02:42.87]고백하고 싶어\n[02:45.56]스쳐 지나간 흔한 인연이라 해도\n[02:54.34]난 평생 너를 잊지 못할 것 같은데\n[03:02.59]어떤 말로도 어떤 표현도\n[03:06.80]내 마음 다 전할 수 없지만 괜찮아\n[03:13.64]사랑이란 쉽지 만은 않더라도\n[03:20.57]꽃을 들고서 다가가 볼게\n[03:25.16]허전한 네 손 꼭 잡으며\n[03:29.06]이렇게 용기를 내어 내 사랑을\n[03:37.67]고백하고 싶어', '/song/艺声 + 灿烈-어떤 말로도 (Confession).mp3', 0, 2, b'0');
INSERT INTO `song` VALUES (36, 8, 'Ennio Morricone-Once Upon a Time in the West', 'Once Upon a Time in the West', '2019-03-19 15:57:07', '2020-06-20 01:21:09', '/img/songPic/OnceUponaTimeintheWest.jpg', '[00:00:00]纯音乐', '/song/Ennio Morricone-Once Upon a Time in the West.mp3', 7, 43, b'0');
INSERT INTO `song` VALUES (37, 8, 'Ennio Morricone-Titoli', 'Per un Pugno di Dollari', '2019-03-19 15:50:47', '2020-06-19 01:33:49', '/img/songPic/Titoli.jpg', '[00:00:00]纯音乐', '/song/Ennio Morricone-Titoli.mp3', 1, 40, b'0');
INSERT INTO `song` VALUES (38, 9, '林俊杰-关键词', '和自己对话 From M.E. To Myself', '2019-03-19 13:38:54', '2020-06-18 08:02:32', '/img/songPic/guanjianci.jpg', '[00:00.000] 作曲 : 林俊杰\n[00:01.000] 作词 : 林怡凤\n[00:14.12]好好爱自己 就有人会爱你\n[00:17.43]这乐观的说词\n[00:21.05]幸福的样子 我感觉好真实\n[00:24.31]找不到形容词\n[00:27.72]沉默在掩饰 快泛滥的激情\n[00:31.43]只剩下语助词\n[00:35.05]有一种踏实 当你口中喊我名字\n[00:40.49]落叶的位置 谱出一首诗\n[00:47.67]时间在消逝 我们的故事开始\n[00:54.34]这是第一次\n[00:58.13]让我见识爱情 可以慷慨又自私\n[01:04.67]你是我的关键词\n[01:10.22]\n[01:21.26]我不太确定 爱最好的方式\n[01:24.45]是动词或名词\n[01:28.09]很想告诉你 最赤裸的感情\n[01:31.46]却又忘词\n[01:35.35]聚散总有时 而哭笑也有时\n[01:38.49]我不怕潜台词\n[01:41.55]有一种踏实 是你心中有我名字\n[01:47.63]落叶的位置 谱出一首诗\n[01:54.41]时间在消逝 我们的故事开始\n[02:01.62]这是第一次\n[02:05.35]让我见识爱情 可以慷慨又自私\n[02:11.86]你是我的关键词\n[02:17.66]你藏在歌词\n[02:20.94]代表的意思\n[02:24.50]是专有名词\n[02:30.18]落叶的位置\n[02:33.55]谱出一首诗\n[02:37.05]我们的故事\n[02:40.51]才正要开始\n[02:44.35]这是第一次\n[02:47.33]爱一个人爱得如此慷慨又自私\n[02:54.33]你是我的关键词', '/song/林俊杰-关键词.mp3', 0, 5, b'0');
INSERT INTO `song` VALUES (39, 9, '林俊杰-期待爱', 'JJ陆', '2019-03-19 13:44:19', '2020-06-18 08:02:38', '/img/songPic/guanjianci.jpg', '[00:33.790]My Life 一直在等待\n[00:38.790]空荡的口袋\n[00:41.490]想在里面放 一份爱\n[00:45.860]Why 总是被打败\n[00:49.850]真的好无奈\n[00:53.760]其实我 实实在在\n[00:55.750]不管帅不帅\n[01:00.030]想要找回来 自己的节拍\n[01:05.380]所以这一次\n[01:08.130]我要勇敢 大声说出来\n[01:13.220]\n[01:13.680]期待 期待你发现我的爱\n[01:18.790]无所不在 我自然而然的关怀\n[01:24.230]你的存在 心灵感应的方向\n[01:29.570]我一眼就看出来\n[01:33.780]是因为爱\n[01:36.160]我猜 你早已发现我的爱\n[01:41.080]绕几个弯 越靠近越明白\n[01:46.850]不要走开\n[01:49.580]幸福的开始 就是放手去爱\n[02:22.620]想要找回来 自己的节拍\n[02:27.790]所以这一次\n[02:30.700]我要勇敢 大声说出来\n[02:36.420]\n[02:37.030]期待 期待你发现我的爱\n[02:41.920]无所不在 我自然而然的关怀\n[02:47.510]你的存在 心灵感应的方向\n[02:52.870]我一眼就看出来\n[02:57.080]是因为爱\n[02:59.520]我猜 你早已发现我的爱\n[03:04.380]绕几个弯 越靠近越明白\n[03:09.930]不要走开\n[03:12.580]幸福的开始 就是放手去爱\n[03:21.140]\n[03:22.020]幸福的开始 就是放手去爱', '/song/林俊杰-期待爱.mp3', 0, 6, b'0');
INSERT INTO `song` VALUES (40, 10, '王力宏-需要人陪', '十八般武艺', '2019-03-19 13:52:02', '2020-06-17 00:34:58', '/img/songPic/xuyaorenpei.jpg', '[00:00.000] 作曲 : 王力宏\n[00:01.000] 作词 : 王力宏\n[00:12.330]打开窗户让孤单透气\n[00:17.130]这一间屋子 如此密闭\n[00:23.970]欢呼声仍飘在空气里\n[00:28.950]像空无一人一样华丽\n[00:33.780]\n[00:35.190]我 渐渐失去知觉\n[00:40.860]就当做是种自我逃避\n[00:47.170]你 飞到天的边缘\n[00:52.540]我也不猜落在何地\n[00:57.230]\n[00:58.020]一个我 需要梦想 需要方向 需要眼泪\n[01:03.850]更需要 一个人来 点亮天的黑\n[01:09.830]我已经 无能为力 无法抗拒 无路可退\n[01:16.000]这无声的夜 现在的我 需要人陪\n[01:25.300]\n[01:34.990]闭上眼睛 就看不清\n[01:39.909]这双人床 欠缺的 温馨\n[01:46.960]谁能 陪我 直到天明\n[01:52.080]穿透这片 迷蒙寂静\n[01:56.830]\n[01:57.909]我 渐渐失去知觉\n[02:03.640]就当做是种自我逃避\n[02:09.909]你 飞到天的边缘\n[02:15.740]我已不猜落在何地\n[02:20.200]\n[02:20.840]一个我 需要梦想 需要方向 需要眼泪\n[02:26.800]更需要 一个人来 点亮天的黑\n[02:32.600]我已经 无能为力 无法抗拒 无路可退\n[02:38.970]这无声的夜 现在的我 需要人陪\n[02:47.890]\n[03:08.230]一个我 需要梦想 需要方向 需要眼泪\n[03:14.000]更需要 一个人来 点亮天的黑\n[03:20.010]我已经 无能为力 无法抗拒 无路可退\n[03:26.360]这无声的夜 现在的我 需要人陪\n[03:36.240]', '/song/王力宏-需要人陪.mp3', 0, 1, b'0');
INSERT INTO `song` VALUES (41, 11, 'Eminem-Love The Way You Lie', 'Life After Recovery', '2019-03-19 15:30:21', '2020-06-11 05:32:34', '/img/songPic/LoveTheWayYouLie.jpg', '[00:00.000] 作曲 : Marshall Mathers/Alexander Grant/Holly Hafermann\n[00:00.100] 作词 : Marshall Mathers/Alexander Grant/Holly Hafermann\n[00:00.300]Just gonna stand there and watch me burn\n[00:05.350]But that\'s alright because I like the way it hurts\n[00:11.230]Just gonna stand there and hear me cry\n[00:16.260]But that\'s alright because I love the way you lie, I love the way you lie\n[00:25.130]I can\'t tell you what it really is\n[00:26.890]I can only tell you what it feels like\n[00:28.930]And right now there\'s a steel knife in my windpipe\n[00:31.550]I can\'t breathe but I still fight while I can fight\n[00:34.440]As long as the wrong feels right it\'s like I\'m in flight\n[00:37.440]High off the love, drunk from my hate,\n[00:39.220]It\'s like I\'m huffing paint and I love her the more i suffer, I suffocate\n[00:42.770]And right before I\'m about to drown, she resuscitates me\n[00:46.000]She ****ing hates me and I love it.\n[00:47.850]Wait! Where you going? I\'m leaving you\n[00:50.260]No you ain\'t. Come back we\'re running right back.\n[00:52.850]Here we go again\n[00:53.790]It\'s so insane cus when its going good its going great.\n[00:56.530]I\'m superman with the wind at his back\n[00:58.490]Shes Louis Lane but when its bad its awful, I feel so ashamed I snap\n[01:02.640]Whos that dude? I don\'t even know his name\n[01:04.800]I laid hands on him, I\'ll never stoop so low again\n[01:07.500]I guess I don\'t know my own strength\n[01:09.490]Just gonna stand there and watch me burn\n[01:14.200]But that\'s alright because I like the way it hurts\n[01:20.500]Just gonna stand there and hear me cry\n[01:25.290]But that\'s alright because I love the way you lie, I love the way you lie\n[01:42.800]You ever love somebody so much you can barely breathe\n[01:45.320]When you\'re with \'em\n[01:46.050]You meet and neither one of you even know what hit \'em\n[01:48.540]Got that warm fuzzy feeling\n[01:50.090]Yeah, them those chills you used to get \'em\n[01:51.360]Now you\'re getting ****ing sick of looking at him\n[01:53.730]You swore you\'d never hit him; never do nothing to hurt him\n[01:56.370]Now you\'re in each other\'s face spewing venom in your words when you spit them\n[02:00.000]You push pull each other\'s hair, scratch claw hit him\n[02:02.440]Throw him down pin him\n[02:03.370]So lost in the moments when you\'re in them\n[02:05.260]It\'s a race that\'s the culprit controls your boat\n[02:07.580]So they say you\'re best to go your separate ways\n[02:09.730]Guess if they don\'t know you cus today that was yesterday\n[02:12.320]Yesterday is over it\'s a different day\n[02:14.430]Sound like broken records playing over but you promised her\n[02:17.180]Next time you show restraint\n[02:18.740]You don\'t get another chance\n[02:19.920]Life is no Nintendo game\n[02:21.450]But you lied again\n[02:22.430]Now you get to watch her leave out the window\n[02:24.500]I guess that\'s why they call it window pain\n[02:26.650]Just gonna stand there and watch me burn\n[02:31.440]But that\'s alright because I like the way it hurts\n[02:37.690]Just gonna stand there and hear me cry\n[02:42.520]But that\'s alright because I love the way you lie, I love the way you lie\n[03:00.130]Now I know he said things hit things that we didn\'t mean\n[03:03.150]And we fall back into the same patterns same routine\n[03:06.420]But your temper\'s just as bad as mine is\n[03:07.940]You\'re the same as me\n[03:09.000]But when it comes to love you\'re just as blinded\n[03:11.020]Baby, please come back\n[03:12.270]It wasn\'t you, baby it was me\n[03:14.110]Maybe our relationship wasn\'t as crazy as it seemed\n[03:16.820]Maybe that\'s what happens when a tornado meets a volcano\n[03:19.910]All I know is I love you too much to walk away though\n[03:22.910]Come inside, pick up your bags off the sidewalk\n[03:25.500]Don\'t you hear sincerity in my voice when I talk\n[03:28.180]I told you this is my fault\n[03:29.470]Look me in the eye ball\n[03:30.880]Next time I\'m pissed, I lay my fist at the drywall\n[03:33.780]Next time. There won\'t be no next time\n[03:35.850]I apologize even though I know its lies\n[03:38.580]I\'m tired of the games I just want her back\n[03:40.710]I know I\'m a liar\n[03:41.830]If she ever tries to ****ing leave again\n[03:43.780]Im\'a tie her to the bed and set this house on fire\n[03:46.510]Just gonna stand there and watch me burn\n[03:51.600]But that\'s alright because I like the way it hurts\n[03:57.520]Just gonna stand there and hear me cry\n[04:02.690]But that\'s alright because I love the way you lie, I love the way you lie\n[04:13.670]I love the way you lie', '/song/Eminem-Love The Way You Lie.mp3', 0, 1, b'0');
INSERT INTO `song` VALUES (42, 27, 'Álvaro Soler-Sofía', 'Sofía', '2019-06-02 23:32:39', '2019-06-02 23:32:39', '/img/songPic/1382086122014772.jpg', '[00:00:00]暂无歌词', '/song/Álvaro Soler-Sofía.mp3', 0, 0, b'0');
INSERT INTO `song` VALUES (43, 27, 'Álvaro Soler-El Mismo Sol', 'El Mismo Sol', '2019-06-02 23:34:12', '2019-06-02 23:34:12', '/img/songPic/1382086122014772.jpg', '[00:00:00]暂无歌词', '/song/Álvaro Soler-El Mismo Sol.mp3', 0, 0, b'0');
INSERT INTO `song` VALUES (44, 8, 'Ennio Morricone-Il Buono Il Cattivo Il Brutto', 'The Good, the Bad and the Ugly', '2019-03-19 16:04:25', '2020-06-19 01:36:47', '/img/songPic/IlBuonoIlCattivoIlBrutto.jpg', '[00:00:00]纯音乐', '/song/Ennio Morricone-Il Buono, Il Cattivo, Il Brutto.mp3', 1, 8, b'0');
INSERT INTO `song` VALUES (45, 13, '田馥甄-魔鬼中的天使', 'My Love', '2019-04-25 20:13:09', '2020-06-20 01:50:00', '/img/songPic/moguizhongdetianshi.jpg', '[00:00.00] 暂无歌词', '/song/田馥甄-魔鬼中的天使.mp3', 7, 50, b'0');
INSERT INTO `song` VALUES (46, 12, '李荣浩 - 年少有为', '耳朵', '2019-06-02 18:39:02', '2019-06-02 18:39:02', '/img/songPic/lironghao.jpg', '[00:00.65]李荣浩 - 年少有为\n[00:02.38]作词：李荣浩\n[00:03.69]作曲：李荣浩\n[00:30.08]电视一直闪\n[00:33.74]联络方式都还没删\n[00:37.23]你待我的好\n[00:40.62]我却错手毁掉\n[00:44.63]也曾一起想\n[00:47.93]有个地方睡觉吃饭\n[00:51.78]可怎么去熬日夜颠倒\n[00:55.45]连头款也凑不到\n[00:59.29]墙板 被我砸烂\n[01:02.77]到现在还没修\n[01:06.07]一碗热的粥 你怕我没够\n[01:10.03]都留一半带走\n[01:12.85]给你形容美好\n[01:16.14]今后你常常眼睛会红\n[01:20.66]原来心疼我 我那时候不懂\n[01:27.39]假如我年少有为不自卑\n[01:31.93]懂得什么是珍贵\n[01:34.31]那些美梦\n[01:37.85]没给你 我一生有愧\n[01:41.90]假如我年少有为 知进退\n[01:46.33]才不会让你替我受罪\n[01:50.17]婚礼上 多喝几杯\n[01:53.47]和你现在那位\n[02:26.42]也曾一起想\n[02:30.07]有个地方睡觉吃饭\n[02:33.56]可怎么去熬日夜颠倒\n[02:37.06]连头款也凑不到\n[02:41.07]墙板 被我砸烂\n[02:44.61]到现在还没修\n[02:47.80]一碗热的粥 你怕我没够\n[02:51.79]都留一半带走\n[02:54.78]给你形容美好\n[02:57.87]今后你常常眼睛会红\n[03:02.37]原来心疼我 我那时候不懂\n[03:09.34]假如我年少有为不自卑\n[03:13.64]懂得什么是珍贵\n[03:16.13]那些美梦\n[03:19.68]没给你 我一生有愧\n[03:23.79]假如我年少有为 知进退\n[03:28.19]才不会让你替我受罪\n[03:31.95]婚礼上 多喝几杯\n[03:35.20]和你现在那位\n[03:42.09]假如我年少有为不自卑\n[03:46.31]尝过后悔的滋味\n[03:48.93]金钱地位\n[03:52.47]搏到了却好想退回\n[03:56.38]假如我年少有为 知进退\n[04:00.89]才不会让你替我受罪\n[04:04.74]婚礼上 多喝几杯\n[04:08.03]和你现在那位\n[04:15.52]在婚礼上 多喝几杯\n[04:18.81]祝我年少有为\n[04:26.36]制作人：李荣浩\n[04:27.08]编曲：李荣浩\n[04:27.28]吉他：李荣浩\n[04:27.48]贝斯：李荣浩\n[04:27.63]鼓：Alex\n[04:27.74]和声编写：李荣浩\n[04:28.04]和声：李荣浩\n[04:28.24]弦乐编写：李荣浩\n[04:28.50]弦乐：国际首席爱乐乐团\n[04:28.85]录音师：李荣浩\n[04:29.06]混音师：李荣浩\n[04:29.31]录音室：北京一样音乐录音室\n[04:29.77]混音室：北京一样音乐录音室\n[04:30.17]母带后期制作人：李荣浩\n[04:30.53]母带后期处理工程师：周天澈TC Z.\n[04:31.03]母带后期处理录音室：TC Faders', '/song/李荣浩-年少有为.mp3', 0, 0, b'0');
INSERT INTO `song` VALUES (47, 10, '王力宏-大城小爱', '盖世英雄', '2019-06-02 18:41:59', '2020-06-17 00:34:57', '/img/songPic/dachengxiaoai.jpg', '[00:00.60]王力宏 - 大城小爱\n[00:01.60]词：王力宏/陈镇川/K. Tee\n[00:02.60]曲：王力宏\n[00:14.46]乌黑的发尾 盘成一个圈\n[00:17.71]缠绕所有对你的眷恋\n[00:21.56]隔着半透明门帘\n[00:23.16]嘴里说的语言\n[00:25.71]完全没有欺骗\n[00:28.44]屋顶灰色瓦片 安静的画面\n[00:32.29]灯火是你美丽那张脸\n[00:36.00]终于找到所有流浪的终点\n[00:40.10]你的微笑结束了疲倦\n[00:45.26]千万不要说天长地久\n[00:48.91]免的你觉得我不切实际\n[00:52.65]想多么简单就多么简单\n[00:56.45]是妈妈告诉我的哲理\n[00:59.41]脑袋都是你 心里都是你\n[01:03.11]小小的爱在大城里好甜蜜\n[01:06.67]念的都是你 全部都是你\n[01:10.38]小小的爱在大城里\n[01:12.18]只为你倾心\n[01:16.46]乌黑的发尾 盘成一个圈\n[01:19.72]缠绕所有对你的眷恋\n[01:23.58]终于找到所有流浪的终点\n[01:27.54]你的微笑结束了疲倦\n[01:30.97]千万不要说天长地久\n[01:34.51]免的你觉得我不切实际\n[01:38.13]想多么简单就多么简单\n[01:42.09]让我大声的对你说\n[01:44.57]I\'m thinking of you\n[01:48.69]脑袋都是你 心里都是你\n[01:52.39]小小的爱在大城里好甜蜜\n[01:56.00]念的都是你 全部都是你\n[01:59.65]小小的爱在大城里\n[02:01.50]只为你倾心\n[02:04.25]那回城的票根 你留做纪念\n[02:07.75]不必害怕面对离别\n[02:11.53]剪掉一丝头发\n[02:13.18]让我放在胸前\n[02:15.08]走到那里都有你陪\n[02:18.34]相随 yah\n[02:21.54]脑袋都是你 心里都是你\n[02:25.25]小小的爱在大城里好甜蜜\n[02:28.80]念的都是你 全部都是你\n[02:32.51]小小的爱在大城里\n[02:34.36]只为你倾心\n[02:36.11]脑袋都是你 心里都是你\n[02:39.82]小小的爱在大城里好甜蜜\n[02:43.42]念的都是你 全部都是你\n[02:47.08]小小的爱在大城里\n[02:48.98]只为你倾心\n[02:51.01]啦啦啦啦啦 啦啦啦啦啦\n[02:54.39]啦啦啦啦啦啦啦啦啦啦啦\n[02:58.03]啦啦啦啦啦 啦啦啦啦啦\n[03:01.79]啦啦啦啦啦啦啦啦啦啦\n[03:04.00]啦啦啦\n[03:05.53]啦啦啦啦啦 啦啦啦啦啦\n[03:09.03]啦啦啦啦啦啦啦啦啦啦啦\n[03:12.74]啦啦啦啦啦 啦啦啦啦啦\n[03:16.34]啦啦啦啦啦啦啦啦啦啦啦啦\n[03:22.31]乌黑的发尾盘成一个圈\n[03:25.72]缠绕所有对你的眷恋\n[03:29.35]那一种寸步不离的感觉\n[03:33.46]我知道就叫做永远', '/song/王力宏-大城小爱.mp3', 0, 1, b'0');
INSERT INTO `song` VALUES (49, 16, '华晨宇 + 杨宗纬-国王与乞丐', '国王与乞丐', '2019-06-02 18:49:50', '2019-06-02 18:49:50', '/img/songPic/109951163077613693.jpg', '[00:00.93]华晨宇 - 国王与乞丐\n[00:02.63]词：代岳东\n[00:03.53]曲：Mike Chan、Faizal Tahir\n[00:12.66]怎么了 怎么了\n[00:15.82]一份爱失去了光泽\n[00:18.97]面对面 背对背\n[00:22.38]反复挣扎怎么都痛\n[00:25.80]以为爱坚固像石头\n[00:28.85]谁知一秒钟就碎落\n[00:32.16]难道心痛都要不断打磨\n[00:38.06]抱紧你的我比国王富有\n[00:45.33]曾多么快乐\n[00:50.99]失去你的我比乞丐落魄\n[00:58.39]痛多么深刻\n[01:05.17]当一切 结束了 安静了 过去了\n[01:11.62]为什么 还拥有 一万个 舍不得\n[01:20.33]喔 喔\n[01:30.81]谁又能感受\n[01:36.37]回忆里的我比国王富有\n[01:43.82]奢侈的快乐\n[01:49.49]失去你以后比乞丐落魄\n[01:59.95]心痛如刀割\n[02:07.26]怀念那时你安静陪着我\n[02:13.67]柔软时光里最美的挥霍\n[02:22.89]爱有多快乐\n[02:34.04]痛有多深刻', '/song/华晨宇 + 杨宗纬-国王与乞丐.mp3', 0, 0, b'0');
INSERT INTO `song` VALUES (50, 18, '李克勤-护花使者', '护花使者', '2019-06-02 18:51:19', '2019-06-02 18:51:19', '/img/songPic/109951163157531184.jpg', '[00:00.60]李克勤 - 护花使者\n[00:01.60]词：潘伟源\n[00:02.60]曲：长谷川集平\n[00:35.79]这晚在街中偶遇心中的她\n[00:38.37]两脚决定不听叫唤跟她归家\n[00:41.42]深宵的冷风 不准吹去她\n[00:44.48]她那幽幽眼神快要对我说话\n[00:47.67]纤纤身影飘飘身影默默转来吧\n[00:50.74]对我说浪漫情人爱我吗\n[00:53.98]贪心的晚风 竟敢拥吻她\n[00:56.97]将她秀发温温柔柔每缕每缕放下\n[01:00.14]卑污的晚风 不应抚慰她\n[01:03.23]我已决意一生护着心中的她\n[01:28.12]这晚在街中偶遇心中的她\n[01:31.34]两脚决定不听叫唤跟她归家\n[01:34.49]深宵的冷风 不准吹去她\n[01:37.58]她那幽幽眼神快要对我说话\n[01:40.77]纤纤身影飘飘身影默默转来吧\n[01:43.66]对我说浪漫情人爱我吗\n[01:46.53]贪心的晚风 竟敢拥吻她\n[01:49.58]将她秀发温温柔柔每缕每缕放下\n[01:52.77]卑污的晚风 不应抚慰她\n[01:55.80]我已决意一生护着心中的她\n[02:20.79]这晚在街中偶遇心中的她\n[02:23.91]两脚决定不听叫唤跟她归家\n[02:27.05]深宵的冷风 不准吹去她\n[02:30.16]她那幽幽眼神快要对我说话\n[02:33.32]纤纤身影飘飘身影默默转来吧\n[02:36.42]对我说浪漫情人爱我吗\n[02:39.57]贪心的晚风 竟敢拥吻她\n[02:42.63]将她秀发温温柔柔每缕每缕放下\n[02:45.88]卑污的晚风 不应抚慰她\n[02:48.85]我已决意一生护着心中的她', '/song/李克勤-护花使者.mp3', 0, 0, b'0');
INSERT INTO `song` VALUES (51, 18, '李克勤-月半小夜曲', '经典金曲', '2019-06-02 19:16:24', '2019-06-02 19:16:24', '/img/songPic/19196373509550737.jpg', '[00:00.35]李克勤 - 月半小夜曲\n[00:00.20]词：向雪怀\n[00:00.30]曲：河合奈保子\n[00:24.76]仍然倚在失眠夜 望天边星宿\n[00:30.68]仍然听见小提琴 如泣似诉再挑逗\n[00:36.46]为何只剩一弯月 留在我的天空\n[00:43.28]这晚以后音讯隔绝\n[00:48.62]人如天上的明月 是不可拥有\n[00:54.51]情如曲过只遗留 无可挽救再分别\n[01:00.45]为何只是失望 填密我的空虚\n[01:07.16]这晚夜 没有吻别\n[01:12.49]仍在说永久 想不到是借口\n[01:18.56]从未意会要分手\n[01:27.38]但我的心每分每刻 仍然被她占有\n[01:34.29]她似这月儿 仍然是不开口\n[01:39.46]提琴独奏独奏着 明月半倚深秋\n[01:45.81]我的牵挂 我的渴望 直至以后\n[02:21.45]仍然倚在失眠夜 望天边星宿\n[02:27.34]仍然听见小提琴 如泣似诉再挑逗\n[02:33.24]为何只剩一弯月 留在我的天空\n[02:39.91]这晚以后音讯隔绝\n[02:45.27]人如天上的明月 是不可拥有\n[02:51.29]情如曲过只遗留 无可挽救再分别\n[02:57.16]为何只是失望 填密我的空虚\n[03:03.90]这晚夜没有吻别\n[03:09.14]仍在说永久 想不到是借口\n[03:15.45]从未意会要分手\n[03:24.17]但我的心每分每刻 仍然被她占有\n[03:31.16]她似这月儿 仍然是不开口\n[03:36.16]提琴独奏独奏着 明月半倚深秋\n[03:42.75]我的牵挂 我的渴望 直至以后\n[03:48.10]仍在说永久 想不到是借口\n[03:54.38]从未意会要分手\n[04:03.03]但我的心每分每刻 仍然被她占有\n[04:10.11]她似这月儿 仍然是不开口\n[04:15.10]提琴独奏独奏着 明月半倚深秋\n[04:21.62]我的牵挂 我的渴望 直至以后', '/song/李克勤-月半小夜曲.mp3', 0, 0, b'0');
INSERT INTO `song` VALUES (52, 18, '李克勤-K歌之王', '经典金曲', '2019-06-02 19:17:33', '2019-06-02 19:17:33', '/img/songPic/796046418510127.jpg', '[00:00:00]暂无歌词', '/song/李克勤-K歌之王.mp3', 0, 0, b'0');
INSERT INTO `song` VALUES (53, 12, '李荣浩-李白', '模特', '2019-06-02 19:19:44', '2020-06-09 04:51:51', '/img/songPic/109951163187393370.jpg', '[00:00.10]李荣浩 - 李白\n[00:00.66]词：李荣浩\n[00:00.83]曲：李荣浩\n[00:01.01]编曲：李荣浩\n[00:18.09]大部分人让我学习去看\n[00:20.95]世俗的眼光\n[00:26.22]我认真学习了世俗眼光\n[00:29.26]世俗到天亮\n[00:34.28]一部外国电影没听懂一句话\n[00:38.27]看完结局才是笑话\n[00:42.48]你看我多乖多聪明多么听话\n[00:45.98]多奸诈\n[00:51.31]喝了几大碗米酒再离开是为了模仿\n[00:59.66]一出门不小心吐的那幅是谁的书画\n[01:07.54]你一天一口一个 亲爱的对方\n[01:11.57]多么不流行的模样\n[01:15.78]都应该练练书法再出门闯荡\n[01:19.43]才会有人热情买账\n[01:23.36]要是能重来 我要选李白\n[01:27.40]几百年前做的好坏\n[01:30.09]没那么多人猜\n[01:31.90]要是能重来 我要选李白\n[01:35.64]至少我还能写写诗来澎湃\n[01:38.62]逗逗女孩\n[01:40.28]要是能重来 我要选李白\n[01:44.03]创作也能到那么高端\n[01:46.82]被那么多人崇拜\n[01:51.47]要是能重来\n[01:53.99]喝了几大碗米酒再离开是为了模仿\n[02:02.24]一出门不小心吐的那幅是谁的书画\n[02:10.00]你一天一口一个 亲爱的对方\n[02:14.21]多么不流行的模样\n[02:18.43]都应该练练书法再出门闯荡\n[02:22.00]才会有人热情买账\n[02:25.97]要是能重来 我要选李白\n[02:29.94]几百年前做的好坏\n[02:32.64]没那么多人猜\n[02:34.25]要是能重来 我要选李白\n[02:38.24]至少我还能写写诗来澎湃\n[02:41.23]逗逗女孩\n[02:42.85]要是能重来 我要选李白\n[02:46.54]创作也能到那么高端\n[02:49.38]被那么多人崇拜\n[02:54.07]要是能重来\n[03:28.64]要是能重来 我要选李白\n[03:32.52]几百年前做的好坏 没那么多人猜\n[03:36.82]要是能重来 我要选李白\n[03:40.79]至少我还能写写诗来澎湃\n[03:43.76]逗逗女孩\n[03:45.25]要是能重来 我要选李白\n[03:49.11]创作也能到那么高端\n[03:51.89]被那么多人崇拜\n[03:56.72]要是能重来', '/song/李荣浩-李白.mp3', 0, 1, b'0');
INSERT INTO `song` VALUES (54, 12, '李荣浩-作曲家', '李荣浩', '2019-06-02 19:21:29', '2019-06-02 19:21:29', '/img/songPic/3243559303261105.jpg', '[00:00.60]李荣浩 - 作曲家\n[00:01.60]词：李荣浩\n[00:02.60]曲：李荣浩\n[00:09.98]又很久没见\n[00:11.63]你剪了长发\n[00:14.44]谈怎么说话\n[00:16.09]谈怎么启发\n[00:19.26]怕歌词写的肉麻\n[00:22.11]怕浮夸\n[00:28.24]放一盘磁带\n[00:29.90]七八十年代\n[00:32.75]才听了一半\n[00:34.40]就悲伤起来\n[00:37.52]每一句里的感慨\n[00:40.22]都是现在\n[00:44.98]作曲家\n[00:48.68]写一首我们一生最平凡的歌\n[00:53.99]作曲家\n[00:57.85]告诉你爱的人你多真多深刻\n[01:03.27]作曲家\n[01:06.93]我还是你多年未见的老友啊\n[01:13.00]而你还是不太明白\n[01:16.22]孤独是个节拍\n[01:27.71]音符不会写\n[01:29.26]写歌是感觉\n[01:32.17]看几眼世界\n[01:33.82]多几个头衔\n[01:36.91]理论书上的观点\n[01:39.86]有缺陷\n[01:45.96]颁一个奖牌\n[01:47.56]说一段对白\n[01:50.35]不谈情说爱\n[01:52.10]也尽量精彩\n[01:55.33]没几个人生下来\n[01:57.83]不是天才\n[02:02.51]作曲家\n[02:06.41]写一首我们一生最平凡的歌\n[02:11.88]作曲家\n[02:15.54]告诉你爱的人你多真多深刻\n[02:20.98]作曲家\n[02:24.63]我还是你多年未见的老友啊\n[02:30.74]而你还是不太明白\n[02:33.97]孤独是个节拍\n[02:45.66]是个节拍\n[02:52.87]作曲家\n[02:56.58]写一首我们一生最平凡的歌\n[03:02.20]作曲家\n[03:05.80]告诉你爱的人你多真多深刻\n[03:11.37]作曲家\n[03:14.87]我还是你多年未见的老友啊\n[03:21.05]而你还是不太明白\n[03:24.20]孤独是个节拍', '/song/李荣浩-作曲家.mp3', 0, 0, b'0');
INSERT INTO `song` VALUES (55, 16, '杨宗纬-多余', '昨天今天明天', '2019-06-01 19:45:59', '2019-06-02 18:07:41', '/img/songPic/109951163167487498.jpg', '[00:00.00] 暂无歌词', '/song/杨宗纬-多余.mp3', 0, 0, b'0');
INSERT INTO `song` VALUES (56, 23, '毛不易-那时的我们', '那时的我们', '2019-06-02 19:23:46', '2019-06-02 19:23:46', '/img/songPic/109951163681898984.jpg', '[00:00.29]毛不易 - 那时的我们\n[00:01.91]作词：毛不易\n[00:02.87]作曲：毛不易\n[00:03.88]制作人：谭伊哲\n[00:04.95]编曲：黄竣琮、TYZ\n[00:06.51]混音：刘天鸿\n[00:07.47]吉他：黄竣琮\n[00:08.48]鼓：陈志昆\n[00:09.24]贝斯：王瀚一\n[00:10.25]和声：梁古驰\n[00:17.05]透过这时光向后望\n[00:20.49]来时的脚印是什么形状\n[00:24.19]歪歪扭扭却三三两两\n[00:27.68]是你啊一直在我身旁\n[00:31.68]久违的旋律轻轻淌\n[00:35.37]顺着回忆的方向\n[00:39.17]流光溢彩的小世界\n[00:42.50]是不是也别来无恙\n[00:47.44]敲下回忆的空白键\n[00:50.37]一起回到相遇那天\n[00:53.68]好像青春的誓言\n[00:56.10]从来都不曾飘远\n[01:01.67]那时我们有一双翅膀\n[01:05.42]飞过高山海洋\n[01:08.81]那时我们指尖有星光\n[01:12.81]照亮彼此的前方\n[01:16.21]就像年轻的水手要去远航\n[01:20.36]在风雨里成长\n[01:23.75]那些有你陪伴的时光\n[01:28.46]依然藏在手掌\n[01:47.31]敲下回忆的空白键\n[01:50.40]一起回到相遇那天\n[01:53.80]一串节奏\n[01:55.11]将我们的心跳紧紧相连\n[02:01.64]那时我们有一双翅膀\n[02:05.49]飞过高山海洋\n[02:08.78]那时我们指尖有星光\n[02:12.97]照亮彼此的前方\n[02:16.26]就像年轻的水手要去远航\n[02:20.31]在风雨里成长\n[02:23.79]那些有你陪伴的时光\n[02:28.54]依然藏在手掌\n[02:31.64]今天我们有一双翅膀\n[02:35.44]飞过高山海洋\n[02:38.84]今天我们指尖有星光\n[02:43.04]照亮彼此的前方\n[02:46.28]放下故作成熟的模样\n[02:50.28]穿上最爱的衣裳\n[02:53.72]回到青春的舞台亮起灯光\n[02:57.87]重新闪亮登场\n[03:01.57]那个青春的舞台亮着灯光\n[03:05.63]你和我闪亮登场', '/song/毛不易-那时的我们.mp3', 0, 0, b'0');
INSERT INTO `song` VALUES (57, 23, '毛不易-无问', '无问', '2019-06-02 19:24:40', '2019-06-02 19:24:40', '/img/songPic/109951163099854364.jpg', '[00:01.25]毛不易 - 无问(电影《无问西东》宣传曲)\n[00:04.20]作词：毛不易\n[00:05.11]作曲：毛不易\n[00:06.59]编曲：刘卓\n[00:07.19]制作人：刘卓\n[00:08.00]混音：周天澈\n[00:08.66]配唱制作人：刘芳\n[00:09.58]弦乐编写：靳锐\n[00:10.34]弦乐录音：国际首席爱乐乐团首席李朋\n[00:19.73]你问风为什么托着候鸟飞翔\n[00:25.26]却又吹的让他慌张\n[00:29.57]你问雨为什么滋养万物生长\n[00:35.10]却也湿透他的衣裳\n[00:39.69]你问他为什么亲吻他的伤疤\n[00:45.21]却又不能带他回家\n[00:50.44]你问我为什么还是不敢放下\n[00:55.16]明知听不到回答\n[00:59.88]如果光已忘了要将前方照亮\n[01:05.22]你会握着我的手吗\n[01:10.09]如果路会通往不知名的地方\n[01:15.21]你会跟我一起走吗\n[01:19.75]一生太短一瞬好长\n[01:24.53]我们哭着醒来\n[01:27.80]又哭着遗忘\n[01:30.18]幸好啊\n[01:32.53]你的手曾落在我肩膀\n[01:39.45]就像空中漂浮的\n[01:42.10]渺小的某颗尘土\n[01:49.81]它到底为什么\n[01:52.52]为什么不肯停驻\n[02:00.14]直到乌云散去\n[02:06.57]风雨落幕\n[02:10.42]他会带你找到\n[02:14.69]光的来处\n[02:19.53]就像手边落满了\n[02:22.12]灰尘的某一本书\n[02:30.05]它可曾单薄地\n[02:32.39]承载了谁的酸楚\n[02:40.29]尽管岁月无声\n[02:46.65]流向迟暮\n[02:50.37]他会让你想起\n[02:54.44]你的归途\n[03:44.98]如果光已忘了要将前方照亮\n[03:50.71]你会握着我的手吗\n[03:55.92]如果路会通往不知名的地方\n[04:01.52]你会跟我一起走吗', '/song/毛不易-无问.mp3', 0, 0, b'0');
INSERT INTO `song` VALUES (58, 19, '张碧晨-一吻之间', '一吻之间', '2019-06-01 20:15:19', '2019-06-02 18:07:27', '/img/songPic/3244658814415290.jpg', '[00:00.00] 暂无歌词', '/song/张碧晨-一吻之间.mp3', 0, 0, b'0');
INSERT INTO `song` VALUES (59, 19, '张碧晨-下一秒', '微微一笑很倾城', '2019-06-02 19:27:48', '2019-06-02 19:27:48', '/img/songPic/1369991503018202.jpg', '[00:00.37]张碧晨 - 下一秒\n[00:02.24]作词：汪苏泷\n[00:06.47]作曲：汪苏泷\n[00:13.22]好想能看到\n[00:16.20]你嘴角微笑\n[00:19.03]最好在下一秒\n[00:25.30]好想能听到\n[00:28.43]你轻声歌唱\n[00:31.42]最好在下一秒\n[00:37.64]纯白棒球帽\n[00:40.63]墨绿色衣角\n[00:43.76]时间静止的美好\n[00:49.98]默契发生在每个下一秒\n[00:56.00]爱上同一种口味的蛋糕\n[01:02.27]不约而同哼唱一段曲调\n[01:08.34]喜欢这样看你傻傻的笑\n[01:14.62]好想能这样\n[01:17.61]就白头到老\n[01:20.60]最好从下一秒\n[01:39.19]好想能看到\n[01:42.22]你嘴角微笑\n[01:45.20]最好在下一秒\n[01:51.38]好想能听到\n[01:54.46]你轻声歌唱\n[01:57.55]最好在下一秒\n[02:03.31]纯白棒球帽\n[02:06.96]墨绿色衣角\n[02:09.79]时间静止的美好\n[02:16.16]默契发生在每个下一秒\n[02:22.37]爱上同一种口味的蛋糕\n[02:28.45]不约而同哼唱一段曲调\n[02:34.72]喜欢这样看你傻傻的笑\n[02:40.69]好想能这样\n[02:43.67]就白头到老\n[02:46.81]最好从下一秒\n[02:53.18]最好从下一秒', '/song/张碧晨-下一秒.mp3', 0, 0, b'0');
INSERT INTO `song` VALUES (60, 14, '许嵩-我乐意', '我乐意', '2019-06-02 19:35:54', '2019-06-02 19:35:54', '/img/songPic/109951163261278540.jpg', '[00:00.42]许嵩 - 我乐意\n[00:01.28]作词：许嵩\n[00:01.93]作曲：许嵩\n[00:02.60]编曲：蔡廷贵、许嵩\n[00:03.81]制作人：许嵩\n[00:04.67]和声编写：许嵩\n[00:05.63]和声：许嵩\n[00:06.30]录音师：许嵩\n[00:07.15]混音师：许嵩\n[00:07.97]母带处理工程：许嵩\n[00:13.94]潇洒如我\n[00:14.75]最近却变得有点敏感\n[00:18.24]半小时收不到你讯息\n[00:20.72]就会坐立不安\n[00:22.80]都说别爱的太满\n[00:25.03]这道理知易行难\n[00:27.31]我还挺乐意享受\n[00:29.19]这份甜中微酸\n[00:31.72]你的笑像西瓜最中间\n[00:34.21]那一勺的口感\n[00:36.18]点亮了一整个夏天\n[00:38.37]星空也为你斑斓\n[00:40.70]我不会深情款款\n[00:42.98]上演什么套路桥段\n[00:45.12]我的爱纯粹简单\n[00:50.93]我乐意站在你身后\n[00:53.11]把你揽在胸口\n[00:55.18]低头看你素净的脸颊粉红\n[00:59.91]我乐意把着你的手\n[01:02.09]心猿意马弹奏\n[01:04.22]每颗音符里都有幸福闪动\n[01:08.73]我乐意守在你左右\n[01:11.02]为你挡雨遮风\n[01:13.20]今后的路我陪你一起走过\n[01:17.57]我乐意把自己奉送\n[01:20.00]做你独家宇宙\n[01:22.23]抱着你旁若无人尽情舞动\n[01:32.41]你的笑像西瓜最中间\n[01:34.74]那一勺的口感\n[01:36.82]点亮了一整个夏天\n[01:38.94]星空也为你斑斓\n[01:41.22]我不会深情款款\n[01:43.14]上演什么套路桥段\n[01:45.67]我的爱纯粹简单\n[01:51.31]我乐意站在你身后\n[01:53.69]把你揽在胸口\n[01:55.77]低头看你素净的脸颊粉红\n[02:00.43]我乐意把着你的手\n[02:02.67]心猿意马弹奏\n[02:04.75]每颗音符里都有幸福闪动\n[02:09.22]我乐意守在你左右\n[02:11.56]为你挡雨遮风\n[02:13.74]今后的路我陪你一起走过\n[02:18.11]我乐意把自己奉送\n[02:20.60]做你独家宇宙\n[02:22.78]抱着你旁若无人尽情舞动\n[02:30.81]我非常乐意\n[02:32.49]为你做任何任何的事情\n[02:36.39]你说只要求我\n[02:37.50]每天过得开心\n[02:39.78]我非常乐意\n[02:41.40]陪你到任何任何地方去\n[02:45.51]你说今年秋天想去趟南极\n[02:48.70]我非常乐意看着你的眼睛\n[02:52.96]落俗而真诚的\n[02:55.04]说出那一句我爱你\n[03:05.53]我乐意站在你身后\n[03:07.66]把你揽在胸口\n[03:09.85]低头看你素净的脸颊粉红\n[03:14.30]我乐意把着你的手\n[03:16.68]心猿意马弹奏\n[03:18.81]每颗音符里都有幸福闪动\n[03:23.18]我乐意守在你左右\n[03:25.61]为你挡雨遮风\n[03:27.74]今后的路我陪你一起走过\n[03:32.20]我乐意把自己奉送\n[03:34.63]做你独家宇宙\n[03:36.82]抱着你旁若无人尽情舞动\n[03:41.24]我乐意守在你左右\n[03:43.62]为你挡雨遮风\n[03:45.75]今后的路我陪你一起走过\n[03:50.13]我乐意把自己奉送\n[03:52.57]做你独家宇宙\n[03:54.90]抱着你旁若无人尽情舞动', '/song/许嵩-我乐意.mp3', 0, 0, b'0');
INSERT INTO `song` VALUES (61, 20, 'IU-Twenty-three (二十三)', 'CHAT-SHIRE', '2019-06-02 19:37:44', '2019-06-02 19:37:44', '/img/songPic/3285340745228795.jpg', '[00:00.13]IU - 二十三\n[00:00.67]词：아이유\n[00:00.78]曲：이종훈/이채규/아이유\n[00:00.89]I\'m twenty three\n[00:01.86]난 수수께끼\n[00:05.63]뭐게요 맞혀봐요\n[00:41.27]I\'m twenty three\n[00:42.05]난 수수께끼 Question\n[00:45.10]뭐게요 맞혀봐요\n[00:48.98]I\'m twenty three\n[00:49.95]틀리지 말기 Because\n[00:52.79]난 몹시 예민해요\n[00:55.00]맞혀봐\n[00:55.63]한 떨기 스물셋 좀\n[00:57.74]아가씨 태가 나네\n[00:59.60]다 큰 척해도 적당히 믿어줘요\n[01:03.57]얄미운 스물셋\n[01:05.51]아직 한참 멀었다 얘\n[01:07.46]덜 자란 척해도\n[01:08.95]대충 속아줘요\n[01:11.02]난 그래 확실히 지금이 좋아요\n[01:15.14]아냐 아냐 사실은 때려 치고 싶어요\n[01:18.70]아 알겠어요 나는 사랑이 하고 싶어\n[01:22.66]아니 돈이나 많이 벌래\n[01:25.05]맞혀봐\n[01:25.65]어느 쪽이게\n[01:27.06]얼굴만 보면 몰라\n[01:28.87]속마음과 다른 표정을 짓는 일\n[01:32.02]아주 간단하거든\n[01:33.54]어느 쪽이게\n[01:34.77]사실은 나도 몰라\n[01:36.67]애초에 나는 단 한 줄의\n[01:39.28]거짓말도 쓴 적이 없거든\n[01:41.90]여우인 척 하는 곰인 척\n[01:45.17]하는 여우 아니면\n[01:46.86]아예 다른 거\n[01:49.02]어느 쪽이게\n[01:50.65]뭐든 한 쪽을 골라\n[01:52.39]색안경 안에 비춰지는 거 뭐\n[01:55.53]이제 익숙하거든\n[01:59.23]Check it out\n[02:00.14]겁나는 게 없어요\n[02:02.07]엉망으로 굴어도\n[02:03.97]사람들은 내게 매일 친절해요\n[02:07.88]인사하는 저 여자\n[02:09.87]모퉁이를 돌고도 아직 웃고 있을까\n[02:13.87]늘 불안해요\n[02:15.39]난 영원히 아이로 남고 싶어요\n[02:19.58]아니 아니 물기 있는 여자가 될래요\n[02:22.98]아 정했어요 난 죽은 듯이 살래요\n[02:26.99]아냐 다 뒤집어 볼래\n[02:29.60]맞혀봐\n[02:30.08]어느 쪽이게\n[02:31.29]얼굴만 보면 몰라\n[02:33.28]속마음과 다른 표정을 짓는 일\n[02:36.40]아주 간단하거든\n[02:38.48]어느 쪽이게\n[02:39.12]사실은 나도 몰라\n[02:41.10]애초에 나는 단 한 줄의\n[02:43.66]거짓말도 쓴 적이 없거든\n[02:46.11]여우인 척 여우인 척\n[02:47.86]하는 곰인 척 곰인 척\n[02:50.13]여우 아니면 여우 아니면\n[02:51.78]아예 다른 거\n[02:53.66]어느 쪽이게\n[02:54.74]뭐든 한 쪽을 골라\n[02:56.70]색안경 안에 비춰지는\n[02:59.19]거 뭐 이제 익숙하거든\n[03:02.36]난 당신 맘에 들고 싶어요\n[03:05.75]아주 살짝만 얄밉게 해도 돼요\n[03:09.96]난 당신 맘에 들고 싶어요\n[03:13.14]자기 머리 꼭대기 위에서 놀아도 돼요\n[03:16.31]맞혀봐\n[03:16.68]어느 쪽이게\n[03:18.03]얼굴만 보면 몰라\n[03:20.09]속마음과 다른 표정을 짓는 일\n[03:23.20]아주 간단하거든\n[03:25.34]어느 쪽이게\n[03:26.11]사실은 나도 몰라\n[03:27.90]애초에 나는 단 한 줄의\n[03:30.49]거짓말도 쓴 적이 없거든\n[03:32.92]여우인 척 여우인 척\n[03:34.77]하는 곰인 척 곰인 척\n[03:36.81]여우 아니면 여우 아니면\n[03:38.56]아예 다른 거\n[03:40.68]어느 쪽이게\n[03:41.43]뭐든 한 쪽을 골라\n[03:43.53]색안경 안에 비춰지는 거\n[03:46.35]뭐 이제 익숙하거든\n 推荐相关视频\n\n\n\n 歌手其他歌曲\n#	歌名	\n1	삐삐	\n2	잼잼(Jam Jam)	\n3	Marry You (Live)	\n4	喜帖街 (Live)	\n5	小幸运 (Live)	\n 最近30天\n点击: 10', '/song/IU-Twenty-three (二十三).mp3', 0, 0, b'0');
INSERT INTO `song` VALUES (62, 20, 'IU-Someday', 'CHAT-드림하이 OST - (Dream High)', '2019-06-02 19:38:54', '2019-06-02 19:38:54', '/img/songPic/778454232471313.jpg', '[00:00.02]Someday (《Dream High》韩剧插曲) - 아이유 (IU)\n[00:01.07]词：박진영\n[00:01.18]曲：박진영\n[00:01.29]编曲：홍지상/박진영/심은지\n[00:03.88]언젠간 이 눈물이 멈추길\n[00:08.73]언젠간 이 어둠이 걷히고\n[00:14.08]따스한 햇살이\n[00:16.45]이 눈물을 말려주길\n[00:22.25]지친 내 모습이\n[00:26.77]조금씩 지겨워지는 걸 느끼면\n[00:33.53]다 버리고 싶죠\n[00:36.02]힘들게 지켜오던 꿈을\n[00:41.37]가진 것보다는 부족한 것이\n[00:47.81]너무나도 많은 게\n[00:52.68]느껴질 때마다 다리에\n[00:56.19]힘이 풀려서 나 주저앉죠\n[01:01.54]언젠간 이 눈물이 멈추길\n[01:06.36]언젠간 이 어둠이 걷히고\n[01:11.63]따스한 햇살이\n[01:14.12]이 눈물을 말려주길\n[01:19.86]괜찮을 거라고 내 스스로를\n[01:26.57]위로하며 버티는\n[01:31.16]하루하루가 날 조금씩\n[01:34.40]두렵게 만들고\n[01:38.99]나를 믿으라고 말하면서도\n[01:45.57]믿지 못하는 나는\n[01:50.13]이제 얼마나 더\n[01:53.11]오래 버틸 수 있을 지\n[01:55.32]모르겠어요\n[01:59.06]기다리면 언젠간 오겠지\n[02:04.31]밤이 길어도 해는 뜨듯이\n[02:08.92]아픈 내 가슴도\n[02:11.69]언젠간 다 낫겠지\n[02:17.41]날 이젠 도와주길\n[02:21.89]하늘이 제발 도와주길\n[02:26.67]나 혼자서만 이겨내기가\n[02:31.51]점점 더 자신이 없어져요\n[02:39.96]언젠간 이 눈물이 멈추길\n[02:44.76]언젠간 이 어둠이 걷히고\n[02:50.01]따스한 햇살이\n[02:52.54]이 눈물을 말려주길\n[02:55.45]이 눈물을 말려주길\n[02:59.35]기다리면 언젠가 오겠지\n[03:04.18]밤이 길어도 해는 뜨듯이\n[03:08.64]이 아픈 내 가슴도\n[03:11.63]언젠간 다 낫겠지\n[03:19.09]언젠간\n[03:21.30]언젠간', '/song/IU-Someday.mp3', 0, 0, b'0');
INSERT INTO `song` VALUES (63, 21, '金泰妍-제주도의 푸른 밤', '밴드 고맙삼다', '2019-06-01 20:11:23', '2019-06-02 18:07:31', '/img/songPic/1413971959305351.jpg', '[00:00.00] 暂无歌词', '/song/金泰妍-제주도의 푸른 밤.mp3', 0, 0, b'0');
INSERT INTO `song` VALUES (64, 15, '张国荣-当爱已成往事', '当爱已成往事', '2019-06-02 19:40:56', '2019-06-02 19:40:56', '/img/songPic/103354093011859.jpg', '[00:00.00]张国荣 - 当爱已成往事\n[00:01.38]作词：李宗盛\n[00:02.29]作曲：李宗盛\n[00:45.45]往事不要再提\n[00:49.45]人生已多风雨\n[00:53.80]纵然记忆抹不去\n[00:55.57]爱与恨都还在心里\n[01:00.61]真的要断了过去\n[01:04.35]让明天好好继续\n[01:08.77]你就不要再\n[01:10.04]苦苦追问我的消息\n[01:15.59]爱情它是个难题\n[01:19.49]让人目眩神迷\n[01:23.79]忘了痛或许可以\n[01:25.61]忘了你却太不容易\n[01:30.69]你不曾真的离去\n[01:34.44]你始终在我心里\n[01:38.67]我对你仍有爱意\n[01:40.49]我对自己无能为力\n[01:45.37]因为我仍有梦\n[01:49.11]依然将你放在我心中\n[01:53.43]总是容易被往事打动\n[01:57.02]总是为了你心痛\n[02:00.51]别流恋岁月中\n[02:04.06]我无意的柔情万种\n[02:08.29]不要问我是否再相逢\n[02:12.08]不要管我是否言不由衷\n[02:15.33]为何你不懂\n[02:19.48]只要有爱就有痛\n[02:23.78]有一天你会知道\n[02:26.85]人生没有我并不会不同\n[02:30.70]人生已经太匆匆\n[02:34.41]我好害怕总是泪眼朦胧\n[02:38.82]忘了我就没有痛\n[02:40.98]将往事留在风中\n[03:15.71]因为我仍有梦\n[03:19.16]依然将你放在我心中\n[03:23.52]总是容易被往事打动\n[03:27.07]总是为了你心痛\n[03:30.51]别流恋岁月中\n[03:34.20]我无意的柔情万种\n[03:38.41]不要问我是否再相逢\n[03:42.18]不要管我是否言不由衷\n[03:45.46]为何你不懂\n[03:49.71]只要有爱就有痛\n[03:53.96]有一天你会知道\n[03:57.05]人生没有我并不会不同\n[04:00.80]人生已经太匆匆\n[04:04.54]我好害怕总是泪眼朦胧\n[04:08.94]忘了我就没有痛\n[04:11.18]将往事留在风中\n[04:15.53]为何你不懂\n[04:19.57]只要有爱就有痛\n[04:23.98]有一天你会知道\n[04:27.12]人生没有我并不会不同\n[04:30.91]人生已经太匆匆\n[04:34.48]我好害怕总是泪眼朦胧\n[04:38.93]忘了我就没有痛\n[04:44.13]将往事留在风中', '/song/张国荣-当爱已成往事.mp3', 0, 0, b'0');
INSERT INTO `song` VALUES (65, 15, '张国荣-想你', '想你', '2019-06-02 19:42:02', '2019-06-02 19:42:02', '/img/songPic/78065325577772.jpg', '[00:01.06]想你 - 张国荣\n[00:02.93]词：小美\n[00:04.24]曲：张国荣\n[00:27.77]呆坐半晚 咖啡早渗着冰冷\n[00:34.28]是否心已淡是挂念你的冷淡\n[00:40.97]难合上眼 枕边早垫着冰冷\n[00:48.05]夜深不觉冷但似躺在泥滩\n[00:55.07]长夜冷冷 晚风想冷漠驱散\n[01:01.53]但千种慨叹在脑内快速泛滥\n[01:08.42]垂下了眼 压抑想淌泪的眼\n[01:15.33]但沙吹进眼令我极甚为难\n[01:22.16]无助无望无奈曾立心想放弃\n[01:29.22]自制自我在每日怨天怨地\n[01:36.06]情话情意情路情尽都经过也是因你\n[01:42.89]留下我在昨日过活但如死\n[01:49.07]痴心像马戏 似小丑眼内希冀\n[01:56.45]为想得到你愿竭力以心献技\n[02:02.81]想你但怨你 暗街灯也在想你\n[02:10.08]但却在暗示结局甚迷离\n[02:55.15]无助无望无奈曾立心想放弃\n[03:01.62]自制自我在每日怨天怨地\n[03:08.60]情话情意情路情尽都经过也是因你\n[03:15.33]留下我在昨日过活但如死\n[03:21.70]痴心像马戏 似小丑眼内希冀\n[03:29.07]为想得到你愿竭力以心献技\n[03:34.65]想你但怨你 暗街灯也在等你\n[03:42.71]但却在暗示结局甚迷离\n[03:49.76]但却在暗示结局甚迷离', '/song/张国荣-想你.m4a', 0, 0, b'0');
INSERT INTO `song` VALUES (67, 15, '张国荣-倩女幽魂', '倩女幽魂', '2019-06-02 19:45:39', '2019-06-02 19:45:39', '/img/songPic/78065325577772.jpg', '[00:04.11]张国荣 - 倩女幽魂\n[00:07.66]词：黄沾\n[00:07.66]曲：黄沾\n[00:07.66]人生路 美梦似路长\n[00:15.80]路里风霜 风霜扑面干\n[00:24.04]红尘里 美梦有几多方向\n[00:31.82]找痴痴梦幻中心爱\n[00:37.23]路随人茫茫\n[00:42.46]人生是 美梦与热望\n[00:50.44]梦里依稀 依稀有泪光\n[00:58.55]何从何去 去觅我心中方向\n[01:05.95]风仿佛在梦中轻叹\n[01:12.10]路和人茫茫\n[02:40.56]人间路 快乐少年郎\n[02:48.09]路里崎岖 崎岖不见阳光\n[02:56.95]泥尘里 快乐有几多方向\n[03:04.50]一丝丝梦幻般风雨\n[03:09.95]路随人茫茫\n[03:14.64]丝丝梦幻般风雨\n[03:20.07]路随人茫茫', '/song/张国荣-倩女幽魂.m4a', 0, 0, b'0');
INSERT INTO `song` VALUES (68, 15, '张国荣-最冷一天', '最冷一天', '2019-06-02 12:29:33', '2019-06-02 18:07:22', '/img/songPic/103354093011859.jpg', '[00:00.00] 暂无歌词', '/song/张国荣-最冷一天.mp3', 0, 0, b'0');
INSERT INTO `song` VALUES (69, 13, '田馥甄-小幸运', '小幸运', '2019-06-02 19:46:36', '2020-06-19 02:14:23', '/img/songPic/109951163520335473.jpg', '[00:00.50]田馥甄 - 小幸运\n[00:00.50]词：徐世珍/吴辉福\n[00:00.50]曲：JerryC\n[00:00.50]编曲：JerryC\n[00:02.36]我听见雨滴落在青青草地\n[00:08.38]我听见远方下课钟声响起\n[00:14.44]可是我没有听见你的声音\n[00:19.30]认真 呼唤我姓名\n[00:26.60]爱上你的时候还不懂感情\n[00:32.64]离别了才觉得刻骨 铭心\n[00:38.73]为什么没有发现遇见了你\n[00:43.28]是生命最好的事情\n[00:49.00]也许当时忙着微笑和哭泣\n[00:55.03]忙着追逐天空中的流星\n[01:00.73]人理所当然的忘记\n[01:05.27]是谁风里雨里\n[01:07.92]一直默默守护在原地\n[01:12.90]原来你是我最想留住的幸运\n[01:18.30]原来我们和爱情\n[01:20.90]曾经靠得那么近\n[01:24.37]那为我对抗世界的决定\n[01:28.85]那陪我淋的雨\n[01:31.85]一幕幕都是你\n[01:34.97]一尘不染的真心\n[01:39.11]与你相遇 好幸运\n[01:42.55]可我已失去为你\n[01:45.25]泪流满面的权利\n[01:48.63]但愿在我看不到的天际\n[01:53.16]你张开了双翼\n[01:56.19]遇见你的注定\n[02:00.98]她会有多幸运\n[02:15.94]青春是段跌跌撞撞的旅行\n[02:22.02]拥有着后知后觉的美丽\n[02:28.07]来不及感谢是你给我勇气\n[02:32.64]让我能做回我自己\n[02:38.32]也许当时忙着微笑和哭泣\n[02:44.44]忙着追逐天空中的流星\n[02:50.09]人理所当然的忘记\n[02:54.63]是谁风里雨里\n[02:57.36]一直默默守护在原地\n[03:02.25]原来你是我最想留住的幸运\n[03:07.62]原来我们和爱情\n[03:10.27]曾经靠得那么近\n[03:13.70]那为我对抗世界的决定\n[03:18.26]那陪我淋的雨\n[03:21.26]一幕幕都是你\n[03:24.26]一尘不染的真心\n[03:28.45]与你相遇 好幸运\n[03:31.93]可我已失去为你\n[03:34.57]泪流满面的权利\n[03:38.03]但愿在我看不到的天际\n[03:42.46]你张开了双翼\n[03:45.56]遇见你的注定\n[03:48.96]Oh\n[03:53.15]她会有多幸运', '/song/田馥甄-小幸运.mp3', 7, 9, b'0');
INSERT INTO `song` VALUES (70, 13, '田馥甄-你就不要想起我', '你就不要想起我', '2019-06-02 19:47:27', '2020-06-11 05:30:44', '/img/songPic/109951163520335473.jpg', '[00:00.26]田馥甄 - 你就不要想起我\n[00:01.05]作词：施人诚\n[00:01.11]作曲：杨子朴、刘大江\n[00:01.56]编曲：洪敬尧、温奕哲\n[00:21.05]我都寂寞多久了还是没好\n[00:29.46]感觉全世界都在窃窃嘲笑\n[00:36.94]我能有多骄傲\n[00:40.87]不堪一击好不好\n[00:46.61]一碰到你我就被撂倒\n[00:55.21]吵醒沉睡冰山后从容脱逃\n[01:03.80]你总是有办法轻易做到\n[01:11.00]一个远远的微笑\n[01:15.24]就掀起汹涌波涛\n[01:19.84]又闻到眼泪沸腾的味道\n[01:28.03]明明你也很爱我\n[01:30.51]没理由爱不到结果\n[01:36.67]只要你敢不懦弱\n[01:38.99]凭什么我们要错过\n[01:45.68]夜长梦还多\n[01:49.53]你就不要想起我\n[01:54.09]到时候你就知道有多痛\n[02:21.18]那些快乐多难得美好\n[02:29.50]你真的有办法舍得不要\n[02:36.55]才刚成真的美梦\n[02:41.02]转眼就幻灭破掉\n[02:45.45]祝福你真的可以睡得好\n[02:53.75]明明你也最爱我\n[02:56.18]没理由爱不到结果\n[03:02.31]只要你敢不懦弱\n[03:04.76]凭什么我们要错过\n[03:11.37]夜长梦很多\n[03:15.13]你就不要想起我\n[03:19.98]到时候最好别来要认错\n[03:27.45]你就不要 想我到 疯掉\n[03:41.00]明明你也还爱我\n[03:43.34]没理由爱不到结果\n[03:49.41]只要你敢不懦弱\n[03:51.91]凭什么我们要错过\n[03:58.50]夜长梦会多\n[04:02.28]你就不要想起我\n[04:06.91]我等夜监听你说多爱我', '/song/田馥甄-你就不要想起我.mp3', 0, 1, b'0');
INSERT INTO `song` VALUES (71, 30, '五月天-孙悟空', '神的孩子都在跳舞', '2019-06-02 19:51:45', '2019-06-02 19:51:45', '/img/songPic/109951163188724796.jpg', '[00:00.87]五月天 - 孙悟空\n[00:01.73]作词：阿信\n[00:01.88]作曲：怪兽\n[00:02.03]编曲：五月天、黄少雍、山地人、TEN、可乐\n[00:02.69]和声：郑知明、可乐、黄士杰\n[00:20.12]兵荒马乱五百年来没改变过\n[00:24.56]花果山下满天的烽火\n[00:29.12]人类累不累啊\n[00:31.40]还在你争我夺\n[00:33.67]西天取经回来后\n[00:35.94]有没有人有读过\n[00:38.48]师父每年都会寄卡片来问候\n[00:42.82]五百张了算多不算多\n[00:47.37]看到卡片我都想起那段奋斗\n[00:51.97]金箍棒那么神勇\n[00:54.39]现在只能掏掏耳朵\n[00:57.34]齐天大圣是我 谁能奈何了我\n[01:01.69]但是我却依然\n[01:03.48]不小心败给了寂寞\n[01:25.06]如果要让我活 让我有希望的活\n[01:29.56]我从不怕爱错 就怕没爱过\n[01:34.11]如果能有一天 再一次重返光荣\n[01:38.71]记得找我 我的好朋友\n[01:43.72]听说国玺已经植发治好秃头\n[01:48.12]有了论及婚嫁的女友\n[01:52.66]八戒这个猪头手机老是不通\n[01:57.22]好色本性多隽永\n[01:59.58]好像时间从来没走\n[02:02.45]西天取完了经 东边应该还有\n[02:06.94]伙伴们好不好\n[02:08.80]让我们再拯救地球\n[02:11.76]如果要让我活 让我有希望的活\n[02:16.40]我从不怕爱错 就怕没爱过\n[02:20.96]如果能有一天 再一次重返光荣\n[02:25.75]记得找我 我的好朋友\n[02:56.47]如果要让我活 请给我快乐苦痛\n[03:00.97]我从不怕爱错 就怕没爱过\n[03:05.48]如果能有一天 再一次重返光荣\n[03:10.08]记得找我 我的好朋友\n[03:14.64]如果要让我活 让我有希望的活\n[03:19.19]我从不怕爱错 就怕没爱过\n[03:23.79]如果能有一天 再一次重返光荣\n[03:28.62]记得找我 我的好朋友\n[03:51.42]记得找我 我的好朋友', '/song/五月天-孙悟空.mp3', 0, 0, b'0');
INSERT INTO `song` VALUES (72, 30, '五月天-如果我们不曾相遇', '如果我们不曾相遇', '2019-06-02 19:52:50', '2019-06-02 19:52:50', '/img/songPic/109951163188724796.jpg', '[00:00.36]如果我们不曾相遇 (《青云志》电视剧插曲) - 五月天\n[00:00.79]词：阿信\n[00:00.94]曲：阿信\n[00:01.09]编曲：五月天/陶山\n[00:04.80]如果我们不曾相遇\n[00:09.38]我会是在哪里\n[00:13.94]如果我们从不曾相识\n[00:18.52]不存在这首歌曲\n[00:22.85]每秒都活着 每秒都死去\n[00:27.52]每秒都问着自己\n[00:31.81]谁不曾找寻 谁不曾怀疑\n[00:36.73]茫茫人生奔向何地\n[00:41.89]那一天 那一刻 那个场景\n[00:46.35]你出现在我生命\n[00:50.87]从此后 从人生 重新定义\n[00:55.37]从我故事里苏醒\n[01:02.40]如果我们不曾相遇\n[01:06.89]你又会在哪里\n[01:11.56]如果我们从不曾相识\n[01:16.17]人间又如何运行\n[01:20.41]晒伤的脱皮 意外的雪景\n[01:25.08]与你相依的四季\n[01:29.64]苍狗又白云 身旁有了你\n[01:34.28]匆匆轮回又有何惧\n[01:39.46]那一天 那一刻 那个场景\n[01:44.06]你出现在我生命\n[01:48.49]每一分 每一秒 每个表情\n[01:53.18]故事都充满惊奇\n[01:57.93]偶然与巧合 舞动了蝶翼\n[02:00.23]谁的心头风起\n[02:02.45]前仆而后继 万千人追寻\n[02:04.91]荒漠唯一菩提\n[02:07.11]是擦身相遇 或擦肩而去\n[02:09.34]命运犹如险棋\n[02:11.71]无数时间线 无尽可能性\n[02:13.89]终于交织向你\n[02:16.50]那一天 那一刻 那个场景\n[02:20.86]你出现在我生命\n[02:25.47]未知的 未来里 未定机率\n[02:30.06]然而此刻拥有你\n[02:34.99]某一天 某一刻 某次呼吸\n[02:39.33]我们终将再分离\n[02:43.92]而我的 自传里 曾经有你\n[02:48.50]没有遗憾的诗句\n[02:55.04]诗句里 充满感激\n[03:00.44]如果我们不曾相遇\n[03:04.68]我会是在哪里\n[03:09.27]如果我们从不曾相识\n[03:13.88]不存在这首歌曲', '/song/五月天-如果我们不曾相遇.mp3', 0, 0, b'0');
INSERT INTO `song` VALUES (73, 30, '五月天-倔强', '倔强', '2019-06-02 19:53:48', '2019-06-02 19:53:48', '/img/songPic/109951163188724796.jpg', '[00:00.62]倔强 - 五月天\n[00:01.51]词：阿信\n[00:02.13]曲：阿信\n[00:02.69]编曲：五月天\n[00:42.30]当我和世界不一样\n[00:46.17]那就让我不一样\n[00:49.24]坚持对我来说就是以刚克刚\n[00:54.22]我如果对自己妥协\n[00:58.41]如果对自己说谎\n[01:01.54]即使别人原谅我也不能原谅\n[01:06.53]最美的愿望\n[01:09.65]一定最疯狂\n[01:12.64]我就是我自己的神\n[01:15.82]在我活的地方\n[01:18.84]我和我最后的倔强\n[01:21.90]握紧双手绝对不放\n[01:24.95]下一站是不是天堂\n[01:27.88]就算失望 不能绝望\n[01:31.07]我和我骄傲的倔强\n[01:34.19]我在风中大声的唱\n[01:37.25]这一次为自己疯狂\n[01:40.37]就这一次我和我的倔强\n[01:59.09]对爱我的人别紧张\n[02:03.02]我的固执很善良\n[02:06.15]我的手越肮脏眼神越是发光\n[02:11.07]你不在乎我的过往\n[02:15.38]看到了我的翅膀\n[02:18.38]你说被火烧过才能出现凤凰\n[02:23.43]逆风的方向\n[02:26.36]更适合飞翔\n[02:29.48]我不怕千万人阻挡\n[02:32.72]只怕自己投降\n[02:35.73]我和我最后的倔强\n[02:38.79]握紧双手绝对不放\n[02:41.83]下一站是不是天堂\n[02:44.96]就算失望不能绝望\n[02:48.01]我和我骄傲的倔强\n[02:51.09]我在风中大声的唱\n[02:54.27]这一次为自己疯狂\n[02:57.20]就这一次我和我的倔强\n[03:12.73]我和我最后的倔强\n[03:15.66]握紧双手绝对不放\n[03:18.79]下一站是不是天堂\n[03:21.65]就算失望不能绝望\n[03:24.77]我和我骄傲的倔强\n[03:27.96]我在风中大声的唱\n[03:31.08]这一次为自己疯狂\n[03:34.14]就这一次我和我的倔强\n[03:40.40]就这一次让我大声唱\n[03:43.52]啦 啦 啦 啦 啦 啦 啦 啦\n[03:46.47]啦 啦 啦 啦 啦 啦 啦 啦\n[03:49.47]啦 啦 啦 啦 啦 啦 啦 啦\n[03:52.58]就算失望不能绝望\n[03:55.64]啦 啦 啦 啦 啦 啦 啦 啦\n[03:58.64]啦 啦 啦 啦 啦 啦 啦 啦\n[04:01.76]啦 啦 啦 啦 啦 啦 啦 啦\n[04:04.75]就这一次我和我的倔强', '/song/五月天-倔强.mp3', 0, 0, b'0');
INSERT INTO `song` VALUES (74, 11, 'Eminem-Lose Yourself', 'Lose Yourself', '2019-06-02 16:40:56', '2019-06-02 18:07:17', '/img/songPic/6656443395492431.jpg', '[00:00.00] 暂无歌词', '/song/Eminem-Lose Yourself.mp3', 0, 0, b'0');
INSERT INTO `song` VALUES (75, 11, 'Eminem-When I\'m Gone', 'When I\'m Gone', '2019-06-02 16:42:25', '2020-06-18 07:58:37', '/img/songPic/6656443395492431.jpg', '[00:00.00] 暂无歌词', '/song/Eminem-When I\'m Gone.mp3', 0, 3, b'0');
INSERT INTO `song` VALUES (76, 17, '朴树-平凡之路', '平凡之路', '2019-06-02 19:55:55', '2019-06-02 19:55:55', '/img/songPic/18885211718782327.jpg', '[00:00.00]朴树 - 平凡之路(《后会无期》电影主题曲)\n[00:03.25]词：韩寒/朴树\n[00:04.38]曲：朴树\n[00:11.80]徘徊着的 在路上的\n[00:17.58]你要走吗 Via Via\n[00:23.30]易碎的 骄傲着\n[00:29.01]那也曾是我的模样\n[00:34.70]沸腾着的 不安着的\n[00:40.46]你要去哪 Via Via\n[00:46.19]谜一样的 沉着的\n[00:51.92]故事你真的在听吗\n[00:56.16]我曾经跨过山和大海\n[00:59.28]也穿过人山人海\n[01:01.90]我曾经拥有着的一切\n[01:05.02]转眼都飘散如烟\n[01:07.61]我曾经失落失望失掉所有方向\n[01:13.44]直到看见平凡才是唯一的答案\n[01:31.85]当你仍然 还在幻想\n[01:37.66]你的明天 Via Via\n[01:43.20]她会好吗 还是更烂\n[01:49.01]对我而言是另一天\n[01:53.37]我曾经毁了我的一切\n[01:56.43]只想永远地离开\n[01:59.03]我曾经堕入无边黑暗\n[02:02.13]想挣扎无法自拔\n[02:04.84]我曾经像你像他像那野草野花\n[02:10.65]绝望着 也渴望着\n[02:13.55]也哭也笑平凡着\n[03:03.42]向前走 就这么走\n[03:06.10]就算你被给过什么\n[03:08.95]向前走 就这么走\n[03:11.88]就算你被夺走什么\n[03:14.68]向前走 就这么走\n[03:17.63]就算你会错过什么\n[03:20.42]向前走 就这么走\n[03:23.22]就算你会\n[03:24.98]我曾经跨过山和大海\n[03:27.92]也穿过人山人海\n[03:30.55]我曾经拥有着的一切\n[03:33.61]转眼都飘散如烟\n[03:36.12]我曾经失落失望失掉所有方向\n[03:42.23]直到看见平凡才是唯一的答案\n[03:47.85]我曾经毁了我的一切\n[03:50.74]只想永远地离开\n[03:53.19]我曾经堕入无边黑暗\n[03:56.41]想挣扎无法自拔\n[03:58.91]我曾经像你像他像那野草野花\n[04:04.91]绝望着 也渴望着\n[04:07.89]也哭也笑平凡着\n[04:10.78]我曾经跨过山和大海\n[04:13.56]也穿过人山人海\n[04:16.32]我曾经问遍整个世界\n[04:19.34]从来没得到答案\n[04:21.85]我不过像你像他像那野草野花\n[04:27.99]冥冥中这是我 唯一要走的路啊\n[04:34.69]时间无言 如此这般\n[04:40.38]明天已在 Hia Hia\n[04:46.09]风吹过的 路依然远\n[04:51.84]你的故事讲到了哪', '/song/朴树-平凡之路.mp3', 0, 0, b'0');
INSERT INTO `song` VALUES (77, 17, '朴树-白桦林', '白桦林', '2019-06-02 19:56:38', '2019-06-02 19:56:38', '/img/songPic/18885211718782327.jpg', '[00:00.11]朴树 - 白桦林(Live)\n[00:00.86]作词：朴树\n[00:01.06]作曲：朴树\n[00:26.93]静静的村庄飘着白的雪\n[00:33.36]阴霾的天空下鸽子飞翔\n[00:40.13]白桦树刻着那两个名字\n[00:46.95]他们发誓相爱用尽这一生\n[00:54.41]有一天战火烧到了家乡\n[01:00.36]小伙子拿起枪奔赴边疆\n[01:07.06]心上人你不要为我担心\n[01:13.77]等着我回来在那片白桦林\n[01:20.82]天空依然阴霾\n[01:23.62]依然有鸽子在飞翔\n[01:27.22]谁来证明那些没有\n[01:30.72]墓碑的爱情和生命\n[01:33.97]雪依然在下那村庄依然安详\n[01:40.63]年轻的人们消失在白桦林\n[01:47.67]噩耗声传来在那个午后\n[01:54.18]心上人战死在远方沙场\n[02:00.93]她默默来到那片白桦林\n[02:07.65]望眼欲穿地每天守在那里\n[02:27.88]她说他只是迷失在远方\n[02:34.53]他一定会来\n[02:37.43]来这片白桦林\n[02:41.33]天空依然阴霾\n[02:44.08]依然有鸽子在飞翔\n[02:48.03]谁来证明那些\n[02:50.63]没有墓碑的爱情和生命\n[02:54.68]雪依然在下那村庄依然安详\n[03:01.48]年轻的人们消失在白桦林\n[03:08.28]长长的路呀就要到尽头\n[03:14.98]那姑娘已经是白发苍苍\n[03:21.68]她时常听他在枕边呼唤\n[03:28.33]来吧亲爱的来这片白桦林\n[03:35.43]在死的时候她喃喃地说\n[03:41.79]我来了等着我在那片白桦林', '/song/朴树-白桦林.mp3', 0, 0, b'0');
INSERT INTO `song` VALUES (78, 31, 'Beyond-光辉岁月', '光辉岁月', '2019-06-02 20:00:14', '2020-06-14 02:29:41', '/img/songPic/29686813951246.jpg', '[00:00.61]beyond - 光辉岁月\n[00:01.47]词：黄家驹\n[00:02.18]曲：黄家驹\n[00:02.89]编曲：黄家驹\n[00:28.57]钟声响起归家的讯号\n[00:32.98]在他生命里\n[00:36.27]仿佛带点唏嘘\n[00:41.51]黑色肌肤给他的意义\n[00:45.94]是一生奉献 肤色斗争中\n[00:54.20]年月把拥有变作失去\n[01:00.96]疲倦的双眼带着期望\n[01:07.45]今天只有残留的躯壳\n[01:11.08]迎接光辉岁月\n[01:14.22]风雨中抱紧自由\n[01:20.41]一生经过彷徨的挣扎\n[01:24.02]自信可改变未来\n[01:27.23]问谁又能做到\n[01:43.17]可否不分肤色的界限\n[01:47.58]愿这土地里\n[01:50.78]不分你我高低\n[01:56.05]缤纷色彩闪出的美丽\n[02:00.51]是因它没有\n[02:03.70]分开每种色彩\n[02:08.75]年月把拥有变作失去\n[02:15.46]疲倦的双眼带着期望\n[02:21.95]今天只有残留的躯壳\n[02:25.61]迎接光辉岁月\n[02:28.86]风雨中抱紧自由\n[02:34.89]一生经过彷徨的挣扎\n[02:38.64]自信可改变未来\n[02:41.78]问谁又能做到\n[03:23.66]今天只有残留的躯壳\n[03:27.21]迎接光辉岁月\n[03:30.40]风雨中抱紧自由\n[03:36.59]一生经过彷徨的挣扎\n[03:40.20]自信可改变未来\n[03:43.41]问谁又能做到\n[03:59.33]今天只有残留的躯壳\n[04:02.83]迎接光辉岁月\n[04:06.12]风雨中抱紧自由\n[04:12.30]一生经过彷徨的挣扎\n[04:15.85]自信可改变未来\n[04:19.10]问谁又能做到\n[04:34.93]今天只有残留的躯壳\n[04:38.53]迎接光辉岁月\n[04:41.76]风雨中抱紧自由\n[04:47.89]一生经过彷徨的挣扎\n[04:51.60]自信可改变未来', '/song/Beyond-光辉岁月.mp3', 1, 6, b'0');
INSERT INTO `song` VALUES (79, 31, 'Beyond-无悔这一生', '无悔这一生', '2019-06-02 20:01:05', '2020-06-09 10:51:15', '/img/songPic/29686813951246.jpg', '[00:00.60]Beyond - 无悔这一生\n[00:02.98]词：卢国宏\n[00:02.60]曲：黄家驹\n[00:16.52]阳光历次消散别去\n[00:23.97]无理冲击我心绪\n[00:30.76]前景没法打算怎么\n[00:38.32]谁会偷生远方里\n[00:46.86]每次记忆哭笑\n[00:51.26]将心意再变改\n[00:53.99]一分一秒\n[01:00.37]无意对一切话别\n[01:03.97]无意却远走他方\n[01:08.68]没有泪光风里劲闯\n[01:12.71]怀着心中新希望\n[01:16.68]能冲一次\n[01:18.48]多一次\n[01:20.01]不息自强\n[01:23.19]没有泪光风里劲闯\n[01:27.32]重植根于小岛岸\n[01:30.82]如天可变风可转\n[01:34.57]不息自强\n[01:37.52]这方向\n[01:52.81]无奈静听不舍心声\n[02:00.27]和我偏偏正呼应\n[02:07.18]前方或会一生奔波\n[02:14.51]无悔这一生经过\n[02:23.03]纵有冷风飘过\n[02:27.48]将心绪再痛逼\n[02:30.48]紧守不变\n[02:36.63]无意对一切话别\n[02:40.44]无意再远走他方\n[02:45.02]没有泪光风里劲闯\n[02:48.91]怀着心中新希望\n[02:53.01]能冲一次\n[02:54.47]多一次\n[02:56.43]不息自强\n[02:59.21]没有泪光风里劲闯\n[03:03.52]重植根于小岛岸\n[03:07.27]如天可变风可转\n[03:10.88]不息自强\n[03:14.12]没有泪光风里劲闯\n[03:17.97]怀着心中新希望\n[03:21.72]能冲一次\n[03:23.92]多一次\n[03:25.52]不息自强\n[03:28.57]没有泪光风里劲闯\n[03:32.58]重植根于小岛岸\n[03:36.70]如天可变风可转\n[03:39.95]不息自强\n[03:42.95]这方向', '/song/Beyond-无悔这一生.mp3', 0, 3, b'0');
INSERT INTO `song` VALUES (80, 31, 'Beyond-真的爱你', '真的爱你', '2019-06-02 20:02:11', '2020-06-11 06:08:15', '/img/songPic/29686813951246.jpg', '[00:00.60]Beyond - 真的爱你\n[00:01.60]词：梁美薇\n[00:02.60]曲：黄家驹\n[00:27.10]无法可修饰的一对手\n[00:30.97]带出温暖永远在背后\n[00:34.07]纵使啰嗦始终关注\n[00:36.00]不懂珍惜太内疚\n[00:39.50]沉醉于音阶她不赞赏\n[00:43.36]母亲的爱却永未退让\n[00:46.52]决心冲开心中挣扎\n[00:48.45]亲恩终可报答\n[00:52.36]春风化雨暖透我的心\n[00:55.51]一生眷顾无言地送赠\n[01:00.18]是你多么温馨的目光\n[01:03.68]教我坚毅望着前路\n[01:06.78]叮嘱我跌倒不应放弃\n[01:12.62]没法解释怎可报尽亲恩\n[01:16.09]爱意宽大是无限\n[01:19.20]请准我说声真的爱你\n[01:37.13]无法可修饰的一对手\n[01:41.04]带出温暖永远在背后\n[01:44.14]纵使啰嗦始终关注\n[01:46.08]不懂珍惜太内疚\n[01:49.59]仍记起温馨的一对手\n[01:53.45]始终给我照顾未变样\n[01:56.59]理想今天终于等到\n[01:58.52]分享光辉盼做到\n[02:02.43]春风化雨暖透我的心\n[02:05.53]一生眷顾无言地送赠\n[02:10.21]是你多么温馨的目光\n[02:13.71]教我坚毅望着前路\n[02:16.87]叮嘱我跌倒不应放弃\n[02:22.66]没法解释怎可报尽亲恩\n[02:26.17]爱意宽大是无限\n[02:29.22]请准我说声真的爱你\n[03:00.06]春风化雨暖透我的心\n[03:03.21]一生眷顾无言地送赠\n[03:07.73]是你多么温馨的目光\n[03:11.34]教我坚毅望着前路\n[03:14.43]叮嘱我跌倒不应放弃\n[03:20.33]没法解释怎可报尽亲恩\n[03:23.79]爱意宽大是无限\n[03:26.83]请准我说声真的爱你\n[03:32.72]是你多么温馨的目光\n[03:36.23]教我坚毅望着前路\n[03:39.38]叮嘱我跌倒不应放弃\n[03:45.22]没法解释怎可报尽亲恩\n[03:48.68]爱意宽大是无限\n[03:51.77]请准我说声真的爱你', '/song/Beyond-真的爱你.mp3', 0, 1, b'0');
INSERT INTO `song` VALUES (81, 10, '王力宏-唯一', '唯一', '2019-06-02 20:04:32', '2020-06-17 00:35:00', '/img/songPic/4460718673904110.jpg', '[00:00.25]萌萌哒天团 - 唯一\n[00:01.01]作词：芊芊\n[00:01.77]作曲：芊芊\n[00:18.29]说好生生世世在一起\n[00:22.24]但不知为何每一世都找不到你\n[00:26.23]如果不小心找到了你\n[00:30.17]老天任何考验也不要与我别离\n[00:34.22]当初在天庭相遇情景清晰\n[00:38.16]不切实际的寻寻觅觅\n[00:42.15]却换来满心的悲与凄\n[00:46.20]不再相信两情总依依\n[00:49.78]万杞梁和孟姜女\n[00:53.01]万里长城也只是绝壁\n[00:57.21]而那梁山伯与祝英台\n[01:00.95]生死相随竟是蝴蝶意\n[01:05.13]明明白白的愿力加业力\n[01:09.02]看不见的世界都在天上\n[01:13.12]看得见的世界在身旁\n[01:17.01]真心都叫做唯一\n[01:38.14]时空的差距眼神交集\n[01:42.13]只为你那短暂的笑颜舍命不惜\n[01:46.18]爱在错的时机泪着地\n[01:50.15]坚持着无悔的决定我依然孤寂\n[01:54.15]是目眩神迷从来不忘自己\n[01:58.14]深情的胸襟有过泪滴\n[02:02.09]无畏惧痛在心隐于底\n[02:06.18]捍卫你是使命别问起\n[02:09.71]万杞梁和孟姜女\n[02:12.95]万里长城也只是绝壁\n[02:17.15]而那梁山伯与祝英台\n[02:20.95]生死相随竟是蝴蝶意\n[02:25.09]明明白白的愿力加业力\n[02:28.93]看不见的世界都在天上\n[02:33.13]看得见的世界在身旁\n[02:36.91]真心都叫做唯一\n[02:41.76]万杞梁和孟姜女\n[02:45.00]万里长城也只是绝壁\n[02:49.09]而那梁山伯与祝英台\n[02:52.98]生死相随竟是蝴蝶意\n[02:57.12]明明白白的愿力加业力\n[03:00.96]看不见的世界都在天上\n[03:05.10]看得见的世界在身旁\n[03:08.94]真心都叫做唯一\n[03:14.30]真心都叫做唯一', '/song/王力宏-唯一.mp3', 0, 1, b'0');
INSERT INTO `song` VALUES (82, 9, '林俊杰-一千年以后', '一千年以后', '2019-06-02 20:05:35', '2020-06-16 01:05:00', '/img/songPic/109951163187405670.jpg', '[00:00.10]林俊杰 - 一千年以后\n[00:00.50]作词：李瑞洵\n[00:00.71]作曲：林俊杰\n[00:00.91]编曲：蔡政勋、陈建玮、许环良、David Koon\n[00:15.96]心跳乱了节奏\n[00:20.01]梦也不自由\n[00:23.76]爱是个绝对承诺\n[00:27.28]不说撑到一千年以后\n[00:31.70]放任无奈 淹没尘埃\n[00:35.65]我在废墟之中守着你走来\n[00:38.89]喔\n[00:39.60]我的泪光承载不了喔\n[00:45.37]所有一切你要的爱\n[00:49.90]因为在 一千年以后\n[00:54.76]世界早已没有我\n[00:58.76]无法深情挽着你的手\n[01:02.91]浅吻着你额头\n[01:05.90]别等到 一千年以后\n[01:10.25]所有人都遗忘了我\n[01:14.50]那时红色黄昏的沙漠\n[01:18.38]能有谁\n[01:20.41]解开缠绕千年的寂寞\n[01:41.41]呜呜\n[01:42.48]放任无奈 淹没尘埃\n[01:46.43]我在废墟之中守着你走来\n[01:49.67]喔\n[01:50.47]我的泪光\n[01:52.25]承载不了喔\n[01:55.74]所有一切你需要的爱\n[02:00.76]因为在 一千年以后\n[02:05.55]世界早已没有我\n[02:09.55]无法深情挽着你的手\n[02:13.60]浅吻着你额头\n[02:16.69]别等到 一千年以后\n[02:21.15]所有人都遗忘了我\n[02:25.20]那时红色黄昏的沙漠\n[02:29.02]能有谁\n[02:31.17]解开缠绕千年的寂寞\n[02:42.43]Oh yeah\n[02:47.28]oh\n[02:48.95]无法深情挽着你的手\n[02:52.96]浅吻着你额头\n[02:55.99]别等到 一千年以后\n[03:00.39]所有人都遗忘了我\n[03:04.59]那时红色黄昏的沙漠\n[03:08.39]能有谁\n[03:10.57]解开缠绕千年的寂寞\n[03:16.30]oh\n[03:18.98]缠绕千年的寂寞', '/song/林俊杰-一千年以后.mp3', 0, 3, b'0');
INSERT INTO `song` VALUES (83, 9, '林俊杰-江南', '江南', '2019-06-02 20:07:10', '2019-06-02 20:07:10', '/img/songPic/109951163187405670.jpg', '[00:00.60]林俊杰 - 江南\n[00:01.60]词：李瑞洵\n[00:02.60]曲：林俊杰\n[00:36.02]风到这里就是粘\n[00:39.55]粘住过客的思念\n[00:43.97]雨到了这里缠成线\n[00:47.52]缠着我们留恋人世间\n[00:52.09]你在身边就是缘\n[00:55.36]缘分写在三生石上面\n[01:00.07]爱有万分之一甜\n[01:03.63]宁愿我就葬在这一点\n[01:08.02]圈圈圆 圆圈圈\n[01:09.89]天天年 年天天 的我\n[01:12.45]深深看你的脸\n[01:15.02]生气的温柔\n[01:17.04]埋怨的温柔 的脸\n[01:23.10]不懂爱恨情愁煎熬的我们\n[01:26.84]都以为相爱就像风云的善变\n[01:31.13]相信爱一天 抵过永远\n[01:35.31]在这一刹那冻结了时间\n[01:39.11]不懂怎么表现温柔的我们\n[01:42.92]还以为殉情只是古老的传言\n[01:46.72]离愁能有多痛 痛有多浓\n[01:51.26]当梦被埋在江南烟雨中\n[01:54.58]心碎了才懂\n[02:19.99]圈圈圆 圆圈圈\n[02:21.87]天天年 年天天 的我\n[02:24.55]深深看你的脸\n[02:27.00]生气的温柔\n[02:29.05]埋怨的温柔 的脸\n[02:35.11]不懂爱恨情愁煎熬的我们\n[02:38.88]都以为相爱就像风云的善变\n[02:42.85]相信爱一天 抵过永远\n[02:47.31]在这一刹那冻结了时间\n[02:51.01]不懂怎么表现温柔的我们\n[02:54.87]还以为殉情只是古老的传言\n[02:58.82]离愁能有多痛 痛有多浓\n[03:03.30]当梦被埋在江南烟雨中\n[03:06.54]心碎了才懂\n[03:18.99]相信爱一天 抵过永远\n[03:23.34]在这一刹那冻结了时间\n[03:27.05]不懂怎么表现温柔的我们\n[03:30.81]还以为殉情只是古老的传言\n[03:34.72]离愁能有多痛 痛有多浓\n[03:39.31]当梦被埋在江南烟雨中\n[03:44.66]心碎了才懂', '/song/林俊杰-江南.mp3', 0, 0, b'0');
INSERT INTO `song` VALUES (84, 9, '林俊杰-学不会', '学不会', '2019-06-02 20:08:12', '2019-06-02 20:08:12', '/img/songPic/109951163187405670.jpg', '[00:00.90]原唱：林俊杰\n[00:01.10]作词：姚若龙\n[00:01.30]作曲：林俊杰\n[00:01.50]编曲：闫天午\n[00:01.71]制作人：黄怡\n[00:01.96]音乐总监：刘卓\n[00:02.16]音响总监：金少刚\n[00:02.46]吉他：金天、崔万平、高恭鹏\n[00:02.92]键盘：孙梦迪、李海郡、尹岳洋\n[00:03.43]Program：尹岳洋\n[00:03.58]贝斯：李九君\n[00:03.83]鼓手：卢炜、陈志龙\n[00:04.13]打击乐：刘效松\n[00:04.38]和音：朱江、张炜、樊竹青、关冰效\n[00:04.94]弦乐：靳海音®弦乐团\n[00:05.29]音乐混音：周天澈混音团队\n[00:16.73]你的痛苦我都心疼\n[00:18.65]想为你解决\n[00:24.39]挡开流言紧握你手\n[00:26.46]想飞奔往前\n[00:31.01]我相信爱能证明一切\n[00:35.06]够真心会超越时间\n[00:38.86]多付出也多了喜悦\n[00:42.60]让幸福蔓延\n[00:48.72]总是学不会\n[00:52.46]再聪明一点\n[00:56.25]记得自我保护\n[00:58.13]必要时候讲些\n[01:01.06]善意谎言\n[01:04.03]总是学不会\n[01:08.03]真爱也有现实面\n[01:13.69]不是谁情愿\n[01:17.53]就能够解决\n[01:28.48]一次争吵一个心结\n[01:30.24]累积着改变\n[01:35.96]内心疏远足够秒杀\n[01:37.99]外表多浓烈\n[01:42.52]才发现爱不代表一切\n[01:46.51]再真心也会被阻绝\n[01:50.45]这世界天天有诡雷\n[01:54.17]随时会爆裂\n[01:58.17]还是学不会\n[02:02.04]少浪漫一点\n[02:05.94]拼命着想的事\n[02:07.78]未必带来感动\n[02:10.75]或被感谢\n[02:13.63]还是学不会\n[02:17.47]解释我最伤最累\n[02:25.21]痛死都不愿怪谁\n[02:33.55]把每段痴情苦恋\n[02:37.36]在此刻排列面前\n[02:41.21]也感觉不埋怨只怀念\n[02:52.32]总是学不会\n[02:56.18]再聪明一点\n[03:00.03]记得自我保护\n[03:01.86]必要时候讲些\n[03:04.89]善意谎言\n[03:07.87]不是学不会\n[03:11.61]只是觉得爱太美\n[03:19.30]值得去沉醉流泪', '/song/林俊杰-学不会.mp3', 0, 0, b'0');
INSERT INTO `song` VALUES (85, 9, '林俊杰-醉赤壁', '醉赤壁', '2019-06-02 20:08:45', '2019-06-02 20:08:45', '/img/songPic/109951163187405670.jpg', '[00:00.03]林俊杰 - 醉赤壁(《赤壁Online》网游主题曲)\n[00:00.20]词：方文山\n[00:00.30]曲：林俊杰\n[00:00.40]编曲：谢占隽\n[00:25.50]落叶堆积了好几层 而我踩过青春\n[00:32.01]听见 前世谁在泪语纷纷\n[00:40.10]一次缘分结一次绳 我今生还在等\n[00:46.69]一世 就只能有一次的认真\n[00:55.92]确认过眼神 我遇上对的人\n[01:01.64]我挥剑转身 而鲜血如红唇\n[01:08.26]前朝记忆渡红尘 伤人的不是刀刃\n[01:14.80]是你转世而来的魂\n[01:19.26]确认过眼神 我遇上对的人\n[01:24.98]我策马出征 马蹄声如泪奔\n[01:31.27]青石板上的月光照进这山城\n[01:37.83]我一路的跟 你轮回声\n[01:41.24]我对你用情极深\n[02:08.05]洛阳城旁的老树根 像回忆般延伸\n[02:14.39]你问 经过是谁的心跳声\n[02:22.62]我拿醇酒一坛饮恨 你那千年眼神\n[02:29.07]是我 醉醉坠入赤壁的 伤痕\n[02:38.36]确认过眼神 我遇上对的人\n[02:44.05]我挥剑转身 而鲜血如红唇\n[02:50.66]前朝记忆渡红尘 伤人的不是刀刃\n[02:57.24]是你转世而来的魂\n[03:01.73]确认过眼神 我遇上对的人\n[03:07.46]我策马出征 马蹄声如泪奔\n[03:13.74]青石板上的月光照进这山城\n[03:20.36]我一路的跟 你轮回声\n[03:23.66]我对你用情极深\n[03:30.86]确认过眼神 我遇上对的人\n[03:36.73]我策马出征 马蹄声如泪奔\n[03:42.87]青石板上的月光照进这山城\n[03:49.75]我一路的跟 你轮回声\n[03:52.90]我对你用情极深\n[03:58.65]我一路的跟 你轮回声\n[04:02.09]我对你用情极深', '/song/林俊杰-醉赤壁.mp3', 0, 0, b'0');
INSERT INTO `song` VALUES (86, 40, 'a_hisa - night', 'night', '2019-06-02 22:55:18', '2020-06-17 15:55:37', '/img/songPic/2505786999719472.jpg', '[00:00:00]轻音乐', '/song/a_hisa - night.mp3', 0, 2, b'0');
INSERT INTO `song` VALUES (87, 39, 'Yiruma - River Flows in You', 'River Flows in You', '2019-06-02 22:53:59', '2020-06-09 10:32:59', '/img/songPic/2324367581169008.jpg', '[00:00:00]轻音乐', '/song/Yiruma - River Flows in You.mp3', 0, 1, b'0');
INSERT INTO `song` VALUES (88, 38, 'Vince Zhang - G小调的巴赫 (Vince Moonrise Edit)', 'G小调的巴赫', '2019-06-02 22:52:39', '2020-06-18 07:58:35', '/img/songPic/109951162991116739.jpg', '[00:00:00]轻音乐', '/song/Vince Zhang - G小调的巴赫 (Vince Moonrise Edit).mp3', 0, 12, b'0');
INSERT INTO `song` VALUES (89, 24, '胡歌-忘记时间', '忘记时间', '2019-06-02 20:17:24', '2019-06-02 20:17:24', '/img/songPic/46179488378975.jpg', '[00:03.25]胡歌 - 忘记时间\n[00:05.10]作词：孙艺\n[00:06.35]作曲：程振兴\n[00:32.76]沉默着走了有 多遥远\n[00:40.40]抬起头 蓦然间 才发现\n[00:47.38]一直倒退 倒退到原点\n[00:54.86]倔强坚持 对抗时间\n[01:02.43]说好了的永远 断了线\n[01:09.91]期许了 不变的 却都已改变\n[01:16.93]紧闭 双眼 才能看得见\n[01:23.94]那些曾经温暖 鲜艳过的画面\n[01:30.79]渐渐地忘记 赶不上明天\n[01:34.44]只要用力地抓紧了想念\n[01:38.51]明天再也 没有你的笑脸\n[01:45.49]渐渐地忘记 忘记了时间\n[01:49.26]我只要沿着记忆的路线\n[01:53.44]到最深处 纵然那只是瞬间\n[02:01.63]当眼泪 滑落的 是句点\n[02:08.88]心里面 始终你 从没有走远\n[02:15.67]耳边 誓言 还在回旋\n[02:22.91]我会好好珍惜 没有你的明天\n[02:59.43]渐渐地忘记 赶不上明天\n[03:02.93]只要用力地抓紧了想念\n[03:07.18]明天再也 没有你的笑脸\n[03:14.25]渐渐地忘记 忘记了时间\n[03:17.91]我只要沿着记忆的路线\n[03:22.17]到最深处 纵然那只是瞬间\n[03:28.91]渐渐地忘记 忘记了时间\n[03:32.59]我只要沿着记忆的路线\n[03:37.02]到最深处 纵然那只是瞬间', '/song/胡歌-忘记时间.mp3', 0, 0, b'0');
INSERT INTO `song` VALUES (90, 24, '胡歌-逍遥叹', '逍遥叹', '2019-06-02 20:18:26', '2019-06-02 20:18:26', '/img/songPic/109951163240682406.jpg', '[00:00.01]胡歌 - 逍遥叹\n[00:02.15]词：Funck\n[00:03.06]曲：Funck\n[00:24.97]岁月难得沉默\n[00:28.29]秋风厌倦漂泊\n[00:31.61]夕阳赖着不走\n[00:34.17]挂在墙头舍不得我\n[00:38.22]昔日伊人耳边话\n[00:41.60]已和潮声向东流\n[00:44.97]再回首往事也随\n[00:48.20]枫叶一片片落\n[00:51.88]爱已走到尽头\n[00:54.85]恨也放弃承诺\n[00:58.32]命运自认幽默想法太多\n[01:02.37]由不得我\n[01:04.91]壮志凌云几分愁\n[01:08.28]知己难逢几人留\n[01:11.54]再回首\n[01:13.25]却闻笑传醉梦中\n[01:19.58]笑叹词穷\n[01:21.65]古痴今狂终成空\n[01:26.09]刀钝刃乏恩断义绝\n[01:29.96]梦方破\n[01:32.83]路荒已叹饱览足迹\n[01:36.56]没人懂\n[01:39.44]多年望眼欲穿过\n[01:42.55]红尘滚滚我没看透\n[01:46.14]自嘲墨尽千情万怨\n[01:49.90]英杰愁\n[01:52.87]曲终人散发花鬓白\n[01:56.60]红颜殁\n[01:59.52]烛残未觉与日争辉\n[02:03.23]图消瘦\n[02:06.11]当泪干血隐狂涌\n[02:09.15]白雪纷飞都成空\n[02:38.49]爱已走到尽头\n[02:41.57]恨也放弃承诺\n[02:44.89]命运自认幽默想法太多\n[02:49.12]由不得我\n[02:51.82]壮志凌云几分愁知己\n[02:55.70]难逢几人留\n[02:58.21]再回首却闻笑传醉梦中\n[03:06.16]笑叹词穷古痴今狂终成空\n[03:12.83]刀钝刃乏恩断义绝梦方破\n[03:19.51]路荒已叹饱览足迹没人懂\n[03:26.12]多年望眼欲穿过\n[03:29.19]红尘滚滚我没看透\n[03:32.85]自嘲墨尽\n[03:34.94]千情万怨英杰愁\n[03:39.48]曲终人散发\n[03:41.94]花鬓白红颜殁\n[03:46.15]烛残未觉\n[03:48.23]与日争辉图消瘦\n[03:52.82]当泪干血隐狂涌\n[03:55.85]白雪纷飞都成空\n[03:59.47]笑叹词穷\n[04:01.50]古痴今狂终成空\n[04:06.16]刀钝刃乏恩断义绝\n[04:09.89]梦方破\n[04:12.75]路荒已叹饱览\n[04:15.69]足迹没人懂\n[04:19.44]多年望眼欲穿过\n[04:22.46]红尘滚滚我没看透\n[04:26.17]自嘲墨尽\n[04:28.30]千情万怨英杰愁\n[04:32.82]曲终人散\n[04:34.93]发花鬓白红颜殁\n[04:39.49]烛残未觉\n[04:41.63]与日争辉图消瘦\n[04:46.13]当泪干血隐狂涌\n[04:49.17]白雪纷飞都成空', '/song/胡歌-逍遥叹.mp3', 0, 0, b'0');
INSERT INTO `song` VALUES (91, 24, '胡歌-六月的雨', '六月的雨', '2019-06-02 17:34:16', '2019-06-02 18:07:07', '/img/songPic/109951163240682406.jpg', '[00:00.00] 暂无歌词', '/song/胡歌-六月的雨.mp3', 0, 0, b'0');
INSERT INTO `song` VALUES (92, 25, '陈势安-天后', '天后', '2019-06-02 20:25:37', '2020-06-18 07:59:53', '/img/songPic/109951163272878671.jpg', '[00:02.81]作词：彭学斌\n[00:04.61]作曲：彭学斌\n[00:24.96]终于找到借口\n[00:28.01]趁着醉意上心头\n[00:30.91]表达我所有感受\n[00:35.06]寂寞渐浓\n[00:37.36]沉默留在舞池角落\n[00:41.36]你说的太少或太多\n[00:44.71]都会让人更惶恐\n[00:49.02]谁任由谁放纵\n[00:51.97]谁会先让出自由\n[00:54.87]最后一定总是我\n[00:58.62]双脚悬空\n[01:01.27]在你冷酷热情间游走\n[01:05.52]被侵占所有还要笑着接受\n[01:10.72]我嫉妒你的爱气势如虹\n[01:16.67]像个人气高居不下的天后\n[01:22.68]你要的不是我而是一种虚荣\n[01:28.63]有人疼才显得多么出众\n[01:34.63]我陷入盲目狂恋的宽容\n[01:40.63]成全了你万众宠爱的天后\n[01:46.69]若爱只剩诱惑只剩彼此忍受\n[01:52.69]别再互相折磨\n[01:57.94]因为我们都有错\n[02:15.94]推开苍白的手\n[02:18.99]推开苍白的厮守\n[02:21.94]管你有多么失措\n[02:25.59]别再叫我\n[02:28.29]心软是最致命的脆弱\n[02:32.44]我明明都懂却仍拼死效忠\n[02:37.65]我嫉妒你的爱气势如虹\n[02:43.65]像个人气高居不下的天后\n[02:49.70]你要的不是我而是一种虚荣\n[02:55.65]有人疼才显得多么出众\n[03:01.65]我陷入盲目狂恋的宽容\n[03:07.65]成全了你万众宠爱的天后\n[03:13.75]若爱只剩诱惑只剩彼此忍受\n[03:19.70]别再互相折磨\n[03:24.90]因为我们都有错\n[03:49.70]如果有一天爱不再迷惑\n[03:55.65]足够去看清所有是非对错\n[04:01.75]直到那个时候你在我的心中\n[04:07.65]将不再被歌颂\n[04:13.75]把你当作天后\n[04:20.30]不会再是我', '/song/陈势安-天后.mp3', 0, 1, b'0');
INSERT INTO `song` VALUES (93, 26, '王菲-匆匆那年', '匆匆那年', '2019-06-02 20:26:21', '2020-06-18 07:59:43', '/img/songPic/2542070884980240.jpg', '[00:00.60]王菲 - 匆匆那年\n[00:01.60]词：林夕\n[00:02.60]曲：梁翘柏\n[00:28.68]匆匆那年我们\n[00:30.03]究竟说了几遍\n[00:31.49]再见之后再拖延\n[00:34.27]可惜谁有没有\n[00:35.53]爱过不是一场\n[00:36.83]七情上面的雄辩\n[00:39.62]匆匆那年我们\n[00:41.13]一时匆忙撂下\n[00:42.38]难以承受的诺言\n[00:45.49]只有等别人兑现\n[00:51.26]不怪那吻痕还\n[00:53.72]没积累成茧\n[00:56.63]拥抱着冬眠也没能\n[01:00.09]羽化再成仙\n[01:02.25]不怪这一段情\n[01:04.96]没空反复再排练\n[01:07.77]是岁月宽容恩赐\n[01:11.85]反悔的时间\n[01:18.70]如果再见不能红着眼\n[01:21.76]是否还能红着脸\n[01:24.82]就像那年匆促\n[01:26.22]刻下永远一起\n[01:27.62]那样美丽的谣言\n[01:30.03]如果过去还值得眷恋\n[01:33.40]别太快冰释前嫌\n[01:35.95]谁甘心就这样\n[01:39.03]彼此无挂也无牵\n[01:41.69]我们要互相亏欠\n[01:47.15]要不然凭何怀缅\n[01:58.60]匆匆那年我们\n[01:59.85]见过太少世面\n[02:01.00]只爱看同一张脸\n[02:04.07]那么莫名其妙\n[02:05.47]那么讨人欢喜\n[02:06.78]闹起来又太讨厌\n[02:09.84]相爱那年活该\n[02:11.14]匆匆因为我们\n[02:12.84]不懂顽固的诺言\n[02:15.36]只是分手的前言\n[02:21.16]不怪那天太冷\n[02:23.82]泪滴水成冰\n[02:26.73]春风也一样没\n[02:29.39]吹进凝固的照片\n[02:32.20]不怪每一个人\n[02:35.06]没能完整爱一遍\n[02:37.97]是岁月善意落下\n[02:41.93]残缺的悬念\n[02:48.82]如果再见不能红着眼\n[02:51.68]是否还能红着脸\n[02:54.88]就像那年匆促\n[02:56.09]刻下永远一起\n[02:57.35]那样美丽的谣言\n[02:59.91]如果过去还值得眷恋\n[03:03.12]别太快冰释前嫌\n[03:05.94]谁甘心就这样\n[03:08.90]彼此无挂也无牵\n[03:11.25]如果再见不能红着眼\n[03:14.11]是否还能红着脸\n[03:17.27]就像那年匆促\n[03:18.68]刻下永远一起\n[03:19.93]那样美丽的谣言\n[03:22.54]如果过去还值得眷恋\n[03:25.49]别太快冰释前嫌\n[03:28.40]谁甘心就这样\n[03:31.42]彼此无挂也无牵\n[03:34.18]我们要互相亏欠\n[03:39.83]我们要藕断丝连', '/song/王菲-匆匆那年.mp3', 0, 1, b'0');
INSERT INTO `song` VALUES (94, 26, '王菲-红豆', '红豆', '2019-06-02 20:27:14', '2019-06-02 20:27:14', '/img/songPic/2542070884980240.jpg', '[00:00.10]红豆 - 王菲\n[00:00.20]词：林夕\n[00:00.30]曲：柳重言\n[00:17.15]还没好好的感受\n[00:20.59]雪花绽放的气候\n[00:24.96]我们一起颤抖\n[00:28.03]会更明白 什么是温柔\n[00:33.59]还没跟你牵着手\n[00:37.72]走过荒芜的沙丘\n[00:42.10]可能从此以后 学会珍惜\n[00:47.42]天长和地久\n[00:50.74]有时候 有时候\n[00:54.93]我会相信一切有尽头\n[00:59.18]相聚离开 都有时候\n[01:03.62]没有什么会永垂不朽\n[01:07.88]可是我 有时候\n[01:12.01]宁愿选择留恋不放手\n[01:16.38]等到风景都看透\n[01:20.76]也许你会陪我 看细水长流\n[01:40.12]还没为你把红豆\n[01:46.38]熬成缠绵的伤口\n[01:50.69]然后一起分享\n[01:53.88]会更明白 相思的哀愁\n[01:59.20]还没好好的感受\n[02:03.57]醒着亲吻的温柔\n[02:07.76]可能在我左右\n[02:11.02]你才追求 孤独的自由\n[02:18.57]有时候 有时候\n[02:22.95]我会相信一切有尽头\n[02:27.14]相聚离开 都有时候\n[02:31.52]没有什么会永垂不朽\n[02:35.96]可是我 有时候\n[02:39.96]宁愿选择留恋不放手\n[02:44.34]等到风景都看透\n[02:48.53]也许你会陪我 看细水长流\n[03:07.93]有时候 有时候\n[03:12.13]我会相信一切有尽头\n[03:16.37]相聚离开 都有时候\n[03:20.69]没有什么会永垂不朽\n[03:25.01]可是我 有时候\n[03:29.26]宁愿选择留恋不放手\n[03:33.57]等到风景都看透\n[03:37.89]也许你会陪我 看细水长流', '/song/王菲-红豆.mp3', 0, 0, b'0');
INSERT INTO `song` VALUES (95, 32, 'Ramin Djawadi-The Children', 'The Children', '2019-06-02 17:42:56', '2020-06-18 07:58:43', '/img/songPic/6013229092830804.jpg', '[00:00.00] 暂无歌词', '/song/Ramin Djawadi-The Children.mp3', 0, 1, b'0');
INSERT INTO `song` VALUES (96, 33, '小林未郁-Perfect Time', 'Perfect Time', '2019-06-02 17:44:05', '2020-06-09 04:44:20', '/img/songPic/2539871862623611.jpg', '[00:00.00] 暂无歌词', '/song/小林未郁-Perfect Time.mp3', 2, 5, b'0');
INSERT INTO `song` VALUES (97, 34, 'Various Artists-Soundtrack', 'Zoosters Breakout', '2019-06-02 17:44:59', '2020-04-05 17:38:18', '/img/songPic/2539871861239300.jpg', '[00:00.00] 暂无歌词', '/song/Soundtrack-Zoosters Breakout.mp3', 0, 0, b'0');
INSERT INTO `song` VALUES (98, 35, '少女时代 - Oh!', 'Oh!', '2019-06-02 17:45:51', '2019-06-02 18:07:01', '/img/songPic/2529976256578329.jpg', '[00:00.00] 暂无歌词', '/song/少女时代 - Oh!.mp3', 0, 0, b'0');
INSERT INTO `song` VALUES (99, 36, 'The Piano Guys-Let It Go', '冰雪奇缘', '2019-06-02 22:41:30', '2020-06-18 07:58:35', '/img/songPic/109951163437997103.jpg', '[00:00:00]钢琴曲', '/song/The Piano Guys-Let It Go.mp3', 0, 2, b'0');
INSERT INTO `song` VALUES (100, 37, 'Peter Broderick - I Am Piano', 'I Am Piano', '2019-06-02 22:50:31', '2020-06-20 01:45:50', '/img/songPic/6661940953400245.jpg', '[00:00:00]轻音乐', '/song/Peter Broderick - I Am Piano.mp3', 7, 57, b'0');
INSERT INTO `song` VALUES (101, 38, 'Shayne Ward-Until You', 'Until You', '2019-06-02 23:37:53', '2019-06-02 23:37:53', '/img/songPic/18252992533269375.jpg', '[00:00:00]暂无歌词', '/song/Shayne Ward-Until You.mp3', 0, 0, b'0');
INSERT INTO `song` VALUES (102, 28, 'Celine Dion-My Heart Will Go On', 'My Heart Will Go On', '2019-06-02 23:39:37', '2019-06-02 23:39:37', '/img/songPic/813638604607979.jpg', '[00:00:00]暂无歌词', '/song/Celine Dion-My Heart Will Go On.mp3', 0, 0, b'0');
INSERT INTO `song` VALUES (103, 39, '倪椤 - 疯狂的法老', '疯狂的法老', '2019-06-03 01:27:43', '2019-06-03 01:27:43', '/img/songPic/109951162945634228.jpg', '[00:00:00]暂无歌词', '/song/倪椤 - 疯狂的法老.mp3', 0, 0, b'0');
INSERT INTO `song` VALUES (104, 40, '群星 - aloha heja he', 'aloha heja he', '2019-06-03 01:30:42', '2019-06-03 01:30:42', '/img/songPic/109951163926969186.jpg', '[00:00:00]暂无歌词', '/song/群星 - aloha heja he.mp3', 0, 0, b'0');
INSERT INTO `song` VALUES (105, 29, '胡伟立 - 侠风', '侠风', '2019-06-03 01:33:36', '2019-06-03 01:33:36', '/img/songPic/2537672838499056.jpg', '[00:00:00]暂无歌词', '/song/胡伟立 - 侠风.mp3', 0, 0, b'0');
INSERT INTO `song` VALUES (106, 29, '胡伟立 - 嬉戏', '嬉戏', '2019-06-03 01:34:22', '2019-06-03 01:34:22', '/img/songPic/2537672838499056.jpg', '[00:00:00]暂无歌词', '/song/胡伟立 - 嬉戏.mp3', 0, 0, b'0');
INSERT INTO `song` VALUES (108, 40, 'Josh Ritter - Change of Time', 'Change of Time', '2019-06-03 01:36:53', '2020-06-16 00:59:38', '/img/songPic/2532175279910174.jpg', '[00:00:00]暂无歌词', '/song/Josh Ritter - Change of Time.mp3', 0, 10, b'0');
INSERT INTO `song` VALUES (109, 40, 'Josh Ritter - Darlin', 'Darlin', '2019-06-03 01:37:14', '2020-06-10 14:28:47', '/img/songPic/2532175279910174.jpg', '[00:00:00]暂无歌词', '/song/Josh Ritter - Darlin.mp3', 0, 6, b'0');
INSERT INTO `song` VALUES (110, 29, '胡伟立 - 太极乐', '太极乐', '2019-06-03 01:37:45', '2020-04-05 16:46:18', '/img/songPic/2537672838499056.jpg', '[00:00:00]暂无歌词', '/song/武聆音雄 - 太极乐.mp3', 0, 0, b'0');
INSERT INTO `song` VALUES (112, 41, 'Tone Damli Aaberge - Stupid', 'Stupid', '2019-06-03 01:38:40', '2019-06-03 01:38:40', '/img/songPic/1775711278864263.jpg', '[00:00:00]暂无歌词', '/song/Tone Damli Aaberge - Stupid.mp3', 0, 0, b'0');
INSERT INTO `song` VALUES (113, 1, 'Sleepmakeswaves-Emergent', 'Love of Cartography', '2020-06-06 23:31:21', '2020-06-19 02:37:51', '/img/songPic/a89200844ef3490587535dc171682cc5.jpg', '[00:00:00]暂无歌词', '/song/0144952e74054015baaf325d2c73a024.mp3', 7, 47, b'0');
INSERT INTO `song` VALUES (114, 4, 'Athletics-I', 'Who You Are Is Not Enough', '2020-06-06 23:52:17', '2020-06-11 05:34:22', '/img/songPic/845be9fc79ae4ea7a1f55ab9df93d736.jpg', '[00:00:00]暂无歌词', '/song/4293107b0ecb437ca57c21279b138d17.mp3', 0, 1, b'0');
INSERT INTO `song` VALUES (115, 4, 'Athletics-II', 'Who You Are Is Not Enough', '2020-06-06 23:52:57', '2020-06-11 05:34:22', '/img/songPic/30453b24c57f4eefa4666dfb0fa131b3.jpg', '[00:00:00]暂无歌词', '/song/0ae237136909493ca76bd3afb8a4bc62.mp3', 0, 2, b'0');
INSERT INTO `song` VALUES (116, 4, 'Athletics-III', 'Who You Are Is Not Enough', '2020-06-06 23:53:37', '2020-06-19 02:57:02', '/img/songPic/ab25e22279e5444889f572666bc13448.jpg', '[00:00:00]暂无歌词', '/song/dc98da22c7e6455488dd23e80be036b7.mp3', 7, 15, b'0');
INSERT INTO `song` VALUES (117, 4, 'Athletics-IV', 'Who You Are Is Not Enough', '2020-06-06 23:54:02', '2020-06-11 05:34:20', '/img/songPic/11cd6b9d24a945fbad589ed7660cfc65.jpg', '[00:00:00]暂无歌词', '/song/89f144cff9a345348bac6946c06b200c.mp3', 0, 1, b'0');
INSERT INTO `song` VALUES (118, 4, 'Athletics-V', 'Who You Are Is Not Enough', '2020-06-06 23:54:29', '2020-06-11 05:34:21', '/img/songPic/81398638c60e47918dd28bf092ce528c.jpg', '[00:00:00]暂无歌词', '/song/c87afda9dd3d45c99357e5a1368c93c9.mp3', 0, 1, b'0');
INSERT INTO `song` VALUES (119, 5, 'MONO-l\'america', 'Hey You', '2020-06-07 00:07:39', '2020-06-16 14:06:10', '/img/songPic/70834f774f694154813bf637ee5a0614.jpg', '[00:00:00]暂无歌词', '/song/81c4db914815478aae155e3796826d11.mp3', 13, 18, b'0');
INSERT INTO `song` VALUES (120, 5, 'MONO-Kanata', 'The Last Dawn', '2020-06-07 00:10:09', '2020-06-13 12:58:01', '/img/songPic/80506a673208477bb44360a23ca9f3b0.jpg', '[00:00:00]暂无歌词', '/song/868dfdfcab014eceb156d7e4d24b8ac1.mp3', 0, 3, b'0');
INSERT INTO `song` VALUES (121, 5, 'MONO-Halcyon', 'Peel Session', '2020-06-07 00:12:02', '2020-06-13 13:01:23', '/img/songPic/4babcfd0e4b8470bb9794c86a14e5782.jpg', '[00:00:00]暂无歌词', '/song/5d6ad269dd7f49c0b9ff4b81abf57638.mp3', 0, 4, b'0');
INSERT INTO `song` VALUES (122, 5, 'MONO-2 Candles, 1wish', 'Walking Cloud and Deep Red Sky, Flag Fluttered and the Sun Shined', '2020-06-07 00:15:09', '2020-06-13 12:42:50', '/img/songPic/ca51a58b41db4efda365026880441c58.jpg', '[00:00:00]暂无歌词', '/song/0a145038131a4ed5bac839400cddab93.mp3', 0, 4, b'0');
INSERT INTO `song` VALUES (123, 5, 'MONO-Follow The Map', 'Hymn to the Immortal Wind', '2020-06-07 00:18:15', '2020-06-16 14:06:11', '/img/songPic/3f769080c15e47c1ad57627023fad365.jpg', '[00:00:00]暂无歌词', '/song/b57ca0ca432a49a7ae905172f1cf76c3.mp3', 0, 6, b'0');
INSERT INTO `song` VALUES (124, 3, '惘闻-焦虑抑制剂', 'L&R', '2020-06-07 00:35:07', '2020-06-17 05:43:21', '/img/songPic/e5e74bc1b383444c9f240855369f3771.jpg', '[00:00:00]暂无歌词', '/song/c749782642124ad3aea2bb1e31b5c333.mp3', 0, 7, b'0');
INSERT INTO `song` VALUES (125, 3, '惘闻-Break that Car', 'Post Rock (Neocha NetLabel 07001-001)', '2020-06-07 00:36:10', '2020-06-17 05:43:19', '/img/songPic/415869bf1a9b4ccfb2c69f7f210cbf8b.jpg', '[00:00:00]暂无歌词', '/song/0f5ef89041334d5aa3fa60f064da03b1.mp3', 0, 8, b'0');
INSERT INTO `song` VALUES (126, 3, '惘闻-welcome to utopia', '八匹马', '2020-06-07 00:37:24', '2020-06-17 05:43:22', '/img/songPic/59d45033c2754084b7bfd11ff3cd518e.jpg', '[00:00:00]暂无歌词', '/song/5ffdd12c11c645ebb58369e82c08bcbb.mp3', 0, 10, b'0');
INSERT INTO `song` VALUES (127, 3, '惘闻-抿嘴谣', 'IV', '2020-06-07 00:38:42', '2020-06-14 02:57:10', '/img/songPic/ef9697f6d88a4f54af4ab78e7ee6eaa1.jpg', '[00:00:00]暂无歌词', '/song/764e497093264484966c08b470f168da.mp3', 0, 8, b'0');
INSERT INTO `song` VALUES (128, 3, '惘闻-Rain Watcher', '0.7', '2020-06-07 00:39:43', '2020-06-14 02:57:11', '/img/songPic/4a4360ccdabf406ca48aa47d26d07fb0.jpg', '[00:00:00]暂无歌词', '/song/a1fcf1e101e54db3a68fb2e06e905fd1.mp3', 0, 6, b'0');
INSERT INTO `song` VALUES (129, 5, 'MONO-Requiem for Hell', 'Requiem for Hell', '2020-06-08 07:36:01', '2020-06-19 03:11:11', '/img/songPic/a0eea14e21b4495fa097c563d818dba2.JPG', '[00:00:00]暂无歌词', '/song/73fc6459595446a8997a8113b74b23b4.mp3', 7, 17, b'0');
INSERT INTO `song` VALUES (130, 6, 'Aural Method-Breathe deep your chorus', 'Slumber, Savage Beasts', '2020-06-08 09:06:37', '2020-06-17 05:46:44', '/img/songPic/c3363482129646aab8ac15e43fdcd825.jpg', '[00:00:00]暂无歌词', '/song/4ec50f9c729c481c9668aa99485a2584.mp3', 0, 1, b'0');
INSERT INTO `song` VALUES (131, 6, 'Aural Method-Let us face the evening skies with child-like eyes', 'Let us face the evening skies with child​-​like eyes', '2020-06-08 09:09:40', '2020-06-17 05:46:55', '/img/songPic/6390ef3aaf344b43b36de01c92fdd4e6.jpg', '[00:00:00]暂无歌词', '/song/103a57ce7bba48f8821f6ded9194f0f2.mp3', 0, 1, b'0');
INSERT INTO `song` VALUES (132, 1, 'Sleepmakeswaves-aaaa', 'aaaa', '2020-06-11 10:09:41', '2020-06-16 04:42:45', '/img/songPic/2ff950ae2cd04bc49cff9bed33e54c14.jpg', '[00:00:00]暂无歌词', '/song/8c23e4c89a054b23aea98f734089bf14.mp3', 1, 16, b'0');
INSERT INTO `song` VALUES (133, 1, 'Sleepmakeswaves-aaaaaa', 'aaaa', '2020-06-11 10:11:27', '2020-06-14 05:33:47', '/img/songPic/683bc73f6c06468697b3a3e2c8f37050.jpg', '[00:00:00]暂无歌词', '/song/9245dc0e3d674802865a05035932d0dd.mp3', 1, 24, b'0');
COMMIT;

-- ----------------------------
-- Table structure for song_list
-- ----------------------------
DROP TABLE IF EXISTS `song_list`;
CREATE TABLE `song_list` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `title` varchar(255) NOT NULL COMMENT '标题',
  `pic` varchar(255) DEFAULT NULL COMMENT '照片',
  `introduction` text COMMENT '说明',
  `style` varchar(10) DEFAULT '无' COMMENT '样式',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=84 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of song_list
-- ----------------------------
BEGIN;
INSERT INTO `song_list` VALUES (1, 'The Good, the Bad and the Ugly', '/img/songList/733a9d18-eda6-45f9-a950-31d9bb2370ab.jpg', 'he Good, the Bad and the Ugly: Original Motion Picture Soundtrack was released in 1966 alongside the Western film, The Good, the Bad and the Ugly, directed by Sergio Leone. The score is composed by frequent Leone collaborator Ennio Morricone, whose distinctive original compositions, containing gunfire, whistling, and yodeling permeate the film. The main theme, resembling the howling of a coyote, is a two-note melody that is a frequent motif, and is used for the three main characters, with a different instrument used for each one: flute for Blondie (Man With No Name), Arghilofono (Ocarina) for Angel Eyes, and human voices for Tuco.', '欧美-轻音乐');
INSERT INTO `song_list` VALUES (2, '年轻之歌 有关爱与挑衅', '/img/songListPic/wv2NdfZrUnLDSwk_kQoSZg==_109951163751040922.jpg', '那些喜欢到会循环播放的歌', '华语');
INSERT INTO `song_list` VALUES (3, '希望十八岁你爱的人是八十岁在你身边的人', '/img/songListPic/q0ZyCw22PCiTG2LX_A2kew==_109951163594989759.jpg', '让你怦然心动', '华语');
INSERT INTO `song_list` VALUES (4, '你的青春里有没有属于你的一首歌？', '/img/songListPic/109951163271025942.jpg', '关于青春里的那首歌，唱的是你和谁的回忆呢？那年你们有什么故事？\n\n总是有许多的记忆，是关于青春的。\n\n青春时埋下的那份躁动，总会在多年后，装饰着笑容。\n\n总是有许多的遗憾，是关于青春的。\n\n青春时还没来得及表达的情感，总会在多年以后，偶尔的左右着悲欢。\n\n那些最美年华里的相遇，那些青春里的不知所措，都被勾勒成了一幅幅画。\n\n而这些画，只在心情最愉悦时，只在心情最低落时，悄悄的，在内心深处闪过。', '华语');
INSERT INTO `song_list` VALUES (5, '那些喜欢到循环播放的歌', '/img/songListPic/109951163609743240.jpg', '那些喜欢到会循环播放的歌\n\n感谢收听', '华语');
INSERT INTO `song_list` VALUES (6, '林俊杰的正确打开方式【路人请参考简介】', '/img/songListPic/19080924789030458.jpg', '这是一个一定要顺序播放并且不切歌才能发现其中奥妙的歌单。\n这是一个可以完美呈现林俊杰音乐态度的歌单。\n这是一个林俊杰的立体化打开方式。', '华语');
INSERT INTO `song_list` VALUES (7, '高 级 感 vlog 纯音乐 BGM', '/img/songListPic/vLSB9-NGsd4CLYf_4ShGww==_109951163609572271.jpg', '歌单', '轻音乐');
INSERT INTO `song_list` VALUES (8, '世界上很好听的纯音乐(经典不朽)', '/img/songListPic/92NWlGo76ha-if-WMK3vCg==_1410673428769729.jpg', '歌单', '轻音乐');
INSERT INTO `song_list` VALUES (9, '『粤语』好听到爆的粤语歌单', '/img/songList/9bc3c81cd6d34d2388d0e1def49ff6f0.jpg', '歌单', '粤语');
INSERT INTO `song_list` VALUES (10, '韩剧OST｜祝你走过半生，仍有颗少女心', '/img/songListPic/zhunizouguobansheng.jpg', '歌单', '日韩');
INSERT INTO `song_list` VALUES (11, '我喜欢你，喜欢没用，没用也喜欢', '/img/songListPic/109951163919069037.jpg', '情不知所起，一往而情深。\n伤不知所因，痛彻心扉\n\n从前你是我心上的一束光，倾世温暖。\n现在你是我心里的一根刺，刻骨铭心。\n以后你是我心底的一粒尘，无关痛痒。\n\n我喜欢你，喜欢没用，没用也喜欢', '华语');
INSERT INTO `song_list` VALUES (12, '生活感到疲惫的话就听这些歌吧', '/img/songListPic/109951163936991203.jpg', '当你感到疲惫的时候\n睡一个沉稳的觉醒来\n和陌生人对视互笑\n买一杯刚好温度的奶茶\n吃到合口味的菜\n遇见喜欢人的时候自己是最美的状态\n下雨 清晨 初雪 深夜 亲吻 拥抱 牵手 大笑\n快乐总被说很难\n但我希望你顶...', '华语');
INSERT INTO `song_list` VALUES (13, '熬夜和想你，我都该戒掉了', '/img/songListPic/109951163216834301.jpg', '命运似乎是一个轮回，在一次次的偶然下，平行线交叉，再平行，故事始终有\"然后\"，可后来的我们，都学会如何去爱了吗？\n\n如果当时你没走，后来的我们会不会不一样。或许，我们每个人都想回到故事最开始的地方。', '华语');
INSERT INTO `song_list` VALUES (14, '怀旧向||时光流转从前，人生如寄', '/img/songListPic/109951163443093546.jpg', '岁月悠扬，娓娓动听\n在流失了的记忆之中\n听到属于我们这一代人的歌\n想起属于我们这一代人的路\n愿\n星辰大海\n春暖花开', '华语');
INSERT INTO `song_list` VALUES (15, '不曾刻骨铭心，为何念念不忘？', '/img/songListPic/109951163887710551.jpg', '“所爱隔山海 山海皆可平”\n你拒绝的 不珍惜的 不代表别人也不喜欢\n人生都是向前走的 我们都一样\n\n谁先认真谁先输，我只能说我输了\n再忙碌还是会想你 真的不明白\n都说未曾刻骨铭心，又为何总是念念不忘', '华语');
INSERT INTO `song_list` VALUES (16, '社会语录！土嗨', '/img/songListPic/109951163858422257.jpg', '社会！', '华语');
INSERT INTO `song_list` VALUES (17, '听青春ost，心悸的时光里有你', '/img/songListPic/109951163826485303.jpg', '我们青春就像是被大雨淋湿的自己，即使是感冒了，也愿意再淋一次。只有爱过了，伤过了，痛过了，这才叫青春。', '华语');
INSERT INTO `song_list` VALUES (18, '【经典】聼一首老歌，想念一段时光', '/img/songListPic/109951163311246502.jpg', '寂静的黄昏，总让人怀念，总是深深沦陷...\n那些个细数光阴在手中沉淀的日子，一去不复返...\n偶尔，我一个人站在黄昏的角落，代替你主持夕阳的葬礼...\n想着想着，痛凝重了时间，曳落了容颜...\n青春的羽翼...', '华语');
INSERT INTO `song_list` VALUES (19, '华语百首｜好听的才是耳朵最想要的', '/img/songListPic/109951163597665130.jpg', '好听的音乐才是耳朵最想要的', '华语');
INSERT INTO `song_list` VALUES (20, '【华语抒情-林俊杰】—孤独，是我的享受', '/img/songListPic/109951163826685601.jpg', '我喜欢孤独，不与任何人说话，在一份静谧中安然地做自己喜欢的事。任身心徜徉，暂时忘却“柴米油盐酱醋茶”的烦琐，去体验“琴棋书画诗酒花”的高雅；暂时抛开追名逐利的忙碌奔波，去感受心无杂念的宁静淡泊；暂时摆脱困扰你的喜怒哀乐，去体味生活中的充实祥和。', '华语');
INSERT INTO `song_list` VALUES (21, '睡觉必备心灵鸡汤', '/img/songListPic/109951163879964479.jpg', '缓缓的声音，流进心里的枯井', '轻音乐');
INSERT INTO `song_list` VALUES (22, '愿山野浓雾都有路灯 风雨漂泊都有归舟', '/img/songListPic/109951163594594622.jpg', '你慢慢走\n回忆暗涌\n悲喜翻滚', '华语');
INSERT INTO `song_list` VALUES (23, '「女声控」音色沁人心 旋律美如画', '/img/songListPic/109951163098238240.jpg', '女声控福利来啦-=≡Σ((( つ•̀ω•́)つ', '欧美');
INSERT INTO `song_list` VALUES (24, 'Moombahton 丨电流律动的异域风', '/img/songListPic/109951163500933771.jpg', 'Moombahton融合了Dutch House和Reggaeton，常常带有Trap的元素，特别是在Bulid Up部分，厚实的Bass与密集的打击鼓点，节拍丰富，加上旋律和音色比较异域，一般都有人声部分，其BPM多数基于110，更突出在Drop高潮，让人不禁联想抖动的节奏。', '欧美');
INSERT INTO `song_list` VALUES (25, '【励志电音】愿你身披星芒 执笔为剑', '/img/songListPic/109951163321304060.jpg', '为了父母期待的目光\n为了那深藏于你心底的梦想\n为了你朝思暮想的那个可望而不可及...', '欧美');
INSERT INTO `song_list` VALUES (26, '史诗 • 神级BGM丨灵魂的震颤&心灵的洗涤', '/img/songListPic/109951163692248020.jpg', '随着一声怒吼，千军万马进行着一场浩荡的战争，马的嘶吼声与兵器碰撞的金属声谱写着一部史前的震撼。\n欢迎来到此歌单，晚上睡觉别点开！\n别点开！\n别点开！', 'BGM');
INSERT INTO `song_list` VALUES (27, '全球超大气势磅礴背景音乐精选100首合集', '/img/songListPic/109951163579465390.jpg', '熟悉的感觉，你值得拥有', 'BGM');
INSERT INTO `song_list` VALUES (28, '史诗级震撼人心大气磅礴超燃BGM', '/img/songListPic/109951163618525359.jpg', '史诗级震撼人心超燃BGM,每首都是本人精心挑选和最喜欢的，歌单歌曲是按我个人喜欢排序，持续更新中……', 'BGM');
INSERT INTO `song_list` VALUES (29, '肾上腺素飙升（赛车必备）', '/img/songListPic/109951163578540101.jpg', '赛车运动，自吸为王，涡轮必胜.', 'BGM');
INSERT INTO `song_list` VALUES (30, '『欧美神曲』让你怦然心动', '/img/songListPic/109951163621168769.jpg', '让你怦然心动', '欧美');
INSERT INTO `song_list` VALUES (31, '健身丨做自己平凡世界的超级英雄', '/img/songListPic/109951163670223947.jpg', '热爱健身的朋友们一起嗨！', 'BGM');
INSERT INTO `song_list` VALUES (32, '『空灵欧美』论◎怎样唱出星辰大海', '/img/songListPic/109951163921593479.jpg', '“我们在哪里？”\n\n“星空，是星空！美丽而触手可及！”\n\n“这里，是星辰大海，是你小时候的幻想……”', '欧美');
INSERT INTO `song_list` VALUES (33, 'Space Club 蹦迪', '/img/songListPic/109951163738160487.jpg', 'Sapce Clup全球百大DJ丨Urumqi', 'BGM');
INSERT INTO `song_list` VALUES (34, '那些超带感的英文歌曲~『一秒沦陷』', '/img/songListPic/109951163736178562.jpg', '每天，都要去去做一些枯燥的事\n一些让人心烦的事\n可是又不得不去做\n一切都在重复\n都在复制、粘贴，复制、粘贴……\n何必不去做那些让人愉快的事呢\n比如说\n听歌\n它能让生活有趣起来\n有意义起来\n那么就去欣赏...', '欧美');
INSERT INTO `song_list` VALUES (35, '【游戏原声】屏幕之后，更是另一个世界', '/img/songListPic/109951163408189924.jpg', '我们曾与白狼一起踏上寻找女儿的征途\n走遍大陆与史凯利杰群岛，寻遍北方诸国与尼弗迦德 甘当布尔维坎的屠夫\n只为那因意外率而与自己命运相连的辛特拉幼狮\n只为那曾在布洛克莱昂森林惊慌失措的小女孩\n重回自...', 'BGM');
INSERT INTO `song_list` VALUES (36, '极致旋律&空灵飘纱', '/img/songListPic/109951163672593019.jpg', '心在寂静之中冒着烟 寻找安寄所', '欧美');
INSERT INTO `song_list` VALUES (37, '我们的心如此自由 思绪辽远无边', '/img/songListPic/109951163932838310.jpg', '我想每个人的心底，都潜藏着一个向往远方的梦，此处已无再多风景，熟悉的地方也不再有惊喜。人心思动，都渴望去流浪天涯，无论以哪种方式。', '欧美');
INSERT INTO `song_list` VALUES (38, '欧美精选 | 嗨 伙计 要来首10w+吗？', '/img/songListPic/109951163414509421.jpg', '个别曲目未收录很可能是由于我没买人家的专辑 emmmm.... \n没买就是没买。没兴趣，不想买，买不起，这答案您满意吗？', '欧美');
INSERT INTO `song_list` VALUES (39, '「高质量英文歌」让你单曲循环的英文歌', '/img/songListPic/18814842976746273.jpg', 'I love the endless sea, I love the rain softly, I love flying snow, I love bringing a bright full moon, but I love the starry night sky.', '欧美');
INSERT INTO `song_list` VALUES (40, '稀 | 奇 | 古 | 怪 | 音 | 效 | 工 | 厂', '/img/songListPic/109951163462173993.jpg', '不好意思 在我耳朵化掉之前是能数清的\n\n麻烦大家帮黑哥数数\n\n这些里面藏了多少个稀奇古怪的音效\n\n听归听 收藏某首歌之后我也不知道明天你的日推怎么作妖哈', '欧美');
INSERT INTO `song_list` VALUES (41, '〖欧美女声〗 倾城一刻，我似乎更懂你', '/img/songListPic/18591642116274551.jpg', '个性，风格，颜值，行为，年龄段……差不多的人，听歌的兴趣差不多哦', '欧美');
INSERT INTO `song_list` VALUES (42, '『电影配乐』当优雅华尔兹遇上激情探戈', '/img/songListPic/109951163904955394.jpg', '华尔兹有着与生俱来的华贵与优雅。简约却不简单的舞步透出的是舞者相互心灵的体会与传达……', '欧美');
INSERT INTO `song_list` VALUES (43, '妄想去流浪，独自陶醉在自己的世界里。', '/img/songListPic/109951163543366840.jpg', '生活乏味 ，学习一直倒退，工作失意。\n害怕失去，想像和现实的差距将我打败。\n我想要远离这里。', '轻音乐');
INSERT INTO `song_list` VALUES (44, '晚安曲丨我温柔而通透的小宇宙', '/img/songListPic/109951163646671507.jpg', '晚安～今夜好梦啊！', '轻音乐');
INSERT INTO `song_list` VALUES (45, '晚安曲丨我温柔而通透的小宇宙', '/img/songListPic/109951163808060526.jpg', '你别怕，总有人熬夜陪你，下雨接你，说我爱你，好的总是压箱底\n当一个人能够影响你心情的时候，说明你在乎了；\n当一个人能赚到你眼泪的时候，说明你投入了；\n当一个人能驾驭你情绪的时候，说明你沦陷...', '轻音乐');
INSERT INTO `song_list` VALUES (46, '性欲与孤独，容易让人误解爱情', '/img/songListPic/109951163924312766.jpg', '平常拍片子时，我喜欢在拍摄现场放一些有画面感的音乐让模特找感觉，抽空整理了一下近期的播放列表，做了这套新歌单，或许适合姑娘们在以下一些场景聆听', '轻音乐');
INSERT INTO `song_list` VALUES (47, '人生就要嗨', '/img/songListPic/109951163938242029.jpg', '我命由我不由天', '日韩-BGM');
INSERT INTO `song_list` VALUES (48, '吃鸡必备BGM', '/img/songListPic/109951163776201870.jpg', '大吉大利 今晚吃鸡\n此歌单适合在素质广场，飞机上，杀完人后，轰炸区天选之人的情况下播放，并不是让你全程听音乐玩游戏。', 'BGM');
INSERT INTO `song_list` VALUES (49, '伤感日语 · 芳华少女的孤独内心', '/img/songListPic/109951163942747948.jpg', 'お母さん', '日韩');
INSERT INTO `song_list` VALUES (50, '「予你情书」明年一起去看樱花吧', '/img/songListPic/19079825277149145.jpg', '想和你去看樱花\n看夏日的烟火大会\n看秋日京都岚山的枫叶\n和冬日落雪的小樽\n\n想和你一起去看一场樱花\n看漫天的飞舞的樱花在我们周围\n就这样安静地待着也好彼此交换心事\n\n想予你一封情书\n写尽关于我们的一切...', '日韩');
INSERT INTO `song_list` VALUES (51, '那些年我们听过的韩国歌', '/img/songListPic/18804947371714354.jpg', 'J.Fla，原名Kim Jung Hwa，韩国歌手,歌曲制作人。2013年正式出道并发行首张原创EP《바보 같은 Story》出道后不久就迅速在日本和韩国成为热门话题\n2016年，J.Fla的翻唱作品在国内转载而得到关注，因其甜美声线和惊艳侧颜得到许多人的喜爱。', '日韩');
INSERT INTO `song_list` VALUES (52, '小众而惊艳 ·韩国独立音乐精选集', '/img/songListPic/109951163833244126.jpg', '在无数的灰色版权中找到了它们。\n宝藏一般的旋律，它们不应该被如此埋没。', '日韩');
INSERT INTO `song_list` VALUES (53, '一秒就会中毒的韩语歌单~', '/img/songListPic/109951163515798929.jpg', '愿对这世界温柔以待的人 被温柔以待.', '日韩');
INSERT INTO `song_list` VALUES (54, '［韩语］少女情怀总是诗~', '/img/songListPic/109951162839104712.jpg', '希望所有的少女心事都能梦想成真', '日韩');
INSERT INTO `song_list` VALUES (55, '【燃向】 精选燃曲', '/img/songListPic/19085322835476516.jpg', '封面画师 bilibili Wlop', 'BGM');
INSERT INTO `song_list` VALUES (56, '日系燃向丨此刻光辉 将引领着我们', '/img/songListPic/109951163097151464.jpg', '天空燃尽如灰，\n繁星烧毁似尘，\n那些音乐所带来的力量，化作为光，将引领着我们前行！', '日韩-BGM');
INSERT INTO `song_list` VALUES (57, '日系』有一种调皮叫小清新~', '/img/songListPic/19152393044479439.jpg', '阳光明媚的日子\n心情好到爆炸\n总想要找支歌来抒发一下感情，分享自己的喜悦。\n虽然我听不懂日语，但是并不影响我喜欢它的调皮与清新，舒服的日系小调，让人心情变好~\n\n阳光灿烂，微风拂面，大概就是这个歌单给人的感觉吧~', '日韩');
INSERT INTO `song_list` VALUES (58, '【日系抒情】早晚终相会 忧思情愈深', '/img/songListPic/109951163802235324.jpg', '瀬を早み 岩にせかるる 滝川の\nわれても末に 逢はむとぞ思ふ', '日韩-轻音乐');
INSERT INTO `song_list` VALUES (59, '日系沙哑女声| 愿这份歌声融化你的心', '/img/songListPic/109951163862683663.jpg', '相信大家都听过沙哑的歌吧，majiko，aimer大家都很熟悉了吧。\n\n这种嗓音真的超温柔呀，这个单选出了些沙哑声线歌手的歌，希望大家喜欢。\n\n愿这温柔的声音可以用听觉的方式带给你一场现实上和想象上的一种迷离感，同时陷入一种与女声错觉般的邂逅。\n\np站id:73189154 画师:gomzi', '日韩');
INSERT INTO `song_list` VALUES (60, '『韩语』 感性伴秋风渐起 随秋意渐浓', '/img/songListPic/109951163606909947.jpg', '走过林荫道\n落叶从眼前划过\n才晓得秋天已经降临了一段时间\n我静静看着你的日子\n似乎还是昨天\n你回头看向别处的那个瞬间\n却已经成为今天\n\n若我们离别\n不要说Good bye\n说See you吧\n如同再次光临的秋天一样\n总...', '日韩');
INSERT INTO `song_list` VALUES (61, '韩‖轻柔小调，治愈系旋律', '/img/songListPic/19053436998325469.jpg', '我爬上全世界的屋顶，\n带着全部的清醒和一只酒瓶。\n— — 张艾嘉《我站在全世界的屋顶》', '日韩-轻音乐');
INSERT INTO `song_list` VALUES (62, '听首老歌 回味永不褪色的华语经典', '/img/songListPic/109951163203287436.jpg', '回味光辉岁月三十年\n\n岁月是一场充满告别的旅程\n\n怀旧\n不是因为那个时代多美好\n而是那时\n你正年轻\n\n百许流年忆往事\n千几往事暖流年', '粤语');
INSERT INTO `song_list` VALUES (63, '【粤语】要有多坚强，才敢念念不忘', '/img/songListPic/18878614648960788.jpg', '你说\n你不愿意种花\n我不愿看见它\n一点点的凋落\n是的\n为了避免结束\n你避免了一切\n也避免了所有\n\n开始\n你说你喜欢雨滴\n但是你在下雨的时候打伞\n你说你喜欢太阳\n但是你在阳光明媚的时候\n躲在阴凉的地方 \n你说...', '粤语');
INSERT INTO `song_list` VALUES (64, '初听不知曲中意 再听已是曲中人', '/img/songListPic/19101815510024256.jpg', '有时候听到一首歌，觉得旋律很好，歌词很好。但怎么也不能体会到，歌里唱的感情。后来有一天，你遇到了一个人，发生了一段故事。当你再听到那首歌时，就会觉得歌里唱的，都是你的故事。\n每一首你喜欢的歌曲，都附有非一般的意义，因为都唱出了你内心的声音和过往经历，其实你听到的都是你自己，那些年你累积在心里的所有欢乐悲伤，所有故事过往。', '粤语');
INSERT INTO `song_list` VALUES (65, '粤语男声：我爱你依旧如初，不曾改变。', '/img/songListPic/18612532836990988.jpg', '记得曾经看过一段话：爱情不是抱一抱，亲一亲，改个情侣网名，换个情侣头像，就是情侣了...', '粤语');
INSERT INTO `song_list` VALUES (66, '『粤语』虐到心痛的曲 听到泪落的词', '/img/songListPic/3434874325869351.jpg', '此歌单多为小众粤语，听过太多评论999+的人人传颂的经典歌曲，每次淘到一首鲜为人知人的歌曲，都会非常的惊喜，听歌嘛，最重要的就是自己听着觉得舒服就对啦，不一定非要高热度的啦。此歌单内歌曲不仅旋律打动人心，每首歌词都超虐心，痴情人的爱有时候那么卑微，低到尘埃里，爱到不死不休.....有时候看着歌词听着这些歌情不自禁泪奔，烦请听歌的人，千万不要对号入座，伤害指数超高! 绝对不容错过的小众粤语!', '粤语');
INSERT INTO `song_list` VALUES (67, '富士山下钟无艳 吴哥窟内我本人', '/img/songListPic/109951162869937004.jpg', '男不听七友 女不听钟无艳', '粤语');
INSERT INTO `song_list` VALUES (68, '流行男声||谦谦君子，情浓粤语', '/img/songListPic/109951163193554791.jpg', '慧极必伤，情深不寿，强极则辱，谦谦君子，温润如玉！细数那些唯美男声', '粤语');
INSERT INTO `song_list` VALUES (69, '粤语live||赛赢录音棚流行live', '/img/songListPic/109951163196627760.jpg', '听腻了录影棚里的无杂音歌声？也许换成live会是心的开始', '粤语');
INSERT INTO `song_list` VALUES (70, '从未跟你饮过冰 零度天气看风景', '/img/songListPic/109951163933917463.jpg', '这个世界烂透了 坏透了 我都接受\n\n所有人都习惯于流于表面的热情和爱意 我也接受\n\n但你不行 你得是那个例外才行', '粤语');
INSERT INTO `song_list` VALUES (71, '「致青春」粤语带你回忆', '/img/songListPic/109951163024198570.jpg', '歌听多了 粤语也熟了 \n越听越有感觉', '粤语');
INSERT INTO `song_list` VALUES (72, 'Beyond的辉煌岁月是人生旅途的伴奏', '/img/songListPic/109951163278666363.jpg', 'Beyond是那种有自己独特的风格，有自己的精神，能象征一个时代，也能映射一类人的组合。他们的歌带入感很强，总有共鸣产生，因为他们没有无病呻吟的悲情，也不爱写迎合大众的爱情故事，而是用自己的歌词和声音在诠释着生活，激励着人生', '粤语');
INSERT INTO `song_list` VALUES (73, '听说，钢琴和民谣也很搭配', '/img/songListPic/109951163503924397.jpg', '我们始终会远行，也可能，在最遥远最陌生的地方感知另一个自己，最后发现丢失了好久的钥匙就藏在自己的口袋里', '乐器-轻音乐');
INSERT INTO `song_list` VALUES (74, '新古典钢琴 散落的时光', '/img/songListPic/109951163401615779.jpg', '当时间走过 其风猎猎\n\n覆灭仅存的模糊记忆使昨日土崩瓦解\n\n其实没有什么好担忧的\n\n在生命的内里 不是还有许多\n\n继续延展着的细微线索\n\n以祖先的容颜 来将你形塑\n\n当时间走过 其声簌簌\n\n如狼群之迅疾穿越秋...', '乐器-轻音乐');
INSERT INTO `song_list` VALUES (75, '流行歌曲钢琴演奏', '/img/songListPic/18577348464819001.jpg', '大都是一些华语流行歌曲的钢琴版，也含有少部分这些弹奏者自己创造的钢琴曲与一些他们翻奏的世界较为有名的钢琴曲，希望你们喜欢～\n前50首为精选，请不要错过哦～', '乐器');
INSERT INTO `song_list` VALUES (76, '『钢琴』与流行歌曲的完美邂逅', '/img/songListPic/5832909185359651.jpg', '选集是华语流行音乐的钢琴版，或许你会更喜欢钢琴演奏的故事', '乐器');
INSERT INTO `song_list` VALUES (77, '治愈钢琴｜伟大的时光和伟大的我们', '/img/songListPic/109951162895796021.jpg', '从钢琴的旋律和节奏中慢慢释怀、也许还有所领悟\n钢琴的世界里还有很多很多让人驻足停歇的地方\n如同我们在生活经历中面对的许许多多的小挫折之后\n也要找个角...', '乐器');
INSERT INTO `song_list` VALUES (78, '写作业专用BGM（钢琴向）', '/img/songListPic/1390882211100783.jpg', '暂时停更啦 我来排排顺序', '乐器-轻音乐');
INSERT INTO `song_list` VALUES (79, '钢琴的故事', '/img/songListPic/18731280092485571.jpg', '你一定和我一样有烦恼和故事吧', '乐器');
INSERT INTO `song_list` VALUES (80, '各种乐器演绎流行曲', '/img/songListPic/3416182643161526.jpg', '乐器成精系列之用各种成精乐器重新演绎这些流行歌曲，让你耳目一新', '乐器');
INSERT INTO `song_list` VALUES (81, '听, 吉他在唱歌', '/img/songListPic/1390882209600111343.jpg', '听吉他谱写那些熟悉的旋律，遇见不一样的感动，电吉他、尤克里里会客串哦', '乐器');
INSERT INTO `song_list` VALUES (82, '还不快去练琴？', '/img/songListPic/19169985230816413.jpg', '都是自己很喜欢的吉他指弹', '乐器');
INSERT INTO `song_list` VALUES (83, '国风传统器乐赏~~♪', '/img/songListPic/18907201951803673.jpg', '中国音乐是光辉灿烂的中国文化的一个重要组成部分。当古典音乐流泻而出的一刹那间，你可以清楚的看到，在空气中流动的是高山、是流水、是丝竹、是冬雪、是千古的生命，那份说不出、道不尽的感动，就是中国古典音乐之美。', '乐器');
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
