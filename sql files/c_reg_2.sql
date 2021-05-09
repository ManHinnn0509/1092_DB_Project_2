-- --------------------------------------------------------
-- 主机:                           127.0.0.1
-- 服务器版本:                        10.4.18-MariaDB - mariadb.org binary distribution
-- 服务器操作系统:                      Win64
-- HeidiSQL 版本:                  10.2.0.5599
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- 导出 c_reg_2 的数据库结构
CREATE DATABASE IF NOT EXISTS `c_reg_2` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;
USE `c_reg_2`;

-- 导出  表 c_reg_2.course 结构
CREATE TABLE IF NOT EXISTS `course` (
  `class` char(32) NOT NULL,
  `name` char(32) NOT NULL,
  `cid` char(8) NOT NULL DEFAULT '',
  `credit` char(32) NOT NULL,
  `is_compuls` char(2) NOT NULL,
  `dept` char(32) NOT NULL,
  `max_taken` smallint(6) NOT NULL,
  `taken` smallint(6) NOT NULL,
  `t_name` char(32) NOT NULL,
  PRIMARY KEY (`cid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- 正在导出表  c_reg_2.course 的数据：~354 rows (大约)
/*!40000 ALTER TABLE `course` DISABLE KEYS */;
INSERT INTO `course` (`class`, `name`, `cid`, `credit`, `is_compuls`, `dept`, `max_taken`, `taken`, `t_name`) VALUES
	('資訊一甲', '班級活動', '1274', '0', 'M', '資訊工程學系', 72, 68, '王銘宏'),
	('資訊一甲', '程式設計(III)', '1276', '2', 'M', '資訊工程學系', 90, 80, '王銘宏'),
	('資訊一甲', '程式設計(IV)', '1277', '2', 'M', '資訊工程學系', 90, 88, '王銘宏'),
	('資訊一甲', '普通物理-電、磁、光實驗', '1278', '1', 'M', '資訊工程學系', 72, 72, '楊嘉會'),
	('資訊一甲', '微積分(二)實習', '1279', '0', 'M', '資訊工程學系', 80, 79, '魏家茂'),
	('資訊一甲', '微積分(二)', '1280', '3', 'M', '資訊工程學系', 80, 80, '黃同瑤'),
	('資訊一甲', '線性代數', '1281', '3', 'M', '資訊工程學系', 85, 85, '林佩君'),
	('資訊一甲', '邏輯設計', '1282', '3', 'M', '資訊工程學系', 68, 76, '陳德生'),
	('資訊一甲', '邏輯設計實習', '1283', '1', 'M', '資訊工程學系', 68, 68, '陳德生'),
	('資訊一乙', '班級活動', '1284', '0', 'M', '資訊工程學系', 72, 62, '劉明機'),
	('資訊一乙', '程式設計(III)', '1286', '2', 'M', '資訊工程學系', 88, 73, '劉明機'),
	('資訊一乙', '程式設計(IV)', '1287', '2', 'M', '資訊工程學系', 88, 78, '劉明機'),
	('資訊一乙', '普通物理-電、磁、光實驗', '1288', '1', 'M', '資訊工程學系', 72, 68, '馬仕信'),
	('資訊一乙', '微積分(二)實習', '1289', '0', 'M', '資訊工程學系', 75, 74, '陳珮綺'),
	('資訊一乙', '微積分(二)', '1290', '3', 'M', '資訊工程學系', 75, 72, '楊建成'),
	('資訊一乙', '線性代數', '1291', '3', 'M', '資訊工程學系', 80, 81, '洪維志'),
	('資訊一乙', '邏輯設計', '1292', '3', 'M', '資訊工程學系', 70, 75, '王益文'),
	('資訊一乙', '邏輯設計實習', '1293', '1', 'M', '資訊工程學系', 68, 67, '王益文'),
	('資訊一丙', '班級活動', '1294', '0', 'M', '資訊工程學系', 72, 54, '林峰正'),
	('資訊一丙', '程式設計(III)', '1296', '2', 'M', '資訊工程學系', 88, 77, '蔡國裕'),
	('資訊一丙', '程式設計(IV)', '1297', '2', 'M', '資訊工程學系', 88, 78, '蔡國裕'),
	('資訊一丙', '普通物理-電、磁、光實驗', '1298', '1', 'M', '資訊工程學系', 72, 72, ')林菲'),
	('資訊一丙', '微積分(二)實習', '1299', '0', 'M', '資訊工程學系', 70, 76, '?謙信'),
	('資訊一丙', '微積分(二)', '1300', '3', 'M', '資訊工程學系', 70, 73, '方瓊菀'),
	('資訊一丙', '線性代數', '1301', '3', 'M', '資訊工程學系', 85, 87, '洪維志'),
	('資訊一丙', '邏輯設計', '1302', '3', 'M', '資訊工程學系', 68, 76, '陳啟鏘'),
	('資訊一丙', '邏輯設計實習', '1303', '1', 'M', '資訊工程學系', 68, 67, '陳啟鏘'),
	('資訊二甲', '系統程式', '1304', '3', 'M', '資訊工程學系', 80, 86, '林志敏'),
	('資訊二甲', '資料庫系統', '1305', '3', 'M', '資訊工程學系', 72, 73, '許懷中'),
	('資訊二甲', '機率論', '1306', '3', 'M', '資訊工程學系', 80, 86, '劉怡芬'),
	('資訊二乙', '系統程式', '1307', '3', 'M', '資訊工程學系', 75, 80, '劉宗杰'),
	('資訊二乙', '資料庫系統', '1308', '3', 'M', '資訊工程學系', 74, 74, '林明言'),
	('資訊二乙', '機率論', '1309', '3', 'M', '資訊工程學系', 75, 80, '陳德生'),
	('資訊二乙', '系統分析與設計', '1310', '3', 'O', '資訊工程學系', 80, 78, '蔡明翰'),
	('資訊二乙', '物件導向設計', '1311', '3', 'O', '資訊工程學系', 70, 78, '陳錫民'),
	('資訊二乙', '物件導向設計實習', '1312', '1', 'O', '資訊工程學系', 70, 81, '陳錫民'),
	('資訊二乙', '資訊與網路安全', '1313', '3', 'O', '資訊工程學系', 75, 81, '劉宗杰'),
	('資訊二乙', 'UNIX應用與實務', '1314', '2', 'O', '資訊工程學系', 80, 88, '張哲誠'),
	('資訊二丙', '系統程式', '1315', '3', 'M', '資訊工程學系', 75, 80, '黃志銘'),
	('資訊二丙', '資料庫系統', '1316', '3', 'M', '資訊工程學系', 75, 77, '林明言'),
	('資訊二丙', '機率論', '1317', '3', 'M', '資訊工程學系', 75, 80, '游景盛'),
	('資訊二丁', '系統程式', '1318', '3', 'M', '資訊工程學系', 85, 88, '林志敏'),
	('資訊二丁', '資料庫系統', '1319', '3', 'M', '資訊工程學系', 85, 85, '許懷中'),
	('資訊二丁', '機率論', '1320', '3', 'M', '資訊工程學系', 80, 85, '劉怡芬'),
	('資訊二丁', '系統分析與設計', '1321', '3', 'O', '資訊工程學系', 85, 87, '蔡明翰'),
	('資訊二丁', '物件導向設計', '1322', '3', 'O', '資訊工程學系', 80, 80, '陳錫民'),
	('資訊二丁', '物件導向設計實習', '1323', '1', 'O', '資訊工程學系', 80, 88, '陳錫民'),
	('資訊二丁', '資訊與網路安全', '1324', '3', 'O', '資訊工程學系', 75, 80, '劉宗杰'),
	('資訊二丁', 'UNIX應用與實務', '1325', '2', 'O', '資訊工程學系', 60, 71, '張哲誠'),
	('資訊二丁', '物件導向設計', '1326', '3', 'O', '資訊工程學系', 75, 65, '蔡國裕'),
	('資訊二丁', '物件導向設計實習', '1327', '1', 'O', '資訊工程學系', 60, 46, '蔡國裕'),
	('資訊二丁', '組合數學', '1328', '3', 'O', '資訊工程學系', 85, 86, '游景盛'),
	('資訊二丁', '電子商務安全', '1329', '3', 'O', '資訊工程學系', 85, 88, '李榮三'),
	('資訊二丁', '數位信號處理導論', '1330', '3', 'O', '資訊工程學系', 60, 50, '陳啟鏘'),
	('資訊三甲', '計算機結構學', '1331', '3', 'M', '資訊工程學系', 75, 57, '張貴忠'),
	('資訊三甲', '計算機演算法', '1332', '3', 'M', '資訊工程學系', 75, 52, '黃秀芬'),
	('資訊三乙', '計算機結構學', '1334', '3', 'M', '資訊工程學系', 75, 66, '陳烈武'),
	('資訊三乙', '計算機演算法', '1335', '3', 'M', '資訊工程學系', 75, 79, '陳青文'),
	('資訊三丙', '計算機結構學', '1337', '3', 'M', '資訊工程學系', 75, 82, '陳青文'),
	('資訊三丙', '計算機演算法', '1338', '3', 'M', '資訊工程學系', 75, 76, '陳青文'),
	('資訊三丁', '計算機結構學', '1340', '3', 'M', '資訊工程學系', 75, 78, '張貴忠'),
	('資訊三丁', '計算機演算法', '1341', '3', 'M', '資訊工程學系', 75, 75, '陳烈武'),
	('資訊碩一', '文獻研討(二)', '1346', '1', 'M', '資訊工程學系', 40, 25, '林志敏'),
	('資訊碩一', '文獻研討(二)', '1347', '1', 'M', '資訊工程學系', 30, 21, '楊濬中'),
	('資訊碩一', '資訊專題研討(二)', '1348', '1', 'M', '資訊工程學系', 50, 34, '薛念林'),
	('資訊碩一', '具體數學', '1349', '3', 'O', '資訊工程學系', 35, 38, '黃秀芬'),
	('資訊碩一', '型樣識別', '1350', '3', 'O', '資訊工程學系', 30, 11, '劉怡芬'),
	('資訊碩一', '研究報告寫作', '1351', '2', 'O', '資訊工程學系', 30, 27, '劉明機'),
	('資訊碩一', '計算機視覺', '1352', '3', 'O', '資訊工程學系', 35, 36, '蔡明翰'),
	('資訊碩一', '雲端計算', '1353', '3', 'O', '資訊工程學系', 30, 14, '林佩君'),
	('資訊碩一', '無線隨意與感測網路技術與應用', '1354', '3', 'O', '資訊工程學系', 35, 10, '陳烈武'),
	('資訊碩一', '知識管理與創新', '1355', '3', 'O', '資訊工程學系', 35, 33, '劉明機'),
	('資訊碩一', '資料探勘', '1356', '3', 'O', '資訊工程學系', 35, 23, '林明言'),
	('資訊碩二', '敏捷開發', '1360', '3', 'O', '資訊工程學系', 27, 21, '許懷中'),
	('資訊碩二', '資訊專題研討(四)', '1361', '1', 'O', '資訊工程學系', 40, 53, '李榮三'),
	('資訊碩二', '數位影像安全技術專題', '1362', '2', 'O', '資訊工程學系', 30, 9, '張真誠'),
	('資訊博一', '資訊專題研討(六)', '1364', '1', 'O', '資訊工程學系', 40, 3, '黃秀芬'),
	('資訊博二', '資訊專題研討(八)', '1367', '1', 'O', '資訊工程學系', 40, 3, '林志敏'),
	('電腦系統學程資訊三', '作業系統(二)', '1967', '3', 'O', '資訊工程學系', 70, 27, '黃志銘'),
	('電腦系統學程資訊三', '超大型積體電路設計導論', '1968', '3', 'O', '資訊工程學系', 70, 41, '陳德生'),
	('軟體工程學程資訊三', '地理資訊於APPS之應用', '1970', '3', 'O', '資訊工程學系', 60, 34, '江庭輝'),
	('軟體工程學程資訊三', '雲端應用系統開發', '1971', '3', 'O', '資訊工程學系', 60, 59, '林佩君'),
	('軟體工程學程資訊三', '軟體品質保證與軟體測試', '1972', '3', 'O', '資訊工程學系', 60, 59, '薛念林'),
	('軟體工程學程資訊三', '人工智慧概論與實務', '1973', '3', 'O', '資訊工程學系', 66, 64, '林峰正'),
	('網路與資安學程資訊三', '電子商務安全', '2001', '3', 'O', '資訊工程學系', 70, 67, '楊柏遠'),
	('資訊跨域學程資訊三', '地理資訊於APPS之應用', '2002', '3', 'O', '資訊工程學系', 60, 57, '江庭輝'),
	('資訊跨域學程資訊三', '人工智慧概論與實務', '2004', '3', 'O', '資訊工程學系', 60, 61, '張哲誠'),
	('企管一甲', '班級活動', '2132', '0', 'M', '企業管理學系', 60, 58, '曾欽正'),
	('企管一甲', '會計學(二)', '2134', '3', 'M', '企業管理學系', 80, 79, '施念恕'),
	('企管一甲', '會計學(二)實習', '2135', '0', 'M', '企業管理學系', 80, 79, '張巧旻'),
	('企管一甲', '經濟學(二)', '2136', '3', 'M', '企業管理學系', 84, 65, '陳依依'),
	('企管一甲', '經濟學(二)實習', '2137', '0', 'M', '企業管理學系', 84, 65, '范瑋庭'),
	('企管一甲', '管理學', '2138', '3', 'M', '企業管理學系', 80, 82, '張秀樺'),
	('企管一甲', '資訊網路', '2139', '2', 'M', '企業管理學系', 60, 59, '劉冠良'),
	('企管一乙', '班級活動', '2140', '0', 'M', '企業管理學系', 60, 53, '吳如娟'),
	('企管一乙', '會計學(二)', '2142', '3', 'M', '企業管理學系', 75, 61, '曹秀惠'),
	('企管一乙', '會計學(二)實習', '2143', '0', 'M', '企業管理學系', 75, 61, '賴家蓁'),
	('企管一乙', '經濟學(二)', '2144', '3', 'M', '企業管理學系', 87, 73, '徐繼達'),
	('企管一乙', '經濟學(二)實習', '2145', '0', 'M', '企業管理學系', 87, 73, '杜進倫'),
	('企管一乙', '管理學', '2146', '3', 'M', '企業管理學系', 80, 90, '曾欽正'),
	('企管一乙', '資訊網路', '2147', '2', 'M', '企業管理學系', 60, 45, '劉冠良'),
	('企管一乙', '商業軟體應用(一)', '2148', '3', 'O', '企業管理學系', 60, 71, '王淑娟'),
	('企管一乙', '管理與統計', '2149', '3', 'O', '企業管理學系', 60, 35, '黃鼎翔'),
	('企管二甲', '商事法', '2150', '3', 'M', '企業管理學系', 60, 78, '林孟玲'),
	('企管二甲', '組織行為', '2151', '3', 'M', '企業管理學系', 60, 73, '陳信宏'),
	('企管二甲', '統計學(二)', '2152', '3', 'M', '企業管理學系', 72, 77, '劉峰旗'),
	('企管二甲', '統計學(二)實習', '2153', '0', 'M', '企業管理學系', 72, 77, '涂俊曄'),
	('企管二甲', '管理科學', '2154', '3', 'M', '企業管理學系', 60, 61, '黃誠甫'),
	('企管二乙', '商事法', '2156', '3', 'M', '企業管理學系', 60, 68, '林孟玲'),
	('企管二乙', '組織行為', '2157', '3', 'M', '企業管理學系', 60, 70, '梁欣光'),
	('企管二乙', '統計學(二)', '2158', '3', 'M', '企業管理學系', 70, 67, '林文欽'),
	('企管二乙', '統計學(二)實習', '2159', '0', 'M', '企業管理學系', 72, 67, '5李潔'),
	('企管二乙', '管理科學', '2160', '3', 'M', '企業管理學系', 60, 44, '黃誠甫'),
	('企管二乙', '休閒事業管理', '2162', '3', 'O', '企業管理學系', 60, 52, '黃智彥'),
	('企管二乙', '行銷管理個案研究', '2163', '3', 'O', '企業管理學系', 60, 74, '王智弘'),
	('企管二乙', '企業電子化', '2164', '3', 'O', '企業管理學系', 60, 58, '張道平'),
	('企管二乙', '消費者行為', '2165', '3', 'O', '企業管理學系', 60, 59, '王智弘'),
	('企管二乙', '管理心理學', '2166', '3', 'O', '企業管理學系', 60, 69, '何雅利'),
	('企管二乙', '應用程式設計', '2167', '3', 'O', '企業管理學系', 45, 44, '駱達彪'),
	('企管三甲', '企業倫理與社會責任', '2168', '3', 'M', '企業管理學系', 85, 87, '張秀樺'),
	('企管三甲', '國際企業管理', '2170', '3', 'M', '企業管理學系', 60, 77, '張寶蓉'),
	('企管三甲', '管理資訊系統', '2171', '3', 'M', '企業管理學系', 60, 75, '陳建文'),
	('企管三乙', '企業倫理與社會責任', '2172', '3', 'M', '企業管理學系', 85, 78, '張秀樺'),
	('企管三乙', '國際企業管理', '2174', '3', 'M', '企業管理學系', 60, 82, '許瓊文'),
	('企管三乙', '管理資訊系統', '2175', '3', 'M', '企業管理學系', 60, 84, '曾欽正'),
	('企管三乙', '人力資源發展', '2176', '3', 'O', '企業管理學系', 60, 59, '黃聰輝'),
	('企管三乙', '文化創意經營策略', '2177', '3', 'O', '企業管理學系', 88, 86, '劉平文'),
	('企管三乙', '企業資源規劃實務(二)', '2178', '3', 'O', '企業管理學系', 60, 16, '莊玉成'),
	('企管三乙', '服務科學與創新', '2179', '3', 'O', '企業管理學系', 60, 23, '張秀樺'),
	('企管三乙', '投資組合管理', '2180', '3', 'O', '企業管理學系', 60, 39, '蕭國鐘'),
	('企管三乙', '作業管理個案研究', '2181', '3', 'O', '企業管理學系', 60, 69, '郭鐘元'),
	('企管三乙', '財務管理個案研究', '2182', '3', 'O', '企業管理學系', 60, 61, '廖東亮'),
	('企管三乙', '職場英文', '2184', '3', 'O', '企業管理學系', 60, 60, '黃禮林'),
	('企管三乙', '產業與競爭分析', '2185', '3', 'O', '企業管理學系', 60, 44, '賴泳龍'),
	('企管四乙', '企業管理實務', '2186', '3', 'O', '企業管理學系', 88, 83, '劉平文'),
	('企管四乙', '投資管理實務(二)', '2188', '3', 'O', '企業管理學系', 60, 27, '駱達彪'),
	('企管四乙', '科技應用與金融服務', '2189', '3', 'O', '企業管理學系', 60, 24, '黃禮林'),
	('企管四乙', '流通管理', '2190', '3', 'O', '企業管理學系', 60, 20, '李兆玄'),
	('企管四乙', '期貨與選擇權', '2191', '3', 'O', '企業管理學系', 60, 57, '駱達彪'),
	('企管四乙', '綠色企業與創業', '2192', '3', 'O', '企業管理學系', 60, 35, '張寶蓉'),
	('企管四乙', '職場實務', '2193', '3', 'O', '企業管理學系', 88, 84, '劉平文'),
	('企管碩一', '行銷管理', '2194', '3', 'M', '企業管理學系', 20, 19, '王智弘'),
	('企管碩一', '作業管理', '2195', '3', 'M', '企業管理學系', 20, 21, '黃誠甫'),
	('企管碩一', '財務管理', '2196', '3', 'M', '企業管理學系', 20, 19, '黃禮林'),
	('企管碩一', '數量方法', '2198', '3', 'O', '企業管理學系', 20, 18, '陳建文'),
	('企管碩二', '服務業行銷', '2202', '3', 'O', '企業管理學系', 20, 17, '佘日新'),
	('企管碩二', '網路行銷', '2203', '3', 'O', '企業管理學系', 20, 5, '陳建文'),
	('通識－人文(H)', '人生哲學', '2862', '2', 'O', '通識核心課程', 78, 75, '經觀榮'),
	('通識－人文(H)', '人生哲學', '2863', '2', 'O', '通識核心課程', 78, 73, '經觀榮'),
	('通識－人文(H)', '人生哲學', '2864', '2', 'O', '通識核心課程', 70, 56, '李元璋'),
	('通識－人文(H)', '人生哲學', '2865', '2', 'O', '通識核心課程', 70, 64, '李元璋'),
	('通識－人文(H)', '人造環境欣賞', '2866', '2', 'O', '通識核心課程', 78, 75, '林季芸'),
	('通識－人文(H)', '中國文物欣賞', '2867', '2', 'O', '通識核心課程', 70, 69, '戴瑞坤'),
	('通識－人文(H)', '中國文物欣賞', '2868', '2', 'O', '通識核心課程', 70, 70, '戴瑞坤'),
	('通識－人文(H)', '佛家思想', '2869', '2', 'O', '通識核心課程', 78, 28, '鄭保村'),
	('通識－人文(H)', '詩詞欣賞', '2870', '2', 'O', '通識核心課程', 70, 69, '彭妙卿'),
	('通識－人文(H)', '詩詞欣賞', '2871', '2', 'O', '通識核心課程', 70, 69, '彭妙卿'),
	('通識－人文(H)', '希臘羅馬神話故事與西洋藝術', '2872', '2', 'O', '通識核心課程', 75, 75, '余瓊宜'),
	('通識－人文(H)', '希臘羅馬神話故事與西洋藝術', '2873', '2', 'O', '通識核心課程', 75, 72, '余瓊宜'),
	('通識－人文(H)', '中國文化遺產及其藝術', '2874', '2', 'O', '通識核心課程', 78, 88, '李建緯'),
	('通識－人文(H)', '世界音樂文化', '2875', '2', 'O', '通識核心課程', 78, 74, '盧韋聿'),
	('通識－人文(H)', '日本歷史與文化', '2876', '2', 'O', '通識核心課程', 78, 78, '黃煇慶'),
	('通識－人文(H)', '日本歷史與文化', '2877', '2', 'O', '通識核心課程', 78, 78, '黃煇慶'),
	('通識－人文(H)', '日本歷史與文化', '2878', '2', 'O', '通識核心課程', 78, 76, '黃煇慶'),
	('通識－人文(H)', '倫理價值與生命哲學', '2879', '2', 'O', '通識核心課程', 78, 74, '黃登煌'),
	('通識－人文(H)', '倫理價值與生命哲學', '2880', '2', 'O', '通識核心課程', 78, 76, '黃登煌'),
	('通識－人文(H)', '文學與生活', '2881', '2', 'O', '通識核心課程', 78, 75, '楊美美'),
	('通識－人文(H)', '文學、電影DIY', '2882', '2', 'O', '通識核心課程', 190, 184, '王祥齡'),
	('通識－人文(H)', '文學、電影DIY', '2883', '2', 'O', '通識核心課程', 190, 190, '王祥齡'),
	('通識－人文(H)', '古典小說', '2884', '2', 'O', '通識核心課程', 78, 75, '梁煌儀'),
	('通識－人文(H)', '台灣民間信仰', '2885', '2', 'O', '通識核心課程', 76, 76, '張志相'),
	('通識－人文(H)', '台灣民間信仰', '2886', '2', 'O', '通識核心課程', 78, 74, '王志宇'),
	('通識－人文(H)', '台灣民間信仰', '2887', '2', 'O', '通識核心課程', 78, 75, '王志宇'),
	('通識－人文(H)', '台灣民間信仰', '2888', '2', 'O', '通識核心課程', 76, 72, '張志相'),
	('通識－人文(H)', '台灣民間信仰', '2889', '2', 'O', '通識核心課程', 76, 74, '張志相'),
	('通識－人文(H)', '台灣民間信仰', '2890', '2', 'O', '通識核心課程', 78, 78, '王志宇'),
	('通識－人文(H)', '生死與哲學', '2891', '2', 'O', '通識核心課程', 60, 59, '劉秀齡'),
	('通識－人文(H)', '生死與哲學', '2892', '2', 'O', '通識核心課程', 60, 56, '劉秀齡'),
	('通識－人文(H)', '宗教與人生', '2893', '2', 'O', '通識核心課程', 78, 77, '曹嶸'),
	('通識－人文(H)', '宗教與人生', '2894', '2', 'O', '通識核心課程', 70, 70, '謝孟成'),
	('通識－人文(H)', '音樂與人生', '2895', '2', 'O', '通識核心課程', 60, 60, '詹美慧'),
	('通識－人文(H)', '音樂與人生', '2896', '2', 'O', '通識核心課程', 70, 100, '詹美慧'),
	('通識－人文(H)', '音樂與人生', '2897', '2', 'O', '通識核心課程', 60, 59, '詹美慧'),
	('通識－人文(H)', '現代散文', '2898', '2', 'O', '通識核心課程', 79, 77, '張瑞芬'),
	('通識－人文(H)', '當代文學閱讀與寫作', '2899', '2', 'O', '通識核心課程', 79, 79, '張瑞芬'),
	('通識－人文(H)', '電影藝術專題講座　', '2900', '2', 'O', '通識核心課程', 90, 184, '李建成'),
	('通識－人文(H)', '應用文', '2901', '2', 'O', '通識核心課程', 78, 74, '楊美美'),
	('通識－人文(H)', '應用文', '2902', '2', 'O', '通識核心課程', 78, 74, '吳秀英'),
	('通識－人文(H)', '應用文', '2903', '2', 'O', '通識核心課程', 78, 77, '吳秀英'),
	('通識－人文(H)', '應用文', '2904', '2', 'O', '通識核心課程', 60, 48, '陳柏全'),
	('通識－人文(H)', '批判思考', '2905', '2', 'O', '通識核心課程', 78, 78, '林永崇'),
	('通識－人文(H)', '批判思考', '2906', '2', 'O', '通識核心課程', 78, 77, '林永崇'),
	('通識－人文(H)', '旅遊與多元學習', '2907', '2', 'O', '通識核心課程', 60, 56, '宋齊有'),
	('通識－人文(H)', '旅遊與多元學習', '2908', '2', 'O', '通識核心課程', 60, 60, '宋齊有'),
	('通識－人文(H)', '向儒道思想學情緒管理', '2909', '2', 'O', '通識核心課程', 70, 67, '王祖淼'),
	('通識－人文(H)', '台灣環境與永續生活', '2910', '2', 'O', '通識核心課程', 78, 76, '??翰'),
	('通識－人文(H)', '電影與性別', '2911', '2', 'O', '通識核心課程', 78, 77, '張梅英'),
	('通識－人文(H)', '電影與性別', '2912', '2', 'O', '通識核心課程', 78, 74, '余國強'),
	('通識－人文(H)', '世界音樂賞析', '2913', '2', 'O', '通識核心課程', 60, 47, '曾韻心'),
	('通識－人文(H)', '鋼琴音樂萬花筒', '2914', '2', 'O', '通識核心課程', 60, 24, '曾韻心'),
	('通識－人文(H)', '音樂行旅 - 巡訪古典音樂大師', '2915', '2', 'O', '通識核心課程', 60, 51, '曾韻心'),
	('通識－人文(H)', '台灣民俗文化', '2916', '2', 'O', '通識核心課程', 70, 65, '謝孟成'),
	('通識－人文(H)', '莎士比亞與電影', '2917', '2', 'O', '通識核心課程', 70, 68, '謝孟成'),
	('通識－自然(N)', '土地關懷之旅', '2918', '2', 'O', '通識核心課程', 70, 70, '楊文燦'),
	('通識－自然(N)', '生命科學', '2919', '2', 'O', '通識核心課程', 80, 185, '葉怡巖'),
	('通識－自然(N)', '生活中之物理', '2920', '2', 'O', '通識核心課程', 60, 60, '林泰生'),
	('通識－自然(N)', '皮膚保養醫學', '2921', '2', 'O', '通識核心課程', 79, 79, '陳怡如'),
	('通識－自然(N)', '第三波戰爭之科技武器', '2922', '2', 'O', '通識核心課程', 78, 77, '黃俊仁'),
	('通識－自然(N)', '現代軍事學', '2923', '2', 'O', '通識核心課程', 80, 80, '宋懷德'),
	('通識－自然(N)', '現代軍事學', '2924', '2', 'O', '通識核心課程', 80, 80, '宋懷德'),
	('通識－自然(N)', '國防科技與產業發展', '2925', '2', 'O', '通識核心課程', 78, 76, '陳振武'),
	('通識－自然(N)', '創新綠色科技', '2926', '2', 'O', '通識核心課程', 70, 70, '朱文祺'),
	('通識－自然(N)', '系統品質建模與挑戰', '2927', '2', 'O', '通識核心課程', 78, 76, '翁明材'),
	('通識－自然(N)', '奈米科技與生活', '2928', '2', 'O', '通識核心課程', 70, 66, '袁維勵'),
	('通識－自然(N)', '殺蟲劑與生活', '2929', '2', 'O', '通識核心課程', 75, 72, '李書安'),
	('通識－自然(N)', '認識天然災害', '2930', '2', 'O', '通識核心課程', 70, 68, '李漢鏗'),
	('通識－自然(N)', '衛星科技應用', '2931', '2', 'O', '通識核心課程', 70, 69, '劉文甦'),
	('通識－自然(N)', '衛星科技應用', '2932', '2', 'O', '通識核心課程', 70, 69, '劉文甦'),
	('通識－自然(N)', '環境與公害', '2933', '2', 'O', '通識核心課程', 80, 79, '林俊德'),
	('通識－自然(N)', '醫學與人生', '2934', '2', 'O', '通識核心課程', 78, 78, '劉杜鎮'),
	('通識－自然(N)', '醫學與人生', '2935', '2', 'O', '通識核心課程', 75, 78, '吳三源'),
	('通識－自然(N)', '化粧品科學與生活時尚', '2936', '2', 'O', '通識核心課程', 70, 150, '吳姵萱'),
	('通識－自然(N)', '性別與心理衛生', '2937', '2', 'O', '通識核心課程', 78, 78, '劉金明'),
	('通識－自然(N)', '材料與生活', '2938', '2', 'O', '通識核心課程', 90, 106, '呂晃志'),
	('通識－自然(N)', '智慧城市無所不在的監測系統', '2939', '2', 'O', '通識核心課程', 60, 57, '蔡明璋'),
	('通識－自然(N)', '智慧城市實務分析', '2940', '2', 'O', '通識核心課程', 60, 45, '陳美心'),
	('通識－自然(N)', '環境教育', '2941', '2', 'O', '通識核心課程', 60, 60, '葉怡巖'),
	('通識－自然(N)', '音樂、語言與大腦', '2942', '2', 'O', '通識核心課程', 60, 60, '李承宗'),
	('通識－自然(N)', '模擬亞太經合會', '2943', '2', 'O', '通識核心課程', 60, 54, '朱正永'),
	('通識－社會(S)', '地方自治', '2944', '2', 'O', '通識核心課程', 78, 55, '王建雄'),
	('通識－社會(S)', '國際關係', '2945', '2', 'O', '通識核心課程', 78, 78, '張子揚'),
	('通識－社會(S)', '國際關係', '2946', '2', 'O', '通識核心課程', 78, 78, '張子揚'),
	('通識－社會(S)', '戀愛心理學', '2947', '2', 'O', '通識核心課程', 72, 124, '林瑞發'),
	('通識－社會(S)', '公民社會的政策參與', '2948', '2', 'O', '通識核心課程', 78, 78, '蔡振志'),
	('通識－社會(S)', '智慧財產之保護與實務', '2949', '2', 'O', '通識核心課程', 79, 78, '葉德輝'),
	('通識－社會(S)', '智慧財產之保護與實務', '2950', '2', 'O', '通識核心課程', 79, 78, '葉德輝'),
	('通識－社會(S)', '心理學整合與發展', '2951', '2', 'O', '通識核心課程', 78, 75, '潘才學'),
	('通識－社會(S)', '心理學整合與發展', '2952', '2', 'O', '通識核心課程', 78, 91, '潘才學'),
	('通識－社會(S)', '教育的理論與實踐', '2953', '2', 'O', '通識核心課程', 78, 78, '楊裕仁'),
	('通識－社會(S)', '教育的理論與實踐', '2954', '2', 'O', '通識核心課程', 78, 75, '楊裕仁'),
	('通識－社會(S)', '經濟與生活', '2955', '2', 'O', '通識核心課程', 78, 76, '劉宗欣'),
	('通識－社會(S)', '管理面面觀', '2956', '2', 'O', '通識核心課程', 78, 61, '蕭國鐘'),
	('通識－社會(S)', '大陸問題研究', '2957', '2', 'O', '通識核心課程', 60, 59, '5王謙'),
	('通識－社會(S)', '民法實用', '2958', '2', 'O', '通識核心課程', 78, 77, '劉南英'),
	('通識－社會(S)', '生涯規劃', '2959', '2', 'O', '通識核心課程', 78, 78, '楊裕仁'),
	('通識－社會(S)', '生涯規劃', '2960', '2', 'O', '通識核心課程', 78, 75, '楊裕仁'),
	('通識－社會(S)', '住宅問題研究', '2961', '2', 'O', '通識核心課程', 78, 78, '張梅英'),
	('通識－社會(S)', '投資與理財', '2962', '2', 'O', '通識核心課程', 78, 70, '蕭國鐘'),
	('通識－社會(S)', '服務學習專題', '2963', '2', 'O', '通識核心課程', 80, 81, '宋懷德'),
	('通識－社會(S)', '服務學習專題', '2964', '2', 'O', '通識核心課程', 80, 77, '宋懷德'),
	('通識－社會(S)', '社會形象創造專題', '2965', '2', 'O', '通識核心課程', 40, 40, '黃千容'),
	('通識－社會(S)', '婚姻與家庭', '2966', '2', 'O', '通識核心課程', 78, 75, '潘才學'),
	('通識－社會(S)', '婚姻與家庭', '2967', '2', 'O', '通識核心課程', 78, 75, '潘才學'),
	('通識－社會(S)', '心理劇與自我成長', '2968', '2', 'O', '通識核心課程', 40, 39, '鄒繼礎'),
	('通識－社會(S)', '心理劇與自我成長', '2969', '2', 'O', '通識核心課程', 40, 39, '鄒繼礎'),
	('通識－社會(S)', '時間管理專題', '2970', '2', 'O', '通識核心課程', 46, 46, '楊裕仁'),
	('通識－社會(S)', '性別教育與服務-學習', '2971', '2', 'O', '通識核心課程', 78, 77, '潘才學'),
	('通識－社會(S)', '行政領導與人脈經營', '2972', '2', 'O', '通識核心課程', 78, 76, '黎淑慧'),
	('通識－社會(S)', '行政領導與人脈經營', '2973', '2', 'O', '通識核心課程', 78, 73, '黎淑慧'),
	('通識－社會(S)', '非商業背景會計學', '2974', '2', 'O', '通識核心課程', 75, 71, '賴炎卿'),
	('通識－社會(S)', '台灣的政府與政治', '2975', '2', 'O', '通識核心課程', 70, 67, '何景榮'),
	('通識－統合(M)', '初階智慧型創新', '2976', '2', 'O', '通識核心課程', 40, 34, '宋明弘'),
	('通識－統合(M)', '初階智慧型創新', '2977', '2', 'O', '通識核心課程', 40, 39, '宋明弘'),
	('通識－統合(M)', '觀光美儀與國際禮儀', '2978', '2', 'O', '通識核心課程', 35, 32, '彭瑞芝'),
	('通識－統合(M)', '觀光美儀與國際禮儀', '2979', '2', 'O', '通識核心課程', 35, 34, '彭瑞芝'),
	('通識－統合(M)', '從空間看世界', '2980', '2', 'O', '通識核心課程', 40, 35, '林嘉韋'),
	('通識－統合(M)', '美好時光，社群聚場', '2981', '2', 'O', '通識核心課程', 30, 28, '李舒亭'),
	('通識－統合(M)', '智慧的天空之眼', '2982', '2', 'O', '通識核心課程', 30, 30, '郭靜怡'),
	('通識－統合(M)', '智慧綠台灣', '2983', '2', 'O', '通識核心課程', 40, 32, '趙又嬋'),
	('通識－統合(M)', '智慧定位-衛星導航', '2984', '2', 'O', '通識核心課程', 60, 59, '穆青雲'),
	('通識－統合(M)', '創業與創新', '2985', '2', 'O', '通識核心課程', 40, 39, '謝東昇'),
	('通識－統合(M)', '藝術、心靈與創造力', '2986', '2', 'O', '通識核心課程', 50, 48, '月妹)'),
	('通識－統合(M)', '專利撰寫實務', '2987', '2', 'O', '通識核心課程', 40, 40, '陳淑慧'),
	('通識－統合(M)', '劇場實務（二）', '2988', '2', 'O', '通識核心課程', 30, 29, '廖惇根'),
	('通識－統合(M)', '培育3D設計夢想號學生大使', '2989', '2', 'O', '通識核心課程', 45, 42, '陳上元'),
	('通識－統合(M)', '創業創意營運管理', '2991', '2', 'O', '通識核心課程', 60, 58, '魏彰志'),
	('通識－統合(M)', '聲音表達與訓練', '2992', '2', 'O', '通識核心課程', 40, 37, '湛明暉'),
	('通識－統合(M)', '智慧生活與大數據物聯網應用', '2993', '2', 'O', '通識核心課程', 40, 38, '簡甫任'),
	('通識－統合(M)', '探討在台日商管理之文化差異問題', '2994', '2', 'O', '通識核心課程', 40, 38, '李豪軒'),
	('通識－統合(M)', '鑽石寶石及翡翠玉石之賞析鑑定', '2995', '2', 'O', '通識核心課程', 40, 40, '喻家駿'),
	('通識－統合(M)', '劇場服裝設計及製作', '2996', '2', 'O', '通識核心課程', 46, 31, '月妹)'),
	('通識－統合(M)', '舞台道具製作', '2997', '2', 'O', '通識核心課程', 40, 35, '耿?剛'),
	('通識－統合(M)', '性別與新飲食文化探索', '2998', '2', 'O', '通識核心課程', 40, 36, '陳介英'),
	('通識－統合(M)', '介紹台灣', '2999', '2', 'O', '通識核心課程', 35, 31, '呂正雄'),
	('通識－統合(M)', '敲開古典音樂之門', '3000', '2', 'O', '通識核心課程', 40, 40, '徐作因'),
	('通識－統合(M)', '事業創新', '3001', '2', 'O', '通識核心課程', 40, 39, '趙裕彬'),
	('通識－統合(M)', '漢字之美', '3002', '2', 'O', '通識核心課程', 30, 30, '蕭世瓊'),
	('通識－統合(M)', '衣藝美學與創新時尚', '3004', '2', 'O', '通識核心課程', 40, 22, '陳宏美'),
	('通識－統合(M)', '性別差異與性別平等', '3006', '2', 'O', '通識核心課程', 40, 40, '尤惠貞'),
	('通識－統合(M)', '科技與藝術', '3007', '2', 'O', '通識核心課程', 30, 29, '廖惇根'),
	('通識－統合(M)', '創意運動英文學習', '3008', '2', 'O', '通識核心課程', 40, 40, '王亭文'),
	('通識－統合(M)', '基礎影音製作', '3009', '2', 'O', '通識核心課程', 40, 39, '李建成'),
	('通識－統合(M)', '彩色寶石鑑賞與珠寶事業經營管理', '3010', '2', 'O', '通識核心課程', 40, 40, '李建緯'),
	('通識－統合(M)', '從人類學看世界', '3011', '2', 'O', '通識核心課程', 30, 29, '陳玉苹'),
	('通識－統合(M)', '衣藝美學與科技時尚', '3012', '2', 'O', '通識核心課程', 40, 33, '陳宏美'),
	('通識－統合(M)', '社會設計專題', '3013', '2', 'O', '通識核心課程', 72, 72, '翟本瑞'),
	('通識－統合(M)', '築橋創新競賽', '3014', '2', 'O', '通識核心課程', 60, 22, '陳淑慧'),
	('通識－人文(夜)(H)', '台灣文學', '3015', '2', 'O', '通識核心課程', 78, 76, '金尚浩'),
	('通識－人文(夜)(H)', '應用文', '3016', '2', 'O', '通識核心課程', 78, 75, '吳秀英'),
	('通識－人文(夜)(H)', '批判思考', '3017', '2', 'O', '通識核心課程', 78, 76, '林永崇'),
	('通識－人文(夜)(H)', '旅遊與多元學習', '3018', '2', 'O', '通識核心課程', 40, 25, '薛珍華'),
	('通識－人文(夜)(H)', '越南地理與文化', '3019', '2', 'O', '通識核心課程', 70, 69, '黃青雲'),
	('通識－自然(夜)(N)', '世界建築欣賞', '3020', '2', 'O', '通識核心課程', 70, 66, '郭錦津'),
	('通識－自然(夜)(N)', '生命科學', '3021', '2', 'O', '通識核心課程', 80, 182, '葉怡巖'),
	('通識－自然(夜)(N)', '生態環境保育', '3022', '2', 'O', '通識核心課程', 75, 73, '施漢鵬'),
	('通識－自然(夜)(N)', '生物學與生物倫理', '3023', '2', 'O', '通識核心課程', 78, 35, '張智翔'),
	('通識－自然(夜)(N)', '全球暖化與綠色環境設計', '3024', '2', 'O', '通識核心課程', 70, 68, '郭錦津'),
	('通識－自然(夜)(N)', '衛星科技應用', '3025', '2', 'O', '通識核心課程', 78, 54, '劉文甦'),
	('通識－自然(夜)(N)', '綠能與環境', '3026', '2', 'O', '通識核心課程', 78, 78, '傅俊中'),
	('通識－自然(夜)(N)', '生活中的工程與科技', '3027', '2', 'O', '通識核心課程', 60, 59, '許聖富'),
	('通識－自然(夜)(N)', '智慧城市與行動應用', '3028', '2', 'O', '通識核心課程', 45, 44, '林哲暉'),
	('通識－自然(夜)(N)', '3D城市與數位校園', '3029', '2', 'O', '通識核心課程', 60, 59, '羅文珊'),
	('通識－自然(夜)(N)', '氣候變遷對臺灣之衝擊', '3030', '2', 'O', '通識核心課程', 70, 69, '黃志偉'),
	('通識－自然(夜)(N)', '食品衛生與安全', '3031', '2', 'O', '通識核心課程', 83, 82, '賴奇厚'),
	('通識－社會(夜)(S)', '個人資料保護法', '3032', '2', 'O', '通識核心課程', 78, 76, '劉南英'),
	('通識－社會(夜)(S)', '智慧財產之保護與實務', '3033', '2', 'O', '通識核心課程', 78, 77, '余賢東'),
	('通識－社會(夜)(S)', '智慧財產之保護與實務', '3034', '2', 'O', '通識核心課程', 78, 73, '蔡宜宏'),
	('通識－社會(夜)(S)', '社會學與生活體驗', '3035', '2', 'O', '通識核心課程', 78, 73, '蔡振志'),
	('通識－社會(夜)(S)', '社會學與生活體驗', '3036', '2', 'O', '通識核心課程', 78, 75, '蔡振志'),
	('通識－社會(夜)(S)', '民法實用', '3037', '2', 'O', '通識核心課程', 78, 76, '蔡宜宏'),
	('通識－社會(夜)(S)', '消費者保護法', '3038', '2', 'O', '通識核心課程', 78, 77, '劉南英'),
	('通識－社會(夜)(S)', '策略理論與中國崛起', '3039', '2', 'O', '通識核心課程', 78, 77, '白兆偉'),
	('通識－社會(夜)(S)', '智慧城市競爭力', '3040', '2', 'O', '通識核心課程', 45, 44, '賴玉真'),
	('通識－社會(夜)(S)', '現代韓國社會和文化', '3041', '2', 'O', '通識核心課程', 78, 77, '金尚浩'),
	('通識－社會(夜)(S)', '性別平等與親密關係', '3042', '2', 'O', '通識核心課程', 70, 69, '陳如音'),
	('通識－社會(夜)(S)', '戀愛、家庭與性別平等', '3043', '2', 'O', '通識核心課程', 70, 60, '陳如音'),
	('通識－統合(夜)(M)', '空間資訊與智慧生活', '3045', '2', 'O', '通識核心課程', 60, 58, '吳政庭'),
	('通識－統合(夜)(M)', '彩排與公演', '3048', '2', 'O', '通識核心課程', 78, 31, '陳思照'),
	('通識－統合(夜)(M)', '3D動畫虛擬實境實作(II)', '3049', '2', 'O', '通識核心課程', 40, 28, '陳淑慧'),
	('企管一乙', '全民國防教育軍事訓練(二)', '3767', '0', 'M', '企業管理學系', 120, 111, '賴金燕'),
	('資訊二甲', '全民國防教育軍事訓練(二)', '3779', '0', 'M', '資訊工程學系', 120, 112, '王金輝'),
	('資訊二丙', '全民國防教育軍事訓練(二)', '3780', '0', 'M', '資訊工程學系', 120, 98, '余君青'),
	('通識－自然(N)', '英文科學導讀(二)', '3808', '2', 'O', '通識核心課程', 70, 56, '羅珮瑄'),
	('通識－社會(S)', '前瞻時尚與潮流', '3809', '2', 'O', '通識核心課程', 70, 65, '陳柏全'),
	('通識－統合(M)', '逢甲夜市雙語導覽設計(2)', '3810', '2', 'O', '通識核心課程', 60, 43, '陳秋華'),
	('通識－統合(夜)(M)', '讀劇表演', '3811', '2', 'O', '通識核心課程', 40, 27, '徐培晃'),
	('通識－統合(夜)(M)', '音樂劇演唱技巧', '3812', '2', 'O', '通識核心課程', 60, 17, '陳思照'),
	('通識－統合(M)', '劇場與影像設計', '3813', '2', 'O', '通識核心課程', 40, 23, '蘇曉青'),
	('通識－統合(M)', 'Android Apps創意程式設計', '3815', '2', 'O', '通識核心課程', 40, 36, '洪耀正'),
	('通識－統合(M)', 'Android Apps創意程式設計', '3816', '2', 'O', '通識核心課程', 40, 36, '林嘉成'),
	('通識－統合(M)', 'iOS APP程式設計', '3817', '2', 'O', '通識核心課程', 48, 48, '管志偉'),
	('通識－統合(M)', 'iOS APP程式設計', '3818', '2', 'O', '通識核心課程', 40, 34, '陳重宏'),
	('通識－統合(M)', '體育玩很大：創意運動課程設計', '3820', '2', 'O', '通識核心課程', 40, 38, '王亭文'),
	('通識－統合(M)', 'Android Apps創意程式設計', '3827', '2', 'O', '通識核心課程', 40, 37, '陳伯維'),
	('通識－統合(M)', 'Android Apps創意程式設計', '3828', '2', 'O', '通識核心課程', 40, 27, '陳伯維'),
	('通識－統合(M)', 'Android Apps創意程式設計', '3829', '2', 'O', '通識核心課程', 40, 31, '陳伯維'),
	('通識－統合(M)', '春雨講堂-生活的奧義', '3889', '2', 'O', '通識核心課程', 100, 101, '何寄澎'),
	('通識－統合(M)', '使用者導向設計', '3891', '2', 'O', '通識核心課程', 20, 16, '月妹)'),
	('通識－統合(M)', '打造自我品牌─職能加值課程', '3892', '2', 'O', '通識核心課程', 45, 44, '陳淑慧'),
	('通識－統合(M)', '與產業接軌─共通核心職能培育', '3893', '2', 'O', '通識核心課程', 45, 42, '陳淑慧'),
	('通識－統合(M)', '國際企業策略與文化', '3897', '3', 'O', '通識核心課程', 35, 29, '林豐智'),
	('通識－統合(M)', '創新管理與企業家精神', '3898', '3', 'O', '通識核心課程', 35, 29, '賴文祥'),
	('通識－統合(M)', '電子商務與大數據', '3899', '3', 'O', '通識核心課程', 35, 29, '黃焜煌'),
	('通識－統合(M)', '學術寫作與商業報告', '3900', '3', 'O', '通識核心課程', 35, 29, '賴文祥');
/*!40000 ALTER TABLE `course` ENABLE KEYS */;

-- 导出  表 c_reg_2.course_time 结构
CREATE TABLE IF NOT EXISTS `course_time` (
  `cid` char(8) NOT NULL,
  `weekday` char(2) NOT NULL,
  `session` tinyint(4) NOT NULL DEFAULT -1,
  PRIMARY KEY (`cid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- 正在导出表  c_reg_2.course_time 的数据：~354 rows (大约)
/*!40000 ALTER TABLE `course_time` DISABLE KEYS */;
INSERT INTO `course_time` (`cid`, `weekday`, `session`) VALUES
	('1274', '一', 7),
	('1276', '四', 4),
	('1277', '四', 4),
	('1278', '五', 8),
	('1279', '四', 7),
	('1280', '五', 4),
	('1281', '四', 2),
	('1282', '五', 2),
	('1283', '二', 4),
	('1284', '一', 7),
	('1286', '四', 10),
	('1287', '四', 10),
	('1288', '三', 4),
	('1289', '五', 2),
	('1290', '四', 1),
	('1291', '四', 4),
	('1292', '四', 2),
	('1293', '一', 13),
	('1294', '一', 7),
	('1296', '四', 4),
	('1297', '四', 4),
	('1298', '二', 10),
	('1299', '一', 9),
	('1300', '四', 7),
	('1301', '二', 2),
	('1302', '四', 9),
	('1303', '五', 4),
	('1304', '三', 9),
	('1305', '二', 6),
	('1306', '二', 7),
	('1307', '四', 2),
	('1308', '三', 8),
	('1309', '二', 6),
	('1310', '四', 4),
	('1311', '三', 7),
	('1312', '二', 4),
	('1313', '四', 7),
	('1314', '一', 10),
	('1315', '二', 6),
	('1316', '三', 7),
	('1317', '三', 8),
	('1318', '三', 7),
	('1319', '二', 7),
	('1320', '二', 6),
	('1321', '四', 2),
	('1322', '四', 4),
	('1323', '四', 7),
	('1324', '四', 10),
	('1325', '二', 2),
	('1326', '五', 7),
	('1327', '五', 4),
	('1328', '三', 10),
	('1329', '五', 4),
	('1330', '四', 8),
	('1331', '五', 4),
	('1332', '四', 6),
	('1334', '五', 3),
	('1335', '五', 4),
	('1337', '五', 7),
	('1338', '五', 3),
	('1340', '五', 3),
	('1341', '五', 4),
	('1346', '二', 7),
	('1347', '二', 7),
	('1348', '二', 8),
	('1349', '四', 9),
	('1350', '三', 4),
	('1351', '三', 7),
	('1352', '一', 4),
	('1353', '三', 10),
	('1354', '五', 8),
	('1355', '四', 4),
	('1356', '二', 4),
	('1360', '五', 4),
	('1361', '二', 9),
	('1362', '四', 4),
	('1364', '二', 8),
	('1367', '二', 9),
	('1967', '五', 2),
	('1968', '五', 9),
	('1970', '五', 9),
	('1971', '四', 10),
	('1972', '五', 2),
	('1973', '五', 6),
	('2001', '五', 9),
	('2002', '三', 2),
	('2004', '四', 8),
	('2132', '一', 10),
	('2134', '五', 4),
	('2135', '二', 10),
	('2136', '四', 4),
	('2137', '一', 7),
	('2138', '三', 8),
	('2139', '三', 11),
	('2140', '一', 10),
	('2142', '二', 4),
	('2143', '三', 10),
	('2144', '五', 4),
	('2145', '三', 4),
	('2146', '四', 8),
	('2147', '三', 12),
	('2148', '二', 13),
	('2149', '四', 13),
	('2150', '二', 9),
	('2151', '二', 4),
	('2152', '一', 4),
	('2153', '四', 9),
	('2154', '四', 4),
	('2156', '四', 10),
	('2157', '四', 4),
	('2158', '二', 4),
	('2159', '二', 7),
	('2160', '三', 4),
	('2162', '五', 4),
	('2163', '三', 8),
	('2164', '一', 13),
	('2165', '一', 8),
	('2166', '三', 13),
	('2167', '五', 4),
	('2168', '四', 8),
	('2170', '二', 4),
	('2171', '三', 4),
	('2172', '四', 4),
	('2174', '三', 4),
	('2175', '二', 4),
	('2176', '三', 8),
	('2177', '二', 13),
	('2178', '五', 8),
	('2179', '五', 4),
	('2180', '四', 8),
	('2181', '三', 8),
	('2182', '二', 10),
	('2184', '二', 9),
	('2185', '四', 13),
	('2186', '一', 13),
	('2188', '四', 4),
	('2189', '三', 9),
	('2190', '二', 4),
	('2191', '三', 4),
	('2192', '二', 8),
	('2193', '三', 13),
	('2194', '二', 8),
	('2195', '一', 8),
	('2196', '二', 4),
	('2198', '四', 9),
	('2202', '五', 9),
	('2203', '五', 4),
	('2862', '四', 7),
	('2863', '四', 9),
	('2864', '一', 7),
	('2865', '一', 9),
	('2866', '二', 9),
	('2867', '二', 2),
	('2868', '四', 4),
	('2869', '二', 9),
	('2870', '三', 4),
	('2871', '三', 9),
	('2872', '二', 7),
	('2873', '二', 9),
	('2874', '四', 4),
	('2875', '五', 7),
	('2876', '一', 4),
	('2877', '一', 7),
	('2878', '一', 2),
	('2879', '五', 9),
	('2880', '五', 7),
	('2881', '二', 4),
	('2882', '四', 4),
	('2883', '四', 9),
	('2884', '三', 4),
	('2885', '四', 7),
	('2886', '三', 9),
	('2887', '二', 4),
	('2888', '五', 4),
	('2889', '四', 4),
	('2890', '一', 4),
	('2891', '三', 7),
	('2892', '三', 9),
	('2893', '四', 9),
	('2894', '一', 9),
	('2895', '一', 7),
	('2896', '二', 7),
	('2897', '一', 9),
	('2898', '二', 7),
	('2899', '二', 9),
	('2900', '二', 9),
	('2901', '二', 7),
	('2902', '一', 7),
	('2903', '三', 7),
	('2904', '四', 7),
	('2905', '一', 9),
	('2906', '一', 7),
	('2907', '二', 9),
	('2908', '二', 7),
	('2909', '五', 6),
	('2910', '四', 4),
	('2911', '一', 2),
	('2912', '二', 9),
	('2913', '三', 9),
	('2914', '三', 4),
	('2915', '三', 7),
	('2916', '一', 7),
	('2917', '五', 7),
	('2918', '三', 4),
	('2919', '三', 7),
	('2920', '四', 4),
	('2921', '四', 9),
	('2922', '一', 9),
	('2923', '三', 7),
	('2924', '三', 9),
	('2925', '五', 4),
	('2926', '五', 4),
	('2927', '二', 9),
	('2928', '三', 2),
	('2929', '一', 4),
	('2930', '一', 4),
	('2931', '五', 7),
	('2932', '五', 9),
	('2933', '三', 9),
	('2934', '一', 4),
	('2935', '四', 7),
	('2936', '二', 9),
	('2937', '二', 2),
	('2938', '四', 9),
	('2939', '五', 10),
	('2940', '五', 10),
	('2941', '三', 9),
	('2942', '二', 10),
	('2943', '二', 9),
	('2944', '四', 9),
	('2945', '五', 7),
	('2946', '五', 9),
	('2947', '二', 7),
	('2948', '四', 9),
	('2949', '四', 4),
	('2950', '四', 2),
	('2951', '五', 2),
	('2952', '五', 4),
	('2953', '四', 2),
	('2954', '四', 4),
	('2955', '二', 10),
	('2956', '三', 9),
	('2957', '三', 7),
	('2958', '四', 9),
	('2959', '二', 2),
	('2960', '二', 4),
	('2961', '一', 4),
	('2962', '三', 7),
	('2963', '一', 7),
	('2964', '一', 9),
	('2965', '五', 4),
	('2966', '三', 2),
	('2967', '三', 4),
	('2968', '一', 9),
	('2969', '一', 7),
	('2970', '五', 2),
	('2971', '一', 4),
	('2972', '三', 4),
	('2973', '三', 2),
	('2974', '二', 9),
	('2975', '三', 11),
	('2976', '四', 7),
	('2977', '四', 9),
	('2978', '三', 7),
	('2979', '三', 9),
	('2980', '五', 9),
	('2981', '三', 4),
	('2982', '五', 9),
	('2983', '二', 4),
	('2984', '二', 11),
	('2985', '三', 7),
	('2986', '三', 7),
	('2987', '二', 4),
	('2988', '一', 7),
	('2989', '四', 7),
	('2991', '一', 10),
	('2992', '三', 7),
	('2993', '五', 10),
	('2994', '五', 7),
	('2995', '五', 7),
	('2996', '五', 4),
	('2997', '二', 4),
	('2998', '五', 7),
	('2999', '五', 4),
	('3000', '五', 7),
	('3001', '二', 7),
	('3002', '四', 4),
	('3004', '五', 8),
	('3006', '一', 4),
	('3007', '一', 9),
	('3008', '一', 11),
	('3009', '三', 4),
	('3010', '五', 9),
	('3011', '二', 7),
	('3012', '五', 6),
	('3013', '三', 4),
	('3014', '四', 9),
	('3015', '三', 12),
	('3016', '一', 12),
	('3017', '一', 12),
	('3018', '一', 12),
	('3019', '一', 12),
	('3020', '二', 14),
	('3021', '一', 12),
	('3022', '二', 14),
	('3023', '三', 14),
	('3024', '二', 12),
	('3025', '五', 12),
	('3026', '五', 14),
	('3027', '三', 12),
	('3028', '一', 12),
	('3029', '一', 12),
	('3030', '四', 14),
	('3031', '一', 12),
	('3032', '四', 14),
	('3033', '二', 12),
	('3034', '四', 12),
	('3035', '三', 12),
	('3036', '三', 14),
	('3037', '二', 12),
	('3038', '四', 12),
	('3039', '二', 12),
	('3040', '四', 12),
	('3041', '三', 14),
	('3042', '一', 14),
	('3043', '五', 14),
	('3045', '四', 12),
	('3048', '一', 14),
	('3049', '一', 12),
	('3767', '一', 4),
	('3779', '三', 2),
	('3780', '三', 2),
	('3808', '一', 4),
	('3809', '一', 7),
	('3810', '五', 9),
	('3811', '二', 14),
	('3812', '一', 12),
	('3813', '二', 7),
	('3815', '二', 12),
	('3816', '四', 12),
	('3817', '一', 12),
	('3818', '一', 4),
	('3820', '二', 11),
	('3827', '二', 7),
	('3828', '二', 9),
	('3829', '三', 4),
	('3889', '一', 12),
	('3891', '五', 7),
	('3892', '五', 7),
	('3893', '三', 12),
	('3897', '一', 8),
	('3898', '四', 4),
	('3899', '五', 4),
	('3900', '五', 9);
/*!40000 ALTER TABLE `course_time` ENABLE KEYS */;

-- 导出  表 c_reg_2.student 结构
CREATE TABLE IF NOT EXISTS `student` (
  `sid` char(16) NOT NULL,
  `name` char(64) NOT NULL DEFAULT '',
  `gender` char(2) NOT NULL DEFAULT '',
  `dept` char(32) NOT NULL DEFAULT '',
  `dyc` char(16) NOT NULL DEFAULT '',
  `credit` tinyint(4) NOT NULL DEFAULT 0,
  `timetable` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`sid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- 正在导出表  c_reg_2.student 的数据：~1 rows (大约)
/*!40000 ALTER TABLE `student` DISABLE KEYS */;
INSERT INTO `student` (`sid`, `name`, `gender`, `dept`, `dyc`, `credit`, `timetable`) VALUES
	('D0809371', 'Hinnn Cheung', 'M', '資訊工程學系', '資訊二丙', 0, NULL);
/*!40000 ALTER TABLE `student` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
