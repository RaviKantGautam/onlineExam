-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 26, 2019 at 10:47 PM
-- Server version: 10.1.31-MariaDB
-- PHP Version: 7.2.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `computerisedexam`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `email` varchar(500) NOT NULL,
  `password` varchar(100) NOT NULL,
  `type` varchar(200) NOT NULL,
  `mobile` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`email`, `password`, `type`, `mobile`) VALUES
('abc2@gmail.com', '235789', 'dkkf', 2147483647),
('admin3@gmail.com', '453636', 'djjk', 2147483647),
('admin6@yahoo.com', '763734', 'djnjdkn', 637684748),
('admin@gmail.com', '78', 'hshsj', 678976567),
('gagan@gmail.com', '198', 'ghj', 579987666),
('hgjh@gmail.com', '87687', 'hghjgshjd', 6568779),
('hj@gmail.com', '567', 'ghj', 987578888),
('hjl@yahn.com', '546', 'bshjd', 89626737),
('jbsjj@jn.com', '67788', 'hsjs', 68994677),
('jhj@yah.com', '8787', 'jshjhdk', 54576587),
('jhsj@gmail.com', '76876', 'jhsbjk', 76768787),
('jkui@gmail.com', '7867868', 'sgdjg', 576587),
('klm@gmail.com', '590', 'hhh', 898656777),
('mno@jskks', '899', 'mko', 2147483647),
('nm@gmail.com', '345', 'hjj', 2147483647),
('nml@yahoo.com', '2345', 'dkk', 2147483647),
('xyz@gmail.com', '567', 'hghjg', 2147483647);

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE `questions` (
  `qid` int(11) NOT NULL,
  `sectionid` int(11) NOT NULL,
  `question` varchar(500) NOT NULL,
  `optiona` varchar(200) NOT NULL,
  `optionb` varchar(200) NOT NULL,
  `optionc` varchar(200) NOT NULL,
  `optiond` varchar(200) NOT NULL,
  `answer` varchar(200) NOT NULL,
  `flag` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`qid`, `sectionid`, `question`, `optiona`, `optionb`, `optionc`, `optiond`, `answer`, `flag`) VALUES
(32, 3, 'Which activity is not included in the first pass of two pass\r\nassemblers?', 'Build the symbol table', 'Construct the intermediate code', 'Separate mnemonic opcode and operand fields', 'None of the above', 'D', 0),
(33, 3, ' Code optimization is responsibility of:', 'Application Programmer', 'System Programmer', 'Operating system', 'All of the above', 'B', 0),
(34, 3, 'Which activity is included in the first pass of two pass\r\nassemblers?', 'Build the symbol table', 'Construct the intermediate code', 'Separate mnemonic opcode and operand fields', 'None of the above', 'A', 1),
(35, 3, 'In two pass assembler the symbol table is used to store:', 'Label and value', 'only value', 'mnemonics', 'Memory location', 'D', 0),
(36, 3, 'Symbol Table can be used for:', ' Checking type compatibility', 'Suppressing duplication of error message', 'Storage allocation', 'All of the above', 'D', 0),
(37, 3, 'Which of the statements related to Compilers is wrong ?', 'Lexical analysis is breaking the input into tokens', 'Syntax analysis is for parsing the phrase', 'Syntax analysis is for analyzing the semantic', 'None of the above', 'C', 0),
(38, 3, 'Which activity is not included in the first pass of two pass\r\nassemblers ?', 'Build the symbol table', 'Construct the machine code', ' Separate mnemonic opcode and operand fields.', 'None of the above', 'D', 1),
(39, 3, 'A Top-down Parse generates:', 'Left-most derivation', 'Right-most derivation', 'Right-most derivation in reverse', 'Left-most derivation in reverse', 'A', 0),
(40, 3, ' A general macro processor is an in built function of:', 'Loader', 'Linker', 'Editor', 'Assembler', 'D', 0),
(42, 3, 'If you want to execute more than one program at a time, the\r\nsystems software that are used must be capable of:', 'word processing', 'Virtual memory', 'compiling', 'multitasking', 'D', 1),
(52, 4, ' In Java, which of the following statements is/are True?\r\nS1: The ‘final’ keyword applied to a class definition prevents the class from being extended through derivation.\r\n\r\nS2: A class can only inherit one class but can implement multiple interfaces.\r\n\r\nS3: Java permits a class to replace the implementation of a method that it has inherited. It is called method overloading.', 'S1 and S2 only', 'S1 and S3 only', 'S2 and S3 only', 'All S1, S2, S3', 'A', 1),
(53, 4, 'Which of the following statements is/are True?\r\n\r\nP: C programming language has a weak type system with static types.\r\n\r\nQ: Java programming language has a strong type system with static types.', 'P only', 'Q only ', 'Both P and Q', 'Neither P nor Q', 'C', 0),
(54, 4, 'A graphic display system has a frame buffer that is 640 pixels wide, 480 pixels high and 1 bit of color depth. If the access time for each pixel on the average is 200 nanoseconds, then the refresh rate of this frame buffer is approximately:', '16 frames per second', '19 frames per second', '21 frames per second', '23 frames per second', 'A', 0),
(55, 4, 'Which of the following statements is/are True regarding the solution to the visibility problem in 3D graphics?\r\nS1: The Painter’s algorithm sorts polygons by depth and then paints (scan – converts) each Polygon on to the screen starting with the most nearest polygon.\r\n\r\nS2: Backface Culling refers to eliminating geometry with backfacing normals.', 'S1 only', 'S2 only', 'Both S1 and S2', 'Neither S1 nor S2', 'B', 1),
(56, 4, '‘ptrdata’ is a pointer to a data type. The expression *ptrdata++ is evaluated as (in C++) :', '*(ptrdata++)', '(*ptrdata)++', '*(ptrdata)++', 'Depends on compiler', 'A', 1),
(58, 4, 'Consider the following JAVA program :\r\n public class First { public static int CBSE (int x) { if (x < 100) x = CBSE (x + 10); return (x – 1); } public static void main (String[] args){ System.out.print(First.CBSE(60)); } }', '69', '95', '66', '59', 'D', 0),
(59, 4, 'Which of the following statement(s) with regard to an abstract class in JAVA is/are TRUE ? 1. An abstract class is one that is not used to create objects. 2. An abstract class is designed only to act as a base class to be inherited by other classes.', 'only 1', 'only 2', 'Neither 1 nor 2', 'Both 1 and 2', 'D', 0),
(62, 4, 'Given the array of integers ‘array’ shown below : 13, 7, 27, 2, 18, 33, 9, 11, 22, 8. What is the output of the following JAVA statements ? int [ ] p = new int [10]; int [ ] q = new int [10]; for (int k = 0; k < 10; k ++) p[k] = array [k]; q = p; p[4] = 20; System.out.println(array [4] + “ : ” + q[4]);', '20:20', '18:18', '18:20', '20:18', 'C', 1),
(63, 5, 'Six channels, each with a 200 khz bandwidth are to be multiplexed together. what is the minimum bandwidth requirement if each guard band is 20Khz -', '1000KHz', '1100KHz', '1200KHz', '1300KHz', 'D', 0),
(66, 5, 'Which of these multiplexing techniques is digital for combining several low -rate channels into one high-rate one', 'FDM', 'WDM', 'TDM', 'None of the above', 'C', 0),
(67, 5, 'Which of these is a type of antenna used in microwave communications?', 'Parabolic Dish antenna', 'Horn antenna', 'Both A and B', 'None of the above', 'C', 1),
(68, 5, 'What is the range of wavelength of infrared waves that is used in short range communication', '1mm to 770nm', '1cm to 77nm', '10mm to 770nm', '10mm to 70mm', 'D', 0),
(69, 5, 'How switching is performed in the internet?', 'data gram approach to circuit switching at datalink layer', 'Virtual circuit approach to message switching at network layer', 'datagram approach to message switching at datalink layer', 'datagram approach to packet switching at network layer', 'A', 0),
(70, 5, 'What are the three phases in virtual circuit switching?', 'Setup, data transfer, teardown', 'Request-connect, data sending-acknowledgment, request-disconnect', 'end-connect, data transfer, request-disconnect', 'None of the above', 'C', 0),
(71, 5, 'Which of these statements is true about packet switching networks?', 'Resource allocation is done for a packet beforehand', 'Bandwidth is reserved on the links', 'Scheduled processing for a packet', 'Resource allocation is done on demand', 'D', 1),
(72, 5, 'what are the components of a packet switch ?', 'nput ports, output ports, a router processor, a switching fabric', 'input ports, output ports, a router processor.', 'input ports, output ports, a switching fabric', 'input ports, output ports, a router processing, a switching fabric, a memory chip', 'A', 0),
(73, 2, 'Which of the following is/are true with reference to ‘view’ in DBMS ? (a) A ‘view’ is a special stored procedure executed when certain event occurs. (b) A ‘view’ is a virtual table, which occurs after executing a pre-compiled query. code:\r\nA\r\n', 'only (a) is true', 'only (b) is true', 'Both (a) and (b) are true', 'Neither (a) nor (b) are true', 'B', 0),
(74, 2, 'In SQL, __________ is an Aggregate function.', 'SELECT', 'CREATE', 'AVG', 'MODIFY', 'C', 0),
(75, 2, 'In RDBMS, different classes of relations are created using __________ technique to prevent modification anomalies.', 'Functional dependencies', 'Data integrity', 'Refrential integrity', 'Normal forms', 'D', 1),
(76, 2, '__________ SQL command changes one or more fields in a record.\r\n\r\n', 'LOOKUP', 'INSERT', 'MODIFY', 'CHANGE', 'C', 0),
(77, 2, 'An attribute A of datatype varchar (20) has value ‘Ram’ and the attribute B of datatype char (20) has value ‘Sita’ in oracle. The attribute A has _______ memory spaces and B has _______ memory spaces.', '20,20', '3,20', '3,4', '20,4', 'B', 0),
(78, 2, 'Integrity constraints ensure that changes made to the database by authorized users do not result into loss of data consistency. Which of the following statement(s) is (are) true w.r.t. the examples of integrity constraints ? (A) An instructor Id. No. cannot be null, provided Intructor Id No. being primary key. (B) No two citizens have same Adhar-Id. (C) Budget of a company must be zero.\r\n\r\n', '(A), (B), and (C) are true', '(A) false, (B) and (C) are true', '(A) and (B) are true , (C) true', '(A),(B) and (C) are false', 'C', 1),
(80, 2, 'Consider a schema R(MNPQ) and functional dependencies M ? N, P ? Q. Then the decomposition of R into R1 (MN) and R2(PQ) is________.\r\n\r\n', 'Dependency preserving but not lossless join', 'Dependency preserving and lossless join C', 'Lossless join but not dependency preserving', 'Neither dependency preserving nor lossless join', 'A', 0),
(81, 2, 'Which of the following statements is/are True regarding some advantages that an object-oriented DBMS (OODBMS) offers over a relational database ? 1. An OODBMS avoids the “impedance mismatch” problem. 2. An OODBMS avoids the “phantom” problem. 3. An OODBMS provides higher performance concurrency control than most relational databases. 4. An OODBMS provides faster access to individual data objects once they have been read from disk.', '1 and 2', '1 and 4', '1, 2 and 3 only', '1, 2 and 4', 'C', 0),
(82, 2, 'Consider the table R with attributes A, B and C. The functional dependencies that hold on R are : A ? B, C ? AB. Which of the following statements is/are True ? 1. The decomposition of R into R1(C, A) and R2(A, B) is lossless. 2. The decomposition of R into R1(A, B) and R2(B, C) is lossy.', 'Only 1', 'Only 2', 'Both 1 and 2', 'Neither 1 nor 2', 'C', 0),
(83, 2, 'Consider the following ORACLE relations : One (x, y) = {<2, 5>, <1, 6>, <1, 6>, <1, 6>, <4, 8>, <4, 8>} Two (x, y) = {<2, 55>, <1, 1>, <4, 4>, <1, 6>, <4, 8>, <4, 8>, <9, 9>, <1, 6>} Consider the following two SQL queries SQ1 and SQ2 :\r\nSQ1 : SELECT * FROM One)\r\n           EXCEPT\r\n      (SELECT * FROM Two);\r\nSQ2 : SELECT * FROM One)\r\n        EXCEPT ALL\r\n      (SELECT * FROM Two);\r\nFor each of the SQL queries, what is the cardinality (number of rows) of the result obtained when applied to the ins', '2 and 2 respectively', '1 and 1 respectively', '1 and 2 respectively', '2 and 1 respectively', 'C', 1),
(85, 1, 'The equivalent hexadecimal notation for octal number 2550276 is :', 'FADED', 'AEOBE', 'ADOBE', 'ACABE', 'C', 0),
(86, 1, 'A byte addressable computer has a memory capacity of 2m Kbytes and can perform 2n operations. An instruction involving 3 operands and one operator needs a maximum of', '3m bits', 'm + n bits', '3m + n bits', '3m + n + 30 bits', 'D', 0),
(87, 1, ' One of the main features that distinguish microprocessor from micro-computers is', 'words are usually larger in microprocessors', 'words are shorter in microprocessors', 'microprocessor does not contain I/O devices', 'None of the above', 'C', 0),
(88, 1, 'onsider a code with five valid code words of length ten :\r\n\r\n0000000000, 0000011111, 1111100000, 1110000011, 1111111111\r\n\r\nHamming distance of the code is', '5', '10', '8', '9', 'A', 1),
(89, 1, 'Which of the following logic expressions is incorrect ?', '1?0 = 1', '1?1?1 = 1', '1?1?0 = 1', '1?1 = 0', 'C', 0),
(90, 1, 'The IEEE-754 double precision format to represent floating point numbers, has a length of _____ bits.', '16', '32', '48', '64', 'D', 0),
(91, 1, ' In a Positive edge triggered JK flip-flop, if J and K both are high then the output will be _______ on the rising edge of the clock.', 'No change', 'Set ', 'Reset', 'Toggle', 'D', 0),
(92, 1, 'ECL is the fastest of all logic families. High Speed in ECL is possible because transistors are used in difference amplifier configuration, in which they are never driven into __________.', 'Rare condition', 'Saturation', 'Delay', 'High impedence', 'B', 1),
(93, 1, 'The hexadecimal equivalent of the octal number 2357 is:', '2EE', '2FF', '4EF', '4FE', 'C', 0),
(94, 1, 'Which of the following logic operations is performed by the following given combinational circuit ?', 'EXCLUSIVE-OR', 'EXCLUSIVE-NOR', 'NAND', 'NOR', 'A', 0),
(96, 6, 'A bulb in a staircase has two switches, one switch being at the ground floor and the other one at the first floor. The bulb can be turned ON and also can be turned OFF by any one of the switches irrespective of the state of the other switch. The logic of switching of the bulb resembles.\r\n', 'an AND gate', 'an OR gate', 'an XOR gate', 'an NAND gate', 'C', 1),
(98, 6, 'Indicate which of the following logic gates can be used to realize all possible combinational Logic functions:', 'OR gates only', 'NAND gates only', 'EX-OR gates only', 'NOR gates only', 'A', 0),
(100, 1, 'The minimum number of 2-input NAND gates required to implement the Boolean function Z=A\r\n¯¯¯¯¯\r\nB\r\nC, assuming that A, B and C are available, is', 'two', 'three', 'five ', 'six', 'C', 1),
(102, 12, 'Which one the following is not correct?', 'Tara Chand credits Mughals for steamrolling the “old plurality of political units”.', 'R C majumdar refuses to endorse P. N. Oak’s fantasies about the Taj Mahal being a “Hindu” Monument.', 'Tarikh-i-Alfi was written at the instance of Aurangzeb.', 'Shaikh Tajuddin, a protagonist of Ibn al Arabi introduced his principle concepts in Akbar’s court at Fatehpur Sikri.', 'C', 0),
(103, 12, 'Khalsa, the ‘society of the pure’, was founded in', '1707', '1877', '1699', '1609', 'C', 0),
(104, 12, 'Find the pair which does not match:', 'Karori  —  A revenue official in the Mughal administration', 'Khalisa  —  Land was managed directly by the state', 'Tarafdar  —  Provincial Governors under the Bahmani Sultanate', 'Paibaqi  —  Assignment of revenue in Jagir', 'D', 0),
(105, 12, 'Which of the following statements are correct?\r\n\r\n1. In their buildings, the Turk Sultans used the arch and dome on a wide scale.\r\n\r\n2. Neither the arch nor the dome was a Turkish or Muslim innovation.\r\n\r\n3. The Turks used fine lime mortar in their buildings.\r\n\r\n4. The Turkish rulers did not use slab and beam method in their buildings.\r\n\r\nSelect the correct answer from the codes given below:', '1,2,3', '2,3,4', '1,3,4', '1,3', 'C', 1),
(106, 12, 'Which of the following statements is not correct?', 'He viewed Babur’s invading army as a “marriage party of sin”.', 'The Brahman and Khatri are not a part of the oppressive establishment', 'It was his conviction that god has no ‘caste’; he gives no consideration to caste.', 'Guru Nanak was thoroughly familiar with the politico administrative arrangements made by the Afghan rulers, particularly in Punjab.', 'C', 0),
(107, 12, 'Assertion (?)\r\nSheikh Nizamuddin Aulia saw the reign of seven Sultans, succeeding one after another, on the throne of Delhi, but he never visited the court of any of them. (December Paper II)\r\n\r\nReason (?)\r\nHe disliked the State Patronage to the Suhrawardi Sufi Saints.', 'Both ? and ? are true and ? is the correct explanation of ?', '? is true but ? is false', 'Both ? and ? are true but ? is NOT the correct explanation of ?', '? is false but ? is true', 'C', 0),
(108, 12, 'Who among the following used to look after the army during the Sultanate period?', 'Wazir', 'Naib', 'Qazi', 'Ariz-i Mamaliq', 'A', 0),
(110, 12, 'Arrange the following source books in chronological sequence. Point out your answer from the codes as given below: 1. Khazain-ul Futuh 2. Waqa’at-i Mushtaki 3.Tabaqat-i Akbari 4. Ma’asir-i Jahangiri', '1,2,3,4', '2,3,4,1', '3,4,2,1', '4,2,3,1', 'C', 1),
(111, 12, 'Name Babur’s maternal grandmother, the wife of Yunus Khan Mughal, who after the death of Babur’s father managed everything for her grandson and dealt with conspirators:', 'Isan Daulat Begum', 'Mubarika Begum', 'Qutlugh Nigar Begum', 'Dildar Begum', 'A', 0),
(112, 12, 'Which of the following historical accounts was not written during the reign of Akbar?', 'Tarikh-i Firishta', 'Tabaqat-i Akbari', 'Humayunnama', 'Tarikh-i Shershahi', 'B', 0),
(113, 13, 'About the meaning of history who has observed?\r\n\r\n‘Divine providence would take care of meaning of history if he (historian) takes care of facts’.', 'Renier', 'Collingwood', 'Ranke', 'Croce', 'B', 0),
(114, 13, 'Who observed that: “Just as Darwin discovered the law of development of organic nature, so Marx discovered the law of development of human history”?', 'Frederich Engels', 'A J P Taylor', 'Charles A Beard', 'A Marwick', 'C', 1),
(115, 13, 'Jacques Derrida’s method of deconstruction finds primarily theorized in:', 'Writing and Difference', 'Of Grammatology', 'Speech and Phenomena', 'All of the above', 'D', 0),
(116, 13, 'Who among the following is not a member of Subaltern Studies Project in India?', 'Dipesh chakraborty', 'Ramchandra Guha', 'Sahid Ahmid', 'Gayatri Chakravorty Spivak', 'A', 0),
(117, 13, 'Who said, “History is an unending dialogue between the present and the past”?', 'G. R. Elton', 'Leopold von Ranke', 'E. H. Carr', 'Lord Acton', 'B', 1),
(118, 13, 'Who said that, “every true history is contemporary history”?\r\n\r\n', 'Benedetto Croce', 'Arnold Toynbee', 'Auguste Comte', 'F. W. Maitland', 'B', 0),
(119, 13, 'Who among the following said, “For me every tiniest activity is governed by what I consider to be my religion”?', 'Mahatma Gandhi', 'Swami Vivekanand', 'Subhash Chandra Bose', 'V D Savarkar', 'B', 0),
(120, 13, 'When did Edwin Montague make historic declaration outlining British policy of increasing association of Indians in every branch of administration?', '17 July 1917', '25 August 1917', '20 August 1917', '29 August 1917 ', 'A', 1),
(121, 13, 'Who authored the book- The Indian struggle 1935 - 1942?', 'Motilal Nehru', 'Pattabhi Sitaramayya', 'Lala Lajpat Rai', 'Subhas Chandra Bose', 'B', 0),
(122, 13, 'Which of the following statements is not correct concerning D. D. Kosambi’s approach of history writing?', 'He accepted over- precise and misleading periodization of Indian history.', 'His writing reflects a methodology that combined historical inquiry with sociology, anthropology and archaeology.', 'He dismissed dynastic tables and epigraphs of conquests.', 'He was more interested in modes of productions and forms of social organization.', 'B', 0),
(123, 15, 'The Matsya and Chedi janas (people) are mentioned for the first time in', 'Aitareya Brahmana', 'Rigveda', 'Anguttara Nikaya', 'Bhagavati Sutra', 'C', 0),
(124, 15, 'Which of the following Janas are mentioned in Rig-veda?', 'yadu', 'puru', 'chedi', 'matsya', 'A', 1),
(125, 15, 'Under whose leadership the Battle of Ten Kings, mentioned in the Rig- Veda, was fought against Sudasa?', 'Vasishtha', 'Puru', 'Viswamitra', 'Kuru', 'A', 0),
(126, 15, 'Who, among the following, were victorious in the ‘Battle of Ten Kings’ of the Vedic period?', 'Bharatas', 'Matsyas', 'Anus', 'Purus', 'A', 0),
(127, 15, 'Which of the following Vedic rivers have been located in Afghanistan?\r\n\r\n1. Asikni\r\n\r\n2. Kubha\r\n\r\n3. Kramu\r\n\r\n4. Sutudri', '1,2,3,4', '2 and 3', '1 and 2', '3 and 4', 'D', 0),
(128, 15, ' which of the following forms of ancient Indian marriages was the payment of bride price a condition?', 'Arsha', 'Prajapati', 'Daiva', 'Asura', 'B', 1),
(129, 15, 'Assertion (?)\r\nDuring the Rig Vedic period the society was pastoral. (June Paper-II)\r\n\r\nReason (?)\r\nThe mode of subsistence was primarily based on pastoralism.', 'Both ? and ? are true and ? is the correct explanation of ?', 'Both ? and ? are true but ? is NOT the correct explanation of ?', '? is false but ? is true', 'Both ? and ? are false', 'A', 0),
(130, 15, 'The mention of which of the following rivers in the Rig Veda indicates the Aryans’ connection with Afghanistan?', 'Vipas, Vitasta', 'Sindhu, Sutudri', 'Suvastu, Gomati', 'Asikni, Parushni', 'C', 0),
(131, 15, 'Which one of the following statements is correct about Sabha and Samiti in Rigvedic times?', 'Sabha has the representative of elite class while Samiti has the representative of general class.', 'Sabha has the representative of general class while Samiti has the representative of elite class.', 'The number of representative in Samiti is greater than the number of representative in Sabha.', 'Sabha and Samiti have equal proportion of representatives.', 'A', 0),
(132, 15, 'During the Upanishadic period who was the learned lady scholar who could lecture on higher knowledge in the assembly of philosopher?', 'Apala', 'Gargi', 'Visvavara', 'Ghosha', 'C', 1),
(133, 14, 'Amaravati, an early historical site in Andhra Pradesh was known as the following:', 'Chandavaram', 'Yelleswaram', 'Dharnikota', 'Dhulikatta', 'B', 0),
(134, 14, 'Naphta and Mangonels were used for the first time in India in which of the following place/region?', 'Khajuraho temple, 950', 'Sindh, 712', 'Deccan, 1130', 'Panipat, 1526', 'D', 0),
(135, 14, 'With which of the following department was Kantaka- Sodhana connected?', 'Taxation', 'Tolls', 'Judiciary', 'Industry', 'D', 0),
(136, 14, 'Kushan dynastic sanctums, where statues of Kushan rulers were established, were discovered at', 'Mat', 'Jalandhar', 'Kara tape', 'surkh kotal', 'A', 1),
(137, 14, 'In the context of ancient India, which of the following statement can be said true?\r\n\r\nA. Marriage by capture was Paisacha vivaha.\r\n\r\nB. Marriage where the bridegroom had to pay a price to bride was Asura vivaha.\r\n\r\nC. Marriage in a state of sleep or intoxication was Rakshasa vivaha.\r\n\r\nD. Marriage through mutual love was Gandharva vivaha.\r\n\r\nChoose the code for correct statement.', 'D only', 'C and D', 'A and B', 'B and D', 'C', 0),
(138, 14, 'Find the pair which does not match:', 'Lauriya Nandangarh  —  Bull', 'Rampurva  —  Lion', 'Sanchi  —  Lion', 'Sankisa  —  Elephant', 'B', 0),
(139, 14, 'At which of the following places a Kushan devakula was found where statues of the royal persons were kept?', 'Sanghol', 'Mat', 'Shahbajgarhi', 'Ahichchhatra', 'A', 0),
(140, 14, 'The proportion of maximum and minimum salary of the Government employees mentioned in the Arthashastra was', '60,00: 6', '2800:70', '2500:60', '4600:55', 'B', 1),
(141, 14, 'Which of the following kings claims to have stopped the practice of mixing of Varnas?', 'Kharavela', 'Gautamiputra Satakarni', 'Pushyamitra Sunga', 'Pravarasena I', 'D', 0),
(142, 14, 'According to the Kautilya Arthasastra who among the following was responsible for issuing coins?', 'Lakshanadhyaksha', 'Sauvarnika', 'Akshapataladhyaksha', 'Panyadhyaksha', 'B', 0),
(143, 11, 'Which one of the following is Tekkalakota?', 'Palaeolithic site in West Bengal', 'Neolithic site in Karnataka', 'Chalcolithic site in Gujarat', 'Megalithic site in Andhra Pradesh', 'A', 1),
(144, 11, 'The available Rigveda Samhita is the recension of', ' Bashkala', 'Sakala', ' Saunaka', 'Paippala', 'B', 0),
(145, 11, 'Who among the following priests was the overall supervisor of vedic sacrifices?', 'Adhvurya', 'Adhvurya', 'Hotri', 'Udgatri', 'B', 0),
(146, 11, ' Ratnins played an important role in the coronation of a vedic king. Whom did he visit first in connection with ratna-havi?', 'Gramani', 'Mahishi', 'Purohit', 'Senani', 'D', 0),
(147, 11, 'Which of the following was the principal city of the Asmaka Mahajanapada?', 'Viratanagar', 'Dantapura', 'Mahishmati', 'Potana', 'D', 1),
(148, 11, '‘Siddhamatrika’ signifies', 'a Buddhist text', 'a jain goddess', 'a temple style', 'a kind of indian script', 'D', 0),
(149, 11, ' Which one of the following is a work on astrology?', ' Baveru Jataka', 'Sibi Jataka', 'Sutasoma ', 'Yavana Jataka', 'D', 0),
(150, 11, 'The guild which had migrated from Lata to Dasapura during the Gupta period traded in', 'oil', 'silk', 'food grain', 'wine', 'B', 0),
(151, 11, 'Where was a Chaitya griha constructed specially for the Buddhist monks of Sri Lanka during the Ikshvaku period?', 'Ajanta ', 'Amarvati', 'Karle', 'Nagarjunakonda', 'D', 1),
(152, 11, 'Where had the Sailendra king Balaputradeva constructed a Buddhist Vihar in India?', 'Nalanda', 'Nagipatanam', 'Sarnath', 'Vikramasila', 'A', 0),
(156, 6, 'ggh', 'fy', 'hgjh', 'valids', 'hgf', 'hf', 0),
(157, 6, 'ggh', 'fy', 'hgjh', 'valids', 'hgf', 'hf', 0),
(158, 4, 'When a programming Language has the capacity to produce new datatype, it is called as,', 'Overloaded Language', 'Extensible Language', 'Encapsulated Language', 'Abstraction Language', 'B', 0),
(159, 4, ' The Default Parameter Passing Mechanism is called as', 'Call by value', 'Call by reference', 'Call by address', 'Call by name', 'A', 0);

-- --------------------------------------------------------

--
-- Table structure for table `registration`
--

CREATE TABLE `registration` (
  `apid` int(20) NOT NULL,
  `fullname` varchar(200) NOT NULL,
  `lastname` varchar(200) NOT NULL,
  `fathername` varchar(200) NOT NULL,
  `fatherlastname` varchar(200) NOT NULL,
  `mobile` varchar(100) NOT NULL,
  `email` varchar(200) NOT NULL,
  `bloodgroup` varchar(100) NOT NULL,
  `adhaarnumber` varchar(500) NOT NULL,
  `dateofapplication` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `registration`
--

INSERT INTO `registration` (`apid`, `fullname`, `lastname`, `fathername`, `fatherlastname`, `mobile`, `email`, `bloodgroup`, `adhaarnumber`, `dateofapplication`, `password`) VALUES
(2, 'ram', 'sharma', 'sham', 'sharma', '2147483647', 'ram@gmail.com', 'b', '67887655', '2019-11-06 12:42:24.159827', '67899'),
(3, 'ram', 'sharma', 'sham', 'sharma', '2147483647', 'naiya@gmail.com', 'b', '67887655', '2019-11-06 12:43:00.300855', '1234'),
(4, 'rohit', 'gupta', 'dash', 'rath', '2147483647', 'ram@gmail.com', 'b', '67887655', '11/06/19', '1234'),
(6, 'nitika', 'sharma', 'ashvin', 'kumar', '467788', 'n@gmail.com', 'a', '56765876', '11/08/19', '123'),
(8, 'anmol', 'kaur', 'tarsem', 'singh', '2147483647', 'anmol@gmail.com', 'A', '6547657', '11/08/19', '121'),
(9, 'anmol', 'kaur', 'Tarsem', 'singh', '9592231891', 'a@gmail.com', 'B', '67587687', '11/08/19', '111'),
(10, 'gagandeep', 'kaur', 'jarnail', 'singh', '7529804591', 'gagan@gmail.com', 'A', '6576568768', '11/08/19', '12345');

-- --------------------------------------------------------

--
-- Table structure for table `result`
--

CREATE TABLE `result` (
  `resultid` int(50) NOT NULL,
  `apid` int(50) NOT NULL,
  `date` date NOT NULL,
  `sectionid` int(100) NOT NULL,
  `totalquestion` int(100) NOT NULL,
  `totalmarks` float NOT NULL,
  `marksobtained` float NOT NULL,
  `passstatus` varchar(200) NOT NULL,
  `questionsattempted` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `result`
--

INSERT INTO `result` (`resultid`, `apid`, `date`, `sectionid`, `totalquestion`, `totalmarks`, `marksobtained`, `passstatus`, `questionsattempted`) VALUES
(9, 3, '2019-11-20', 3, 10, 50, 0, 'fail', 2),
(10, 3, '2019-11-20', 2, 10, 50, 0, 'fail', 2),
(11, 3, '2019-11-20', 2, 10, 50, 0, 'fail', 2),
(12, 3, '2019-11-20', 6, 10, 50, 0, 'fail', 3),
(13, 3, '2019-11-20', 1, 10, 50, 0, 'fail', 6),
(14, 3, '2019-11-20', 1, 10, 50, 0, 'fail', 6),
(15, 3, '2019-11-20', 1, 10, 50, 0, 'fail', 5),
(16, 3, '2019-11-20', 1, 10, 50, 0, 'fail', 2),
(17, 3, '2019-11-20', 1, 10, 50, 0, 'fail', 2),
(18, 3, '2019-11-20', 1, 10, 50, 0, 'fail', 2),
(19, 3, '2019-11-20', 4, 10, 50, 0, 'fail', 2),
(20, 3, '2019-11-20', 4, 10, 50, 0, 'fail', 2),
(21, 3, '2019-11-20', 1, 10, 50, 0, 'fail', 2),
(22, 3, '2019-11-20', 2, 10, 50, 0, 'fail', 2),
(23, 3, '2019-11-20', 2, 10, 50, 0, 'fail', 2),
(24, 3, '2019-11-20', 3, 10, 50, 0, 'fail', 3),
(25, 3, '2019-11-20', 1, 10, 50, 0, 'fail', 2),
(26, 3, '2019-11-20', 1, 10, 50, 0, 'fail', 2),
(28, 3, '2019-11-20', 1, 10, 50, 15, 'fail', 3),
(29, 3, '2019-11-20', 1, 10, 50, 15, 'fail', 3),
(30, 3, '2019-11-20', 4, 10, 50, 0, 'fail', 0),
(31, 3, '2019-11-20', 5, 10, 50, 5, 'fail', 2),
(32, 3, '2019-11-20', 4, 10, 50, 10, 'fail', 8),
(33, 6, '2019-11-20', 5, 10, 50, 5, 'fail', 4),
(34, 6, '2019-11-20', 5, 10, 50, 5, 'fail', 4),
(35, 6, '2019-11-20', 12, 10, 50, 5, 'fail', 3),
(36, 6, '2019-11-20', 12, 10, 50, 5, 'fail', 3),
(37, 6, '2019-11-20', 12, 10, 50, 5, 'fail', 3),
(38, 6, '2019-11-21', 4, 10, 50, 15, 'fail', 8),
(39, 6, '2019-11-21', 4, 10, 50, 0, 'fail', 10),
(40, 6, '2019-11-21', 4, 10, 50, 0, 'fail', 10),
(41, 6, '2019-11-21', 4, 10, 50, 0, 'fail', 10),
(42, 6, '2019-11-21', 4, 10, 50, 0, 'fail', 10),
(43, 3, '2019-11-21', 1, 10, 50, 40, 'Pass', 8),
(44, 3, '2019-11-21', 1, 10, 50, 40, 'Pass', 8),
(45, 3, '2019-11-21', 4, 10, 50, 15, 'fail', 10),
(46, 3, '2019-11-25', 4, 10, 50, 25, 'Pass', 10),
(47, 3, '2019-11-26', 1, 10, 50, 0, 'fail', 1),
(48, 3, '2019-11-26', 2, 10, 50, 0, 'fail', 0),
(49, 3, '2019-11-26', 1, 10, 50, 10, 'fail', 9);

-- --------------------------------------------------------

--
-- Table structure for table `resultdetail`
--

CREATE TABLE `resultdetail` (
  `detailid` int(11) NOT NULL,
  `resultid` int(11) NOT NULL,
  `qid` int(20) NOT NULL,
  `optiona` varchar(200) NOT NULL,
  `optionb` varchar(200) NOT NULL,
  `optionc` varchar(200) NOT NULL,
  `optiond` varchar(200) NOT NULL,
  `actualanswer` varchar(100) NOT NULL,
  `useranswer` varchar(500) NOT NULL,
  `status` varchar(200) NOT NULL,
  `marks` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `resultdetail`
--

INSERT INTO `resultdetail` (`detailid`, `resultid`, `qid`, `optiona`, `optionb`, `optionc`, `optiond`, `actualanswer`, `useranswer`, `status`, `marks`) VALUES
(1, 24, 36, ' Checking type compatibility', 'Suppressing duplication of error message', 'Storage allocation', 'All of the above', 'D', 'optiona', 'done', 0),
(2, 24, 37, 'Lexical analysis is breaking the input into tokens', 'Syntax analysis is for parsing the phrase', 'Syntax analysis is for analyzing the semantic', 'None of the above', 'C', 'optionc', 'done', 0),
(3, 24, 34, 'Build the symbol table', 'Construct the intermediate code', 'Separate mnemonic opcode and operand fields', 'None of the above', 'A, B, C', '', 'notdone', 0),
(4, 24, 39, 'Left-most derivation', 'Right-most derivation', 'Right-most derivation in reverse', 'Left-most derivation in reverse', 'A', '', 'notdone', 0),
(5, 24, 42, 'word processing', 'Virtual memory', 'compiling', 'multitasking', 'D', '', 'notdone', 0),
(6, 24, 40, 'Loader', 'Linker', 'Editor', 'Assembler', 'D', '', 'notdone', 0),
(7, 24, 33, 'Application Programmer', 'System Programmer', 'Operating system', 'All of the above', 'B', '', 'notdone', 0),
(8, 24, 38, 'Build the symbol table', 'Construct the machine code', ' Separate mnemonic opcode and operand fields.', 'None of the above', 'D', '', 'notdone', 0),
(9, 24, 35, 'Label and value', 'only value', 'mnemonics', 'Memory location', 'D', '', 'notdone', 0),
(10, 24, 32, 'Build the symbol table', 'Construct the intermediate code', 'Separate mnemonic opcode and operand fields', 'None of the above', 'D', 'optiond', 'done', 0),
(11, 25, 87, 'words are usually larger in microprocessors', 'words are shorter in microprocessors', 'microprocessor does not contain I/O devices', 'None of the above', 'C', 'optionc', 'done', 0),
(12, 25, 94, 'EXCLUSIVE-OR', 'EXCLUSIVE-NOR', 'NAND', 'NOR', 'A', 'optiona', 'done', 0),
(13, 25, 89, '1?0 = 1', '1?1?1 = 1', '1?1?0 = 1', '1?1 = 0', 'C', '', 'notdone', 0),
(14, 25, 86, '3m bits', 'm + n bits', '3m + n bits', '3m + n + 30 bits', 'D', '', 'notdone', 0),
(15, 25, 100, 'two', 'three', 'five ', 'six', 'C', '', 'notdone', 0),
(16, 25, 88, '5', '10', '8', '9', 'A', '', 'notdone', 0),
(17, 25, 90, '16', '32', '48', '64', 'D', '', 'notdone', 0),
(18, 25, 93, '2EE', '2FF', '4EF', '4FE', 'C', '', 'notdone', 0),
(19, 25, 85, 'FADED', 'AEOBE', 'ADOBE', 'ACABE', 'C', '', 'notdone', 0),
(20, 25, 91, 'No change', 'Set ', 'Reset', 'Toggle', 'D', '', 'notdone', 0),
(21, 26, 87, 'words are usually larger in microprocessors', 'words are shorter in microprocessors', 'microprocessor does not contain I/O devices', 'None of the above', 'C', 'optionc', 'done', 0),
(22, 26, 94, 'EXCLUSIVE-OR', 'EXCLUSIVE-NOR', 'NAND', 'NOR', 'A', 'optiona', 'done', 0),
(23, 26, 89, '1?0 = 1', '1?1?1 = 1', '1?1?0 = 1', '1?1 = 0', 'C', '', 'notdone', 0),
(24, 26, 86, '3m bits', 'm + n bits', '3m + n bits', '3m + n + 30 bits', 'D', '', 'notdone', 0),
(25, 26, 100, 'two', 'three', 'five ', 'six', 'C', '', 'notdone', 0),
(26, 26, 88, '5', '10', '8', '9', 'A', '', 'notdone', 0),
(27, 26, 90, '16', '32', '48', '64', 'D', '', 'notdone', 0),
(28, 26, 93, '2EE', '2FF', '4EF', '4FE', 'C', '', 'notdone', 0),
(29, 26, 85, 'FADED', 'AEOBE', 'ADOBE', 'ACABE', 'C', '', 'notdone', 0),
(30, 26, 91, 'No change', 'Set ', 'Reset', 'Toggle', 'D', '', 'notdone', 0),
(41, 28, 94, 'EXCLUSIVE-OR', 'EXCLUSIVE-NOR', 'NAND', 'NOR', 'A', 'A', 'done', 5),
(42, 28, 87, 'words are usually larger in microprocessors', 'words are shorter in microprocessors', 'microprocessor does not contain I/O devices', 'None of the above', 'C', 'C', 'done', 5),
(43, 28, 85, 'FADED', 'AEOBE', 'ADOBE', 'ACABE', 'C', 'C', 'done', 5),
(44, 28, 93, '2EE', '2FF', '4EF', '4FE', 'C', '', 'notdone', 0),
(45, 28, 92, 'Rare condition', 'Saturation', 'Delay', 'High impedence', 'B', '', 'notdone', 0),
(46, 28, 100, 'two', 'three', 'five ', 'six', 'C', '', 'notdone', 0),
(47, 28, 88, '5', '10', '8', '9', 'A', '', 'notdone', 0),
(48, 28, 90, '16', '32', '48', '64', 'D', '', 'notdone', 0),
(49, 28, 91, 'No change', 'Set ', 'Reset', 'Toggle', 'D', '', 'notdone', 0),
(50, 28, 89, '1?0 = 1', '1?1?1 = 1', '1?1?0 = 1', '1?1 = 0', 'C', '', 'notdone', 0),
(51, 29, 94, 'EXCLUSIVE-OR', 'EXCLUSIVE-NOR', 'NAND', 'NOR', 'A', 'A', 'done', 5),
(52, 29, 87, 'words are usually larger in microprocessors', 'words are shorter in microprocessors', 'microprocessor does not contain I/O devices', 'None of the above', 'C', 'C', 'done', 5),
(53, 29, 85, 'FADED', 'AEOBE', 'ADOBE', 'ACABE', 'C', 'C', 'done', 5),
(54, 29, 93, '2EE', '2FF', '4EF', '4FE', 'C', '', 'notdone', 0),
(55, 29, 92, 'Rare condition', 'Saturation', 'Delay', 'High impedence', 'B', '', 'notdone', 0),
(56, 29, 100, 'two', 'three', 'five ', 'six', 'C', '', 'notdone', 0),
(57, 29, 88, '5', '10', '8', '9', 'A', '', 'notdone', 0),
(58, 29, 90, '16', '32', '48', '64', 'D', '', 'notdone', 0),
(59, 29, 91, 'No change', 'Set ', 'Reset', 'Toggle', 'D', '', 'notdone', 0),
(60, 29, 89, '1?0 = 1', '1?1?1 = 1', '1?1?0 = 1', '1?1 = 0', 'C', '', 'notdone', 0),
(61, 30, 56, '*(ptrdata++)', '(*ptrdata)++', '*(ptrdata)++', 'Depends on compiler', 'A', '', 'notdone', 0),
(62, 30, 59, 'only 1', 'only 2', 'Neither 1 nor 2', 'Both 1 and 2', 'D', '', 'notdone', 0),
(63, 30, 54, '16 frames per second', '19 frames per second', '21 frames per second', '23 frames per second', 'A', '', 'notdone', 0),
(64, 30, 53, 'P only', 'Q only ', 'Both P and Q', 'Neither P nor Q', 'C', '', 'notdone', 0),
(65, 30, 58, '69', '95', '66', '59', '0', '', 'notdone', 0),
(66, 30, 55, 'S1 only', 'S2 only', 'Both S1 and S2', 'Neither S1 nor S2', 'B', '', 'notdone', 0),
(67, 30, 52, 'S1 and S2 only', 'S1 and S3 only', 'S2 and S3 only', 'All S1, S2, S3', '0', '', 'notdone', 0),
(68, 30, 62, '20:20', '18:18', '18:20', '20:18', 'C', '', 'notdone', 0),
(69, 31, 69, 'data gram approach to circuit switching at datalink layer', 'Virtual circuit approach to message switching at network layer', 'datagram approach to message switching at datalink layer', 'datagram approach to packet switching at network layer', 'A', 'A', 'done', 5),
(70, 31, 70, 'Setup, data transfer, teardown', 'Request-connect, data sending-acknowledgment, request-disconnect', 'end-connect, data transfer, request-disconnect', 'None of the above', 'C', 'B', 'done', 0),
(71, 31, 68, '1mm to 770nm', '1cm to 77nm', '10mm to 770nm', '10mm to 70mm', 'D', '', 'notdone', 0),
(72, 31, 72, 'nput ports, output ports, a router processor, a switching fabric', 'input ports, output ports, a router processor.', 'input ports, output ports, a switching fabric', 'input ports, output ports, a router processing, a switching fabric, a memory chip', 'A', '', 'notdone', 0),
(73, 31, 66, 'FDM', 'WDM', 'TDM', 'None of the above', 'C', '', 'notdone', 0),
(74, 31, 63, '1000KHz', '1100KHz', '1200KHz', '1300KHz', 'D', '', 'notdone', 0),
(75, 31, 67, 'Parabolic Dish antenna', 'Horn antenna', 'Both A and B', 'None of the above', 'C', '', 'notdone', 0),
(76, 31, 71, 'Resource allocation is done for a packet beforehand', 'Bandwidth is reserved on the links', 'Scheduled processing for a packet', 'Resource allocation is done on demand', 'D', '', 'notdone', 0),
(77, 32, 56, '*(ptrdata++)', '(*ptrdata)++', '*(ptrdata)++', 'Depends on compiler', 'A', 'C', 'done', 0),
(78, 32, 54, '16 frames per second', '19 frames per second', '21 frames per second', '23 frames per second', 'A', 'A', 'done', 5),
(79, 32, 53, 'P only', 'Q only ', 'Both P and Q', 'Neither P nor Q', 'C', 'A', 'done', 0),
(80, 32, 59, 'only 1', 'only 2', 'Neither 1 nor 2', 'Both 1 and 2', 'D', 'D', 'done', 5),
(81, 32, 58, '69', '95', '66', '59', '0', 'A', 'done', 0),
(82, 32, 55, 'S1 only', 'S2 only', 'Both S1 and S2', 'Neither S1 nor S2', 'B', 'C', 'done', 0),
(83, 32, 52, 'S1 and S2 only', 'S1 and S3 only', 'S2 and S3 only', 'All S1, S2, S3', '0', 'D', 'done', 0),
(84, 32, 62, '20:20', '18:18', '18:20', '20:18', 'C', 'D', 'done', 0),
(85, 33, 71, 'Resource allocation is done for a packet beforehand', 'Bandwidth is reserved on the links', 'Scheduled processing for a packet', 'Resource allocation is done on demand', 'D', 'C', 'done', 0),
(86, 33, 63, '1000KHz', '1100KHz', '1200KHz', '1300KHz', 'D', 'A', 'done', 0),
(87, 33, 67, 'Parabolic Dish antenna', 'Horn antenna', 'Both A and B', 'None of the above', 'C', 'C', 'done', 5),
(88, 33, 68, '1mm to 770nm', '1cm to 77nm', '10mm to 770nm', '10mm to 70mm', 'D', 'B', 'done', 0),
(89, 33, 69, 'data gram approach to circuit switching at datalink layer', 'Virtual circuit approach to message switching at network layer', 'datagram approach to message switching at datalink layer', 'datagram approach to packet switching at network layer', 'A', '', 'notdone', 0),
(90, 33, 72, 'nput ports, output ports, a router processor, a switching fabric', 'input ports, output ports, a router processor.', 'input ports, output ports, a switching fabric', 'input ports, output ports, a router processing, a switching fabric, a memory chip', 'A', '', 'notdone', 0),
(91, 33, 70, 'Setup, data transfer, teardown', 'Request-connect, data sending-acknowledgment, request-disconnect', 'end-connect, data transfer, request-disconnect', 'None of the above', 'C', '', 'notdone', 0),
(92, 33, 66, 'FDM', 'WDM', 'TDM', 'None of the above', 'C', '', 'notdone', 0),
(93, 34, 71, 'Resource allocation is done for a packet beforehand', 'Bandwidth is reserved on the links', 'Scheduled processing for a packet', 'Resource allocation is done on demand', 'D', 'C', 'done', 0),
(94, 34, 63, '1000KHz', '1100KHz', '1200KHz', '1300KHz', 'D', 'A', 'done', 0),
(95, 34, 67, 'Parabolic Dish antenna', 'Horn antenna', 'Both A and B', 'None of the above', 'C', 'C', 'done', 5),
(96, 34, 68, '1mm to 770nm', '1cm to 77nm', '10mm to 770nm', '10mm to 70mm', 'D', 'B', 'done', 0),
(97, 34, 69, 'data gram approach to circuit switching at datalink layer', 'Virtual circuit approach to message switching at network layer', 'datagram approach to message switching at datalink layer', 'datagram approach to packet switching at network layer', 'A', '', 'notdone', 0),
(98, 34, 72, 'nput ports, output ports, a router processor, a switching fabric', 'input ports, output ports, a router processor.', 'input ports, output ports, a switching fabric', 'input ports, output ports, a router processing, a switching fabric, a memory chip', 'A', '', 'notdone', 0),
(99, 34, 70, 'Setup, data transfer, teardown', 'Request-connect, data sending-acknowledgment, request-disconnect', 'end-connect, data transfer, request-disconnect', 'None of the above', 'C', '', 'notdone', 0),
(100, 34, 66, 'FDM', 'WDM', 'TDM', 'None of the above', 'C', '', 'notdone', 0),
(101, 35, 102, 'Tara Chand credits Mughals for steamrolling the “old plurality of political units”.', 'R C majumdar refuses to endorse P. N. Oak’s fantasies about the Taj Mahal being a “Hindu” Monument.', 'Tarikh-i-Alfi was written at the instance of Aurangzeb.', 'Shaikh Tajuddin, a protagonist of Ibn al Arabi introduced his principle concepts in Akbar’s court at Fatehpur Sikri.', 'C', 'C', 'done', 5),
(102, 35, 105, '1,2,3', '2,3,4', '1,3,4', '1,3', 'C', 'A', 'done', 0),
(103, 35, 110, '1,2,3,4', '2,3,4,1', '3,4,2,1', '4,2,3,1', 'C', 'D', 'done', 0),
(104, 35, 106, 'He viewed Babur’s invading army as a “marriage party of sin”.', 'The Brahman and Khatri are not a part of the oppressive establishment', 'It was his conviction that god has no ‘caste’; he gives no consideration to caste.', 'Guru Nanak was thoroughly familiar with the politico administrative arrangements made by the Afghan rulers, particularly in Punjab.', 'C', '', 'notdone', 0),
(105, 35, 103, '1707', '1877', '1699', '1609', 'C', '', 'notdone', 0),
(106, 35, 108, 'Wazir', 'Naib', 'Qazi', 'Ariz-i Mamaliq', 'A', '', 'notdone', 0),
(107, 35, 112, 'Tarikh-i Firishta', 'Tabaqat-i Akbari', 'Humayunnama', 'Tarikh-i Shershahi', 'B', '', 'notdone', 0),
(108, 35, 107, 'Both ? and ? are true and ? is the correct explanation of ?', '? is true but ? is false', 'Both ? and ? are true but ? is NOT the correct explanation of ?', '? is false but ? is true', 'C', '', 'notdone', 0),
(109, 35, 104, 'Karori  —  A revenue official in the Mughal administration', 'Khalisa  —  Land was managed directly by the state', 'Tarafdar  —  Provincial Governors under the Bahmani Sultanate', 'Paibaqi  —  Assignment of revenue in Jagir', 'D', '', 'notdone', 0),
(110, 35, 111, 'Isan Daulat Begum', 'Mubarika Begum', 'Qutlugh Nigar Begum', 'Dildar Begum', 'A', '', 'notdone', 0),
(111, 36, 102, 'Tara Chand credits Mughals for steamrolling the “old plurality of political units”.', 'R C majumdar refuses to endorse P. N. Oak’s fantasies about the Taj Mahal being a “Hindu” Monument.', 'Tarikh-i-Alfi was written at the instance of Aurangzeb.', 'Shaikh Tajuddin, a protagonist of Ibn al Arabi introduced his principle concepts in Akbar’s court at Fatehpur Sikri.', 'C', 'C', 'done', 5),
(112, 36, 105, '1,2,3', '2,3,4', '1,3,4', '1,3', 'C', 'A', 'done', 0),
(113, 36, 110, '1,2,3,4', '2,3,4,1', '3,4,2,1', '4,2,3,1', 'C', 'D', 'done', 0),
(114, 36, 106, 'He viewed Babur’s invading army as a “marriage party of sin”.', 'The Brahman and Khatri are not a part of the oppressive establishment', 'It was his conviction that god has no ‘caste’; he gives no consideration to caste.', 'Guru Nanak was thoroughly familiar with the politico administrative arrangements made by the Afghan rulers, particularly in Punjab.', 'C', '', 'notdone', 0),
(115, 36, 103, '1707', '1877', '1699', '1609', 'C', '', 'notdone', 0),
(116, 36, 108, 'Wazir', 'Naib', 'Qazi', 'Ariz-i Mamaliq', 'A', '', 'notdone', 0),
(117, 36, 112, 'Tarikh-i Firishta', 'Tabaqat-i Akbari', 'Humayunnama', 'Tarikh-i Shershahi', 'B', '', 'notdone', 0),
(118, 36, 107, 'Both ? and ? are true and ? is the correct explanation of ?', '? is true but ? is false', 'Both ? and ? are true but ? is NOT the correct explanation of ?', '? is false but ? is true', 'C', '', 'notdone', 0),
(119, 36, 104, 'Karori  —  A revenue official in the Mughal administration', 'Khalisa  —  Land was managed directly by the state', 'Tarafdar  —  Provincial Governors under the Bahmani Sultanate', 'Paibaqi  —  Assignment of revenue in Jagir', 'D', '', 'notdone', 0),
(120, 36, 111, 'Isan Daulat Begum', 'Mubarika Begum', 'Qutlugh Nigar Begum', 'Dildar Begum', 'A', '', 'notdone', 0),
(121, 37, 102, 'Tara Chand credits Mughals for steamrolling the “old plurality of political units”.', 'R C majumdar refuses to endorse P. N. Oak’s fantasies about the Taj Mahal being a “Hindu” Monument.', 'Tarikh-i-Alfi was written at the instance of Aurangzeb.', 'Shaikh Tajuddin, a protagonist of Ibn al Arabi introduced his principle concepts in Akbar’s court at Fatehpur Sikri.', 'C', 'C', 'done', 5),
(122, 37, 105, '1,2,3', '2,3,4', '1,3,4', '1,3', 'C', 'A', 'done', 0),
(123, 37, 110, '1,2,3,4', '2,3,4,1', '3,4,2,1', '4,2,3,1', 'C', 'D', 'done', 0),
(124, 37, 106, 'He viewed Babur’s invading army as a “marriage party of sin”.', 'The Brahman and Khatri are not a part of the oppressive establishment', 'It was his conviction that god has no ‘caste’; he gives no consideration to caste.', 'Guru Nanak was thoroughly familiar with the politico administrative arrangements made by the Afghan rulers, particularly in Punjab.', 'C', '', 'notdone', 0),
(125, 37, 103, '1707', '1877', '1699', '1609', 'C', '', 'notdone', 0),
(126, 37, 108, 'Wazir', 'Naib', 'Qazi', 'Ariz-i Mamaliq', 'A', '', 'notdone', 0),
(127, 37, 112, 'Tarikh-i Firishta', 'Tabaqat-i Akbari', 'Humayunnama', 'Tarikh-i Shershahi', 'B', '', 'notdone', 0),
(128, 37, 107, 'Both ? and ? are true and ? is the correct explanation of ?', '? is true but ? is false', 'Both ? and ? are true but ? is NOT the correct explanation of ?', '? is false but ? is true', 'C', '', 'notdone', 0),
(129, 37, 104, 'Karori  —  A revenue official in the Mughal administration', 'Khalisa  —  Land was managed directly by the state', 'Tarafdar  —  Provincial Governors under the Bahmani Sultanate', 'Paibaqi  —  Assignment of revenue in Jagir', 'D', '', 'notdone', 0),
(130, 37, 111, 'Isan Daulat Begum', 'Mubarika Begum', 'Qutlugh Nigar Begum', 'Dildar Begum', 'A', '', 'notdone', 0),
(131, 38, 55, 'S1 only', 'S2 only', 'Both S1 and S2', 'Neither S1 nor S2', 'B', 'A', 'done', 0),
(132, 38, 53, 'P only', 'Q only ', 'Both P and Q', 'Neither P nor Q', 'C', 'C', 'done', 5),
(133, 38, 54, '16 frames per second', '19 frames per second', '21 frames per second', '23 frames per second', 'A', 'A', 'done', 5),
(134, 38, 62, '20:20', '18:18', '18:20', '20:18', 'C', 'C', 'done', 5),
(135, 38, 59, 'only 1', 'only 2', 'Neither 1 nor 2', 'Both 1 and 2', 'D', 'B', 'done', 0),
(136, 38, 56, '*(ptrdata++)', '(*ptrdata)++', '*(ptrdata)++', 'Depends on compiler', 'A', 'C', 'done', 0),
(137, 38, 52, 'S1 and S2 only', 'S1 and S3 only', 'S2 and S3 only', 'All S1, S2, S3', '0', 'C', 'done', 0),
(138, 38, 58, '69', '95', '66', '59', '0', 'D', 'done', 0),
(139, 39, 158, 'Overloaded Language', 'Extensible Language', 'Encapsulated Language', 'Abstraction Language', 'Extensible Language', 'B', 'done', 0),
(140, 39, 53, 'P only', 'Q only ', 'Both P and Q', 'Neither P nor Q', 'Both P and Q', 'C', 'done', 0),
(141, 39, 56, '*(ptrdata++)', '(*ptrdata)++', '*(ptrdata)++', 'Depends on compiler', '*(ptrdata++)', 'C', 'done', 0),
(142, 39, 62, '20:20', '18:18', '18:20', '20:18', '18:20', 'A', 'done', 0),
(143, 39, 55, 'S1 only', 'S2 only', 'Both S1 and S2', 'Neither S1 nor S2', 'S2 only', 'B', 'done', 0),
(144, 39, 59, 'only 1', 'only 2', 'Neither 1 nor 2', 'Both 1 and 2', 'Both 1 and 2', 'C', 'done', 0),
(145, 39, 159, 'Call by value', 'Call by reference', 'Call by address', 'Call by name', 'Call by value', 'A', 'done', 0),
(146, 39, 54, '16 frames per second', '19 frames per second', '21 frames per second', '23 frames per second', '16 frames per second', 'C', 'done', 0),
(147, 39, 58, '69', '95', '66', '59', '59', 'D', 'done', 0),
(148, 39, 52, 'S1 and S2 only', 'S1 and S3 only', 'S2 and S3 only', 'All S1, S2, S3', 'S1 and S2 only', 'D', 'done', 0),
(149, 40, 158, 'Overloaded Language', 'Extensible Language', 'Encapsulated Language', 'Abstraction Language', 'Extensible Language', 'B', 'done', 0),
(150, 40, 53, 'P only', 'Q only ', 'Both P and Q', 'Neither P nor Q', 'Both P and Q', 'C', 'done', 0),
(151, 40, 56, '*(ptrdata++)', '(*ptrdata)++', '*(ptrdata)++', 'Depends on compiler', '*(ptrdata++)', 'C', 'done', 0),
(152, 40, 62, '20:20', '18:18', '18:20', '20:18', '18:20', 'A', 'done', 0),
(153, 40, 55, 'S1 only', 'S2 only', 'Both S1 and S2', 'Neither S1 nor S2', 'S2 only', 'B', 'done', 0),
(154, 40, 59, 'only 1', 'only 2', 'Neither 1 nor 2', 'Both 1 and 2', 'Both 1 and 2', 'C', 'done', 0),
(155, 40, 159, 'Call by value', 'Call by reference', 'Call by address', 'Call by name', 'Call by value', 'A', 'done', 0),
(156, 40, 54, '16 frames per second', '19 frames per second', '21 frames per second', '23 frames per second', '16 frames per second', 'C', 'done', 0),
(157, 40, 58, '69', '95', '66', '59', '59', 'D', 'done', 0),
(158, 40, 52, 'S1 and S2 only', 'S1 and S3 only', 'S2 and S3 only', 'All S1, S2, S3', 'S1 and S2 only', 'D', 'done', 0),
(159, 41, 58, '69', '95', '66', '59', '59', 'D', 'done', 0),
(160, 41, 159, 'Call by value', 'Call by reference', 'Call by address', 'Call by name', 'Call by value', 'A', 'done', 0),
(161, 41, 55, 'S1 only', 'S2 only', 'Both S1 and S2', 'Neither S1 nor S2', 'S2 only', 'B', 'done', 0),
(162, 41, 62, '20:20', '18:18', '18:20', '20:18', '18:20', 'C', 'done', 0),
(163, 41, 59, 'only 1', 'only 2', 'Neither 1 nor 2', 'Both 1 and 2', 'Both 1 and 2', 'B', 'done', 0),
(164, 41, 54, '16 frames per second', '19 frames per second', '21 frames per second', '23 frames per second', '16 frames per second', 'A', 'done', 0),
(165, 41, 53, 'P only', 'Q only ', 'Both P and Q', 'Neither P nor Q', 'Both P and Q', 'C', 'done', 0),
(166, 41, 158, 'Overloaded Language', 'Extensible Language', 'Encapsulated Language', 'Abstraction Language', 'Extensible Language', 'B', 'done', 0),
(167, 41, 56, '*(ptrdata++)', '(*ptrdata)++', '*(ptrdata)++', 'Depends on compiler', '*(ptrdata++)', 'C', 'done', 0),
(168, 41, 52, 'S1 and S2 only', 'S1 and S3 only', 'S2 and S3 only', 'All S1, S2, S3', 'S1 and S2 only', 'A', 'done', 0),
(169, 42, 58, '69', '95', '66', '59', '59', 'D', 'done', 0),
(170, 42, 159, 'Call by value', 'Call by reference', 'Call by address', 'Call by name', 'Call by value', 'A', 'done', 0),
(171, 42, 55, 'S1 only', 'S2 only', 'Both S1 and S2', 'Neither S1 nor S2', 'S2 only', 'B', 'done', 0),
(172, 42, 62, '20:20', '18:18', '18:20', '20:18', '18:20', 'C', 'done', 0),
(173, 42, 59, 'only 1', 'only 2', 'Neither 1 nor 2', 'Both 1 and 2', 'Both 1 and 2', 'B', 'done', 0),
(174, 42, 54, '16 frames per second', '19 frames per second', '21 frames per second', '23 frames per second', '16 frames per second', 'A', 'done', 0),
(175, 42, 53, 'P only', 'Q only ', 'Both P and Q', 'Neither P nor Q', 'Both P and Q', 'C', 'done', 0),
(176, 42, 158, 'Overloaded Language', 'Extensible Language', 'Encapsulated Language', 'Abstraction Language', 'Extensible Language', 'B', 'done', 0),
(177, 42, 56, '*(ptrdata++)', '(*ptrdata)++', '*(ptrdata)++', 'Depends on compiler', '*(ptrdata++)', 'C', 'done', 0),
(178, 42, 52, 'S1 and S2 only', 'S1 and S3 only', 'S2 and S3 only', 'All S1, S2, S3', 'S1 and S2 only', 'A', 'done', 0),
(179, 43, 85, 'FADED', 'AEOBE', 'ADOBE', 'ACABE', 'C', 'C', 'done', 5),
(180, 43, 90, '16', '32', '48', '64', 'D', 'D', 'done', 5),
(181, 43, 92, 'Rare condition', 'Saturation', 'Delay', 'High impedence', 'B', 'B', 'done', 5),
(182, 43, 88, '5', '10', '8', '9', 'A', 'A', 'done', 5),
(183, 43, 94, 'EXCLUSIVE-OR', 'EXCLUSIVE-NOR', 'NAND', 'NOR', 'A', 'A', 'done', 5),
(184, 43, 91, 'No change', 'Set ', 'Reset', 'Toggle', 'D', 'D', 'done', 5),
(185, 43, 89, '1?0 = 1', '1?1?1 = 1', '1?1?0 = 1', '1?1 = 0', 'C', 'C', 'done', 5),
(186, 43, 93, '2EE', '2FF', '4EF', '4FE', 'C', 'C', 'done', 5),
(187, 43, 87, 'words are usually larger in microprocessors', 'words are shorter in microprocessors', 'microprocessor does not contain I/O devices', 'None of the above', 'C', '', 'notdone', 0),
(188, 43, 86, '3m bits', 'm + n bits', '3m + n bits', '3m + n + 30 bits', 'D', '', 'notdone', 0),
(189, 44, 85, 'FADED', 'AEOBE', 'ADOBE', 'ACABE', 'C', 'C', 'done', 5),
(190, 44, 90, '16', '32', '48', '64', 'D', 'D', 'done', 5),
(191, 44, 92, 'Rare condition', 'Saturation', 'Delay', 'High impedence', 'B', 'B', 'done', 5),
(192, 44, 88, '5', '10', '8', '9', 'A', 'A', 'done', 5),
(193, 44, 94, 'EXCLUSIVE-OR', 'EXCLUSIVE-NOR', 'NAND', 'NOR', 'A', 'A', 'done', 5),
(194, 44, 91, 'No change', 'Set ', 'Reset', 'Toggle', 'D', 'D', 'done', 5),
(195, 44, 89, '1?0 = 1', '1?1?1 = 1', '1?1?0 = 1', '1?1 = 0', 'C', 'C', 'done', 5),
(196, 44, 93, '2EE', '2FF', '4EF', '4FE', 'C', 'C', 'done', 5),
(197, 44, 87, 'words are usually larger in microprocessors', 'words are shorter in microprocessors', 'microprocessor does not contain I/O devices', 'None of the above', 'C', '', 'notdone', 0),
(198, 44, 86, '3m bits', 'm + n bits', '3m + n bits', '3m + n + 30 bits', 'D', '', 'notdone', 0),
(199, 45, 62, '20:20', '18:18', '18:20', '20:18', '18:20', 'C', 'done', 0),
(200, 45, 52, 'S1 and S2 only', 'S1 and S3 only', 'S2 and S3 only', 'All S1, S2, S3', 'A', 'A', 'done', 5),
(201, 45, 56, '*(ptrdata++)', '(*ptrdata)++', '*(ptrdata)++', 'Depends on compiler', 'A', 'C', 'done', 0),
(202, 45, 59, 'only 1', 'only 2', 'Neither 1 nor 2', 'Both 1 and 2', 'Both 1 and 2', 'A', 'done', 0),
(203, 45, 53, 'P only', 'Q only ', 'Both P and Q', 'Neither P nor Q', 'C', 'C', 'done', 5),
(204, 45, 54, '16 frames per second', '19 frames per second', '21 frames per second', '23 frames per second', 'A', 'C', 'done', 0),
(205, 45, 158, 'Overloaded Language', 'Extensible Language', 'Encapsulated Language', 'Abstraction Language', 'Extensible Language', 'D', 'done', 0),
(206, 45, 58, '69', '95', '66', '59', '59', 'B', 'done', 0),
(207, 45, 55, 'S1 only', 'S2 only', 'Both S1 and S2', 'Neither S1 nor S2', 'B', 'B', 'done', 5),
(208, 45, 159, 'Call by value', 'Call by reference', 'Call by address', 'Call by name', 'Call by value', 'A', 'done', 0),
(209, 46, 62, '20:20', '18:18', '18:20', '20:18', 'C', 'A', 'done', 0),
(210, 46, 158, 'Overloaded Language', 'Extensible Language', 'Encapsulated Language', 'Abstraction Language', 'B', 'B', 'done', 5),
(211, 46, 55, 'S1 only', 'S2 only', 'Both S1 and S2', 'Neither S1 nor S2', 'B', 'C', 'done', 0),
(212, 46, 58, '69', '95', '66', '59', 'D', 'D', 'done', 5),
(213, 46, 53, 'P only', 'Q only ', 'Both P and Q', 'Neither P nor Q', 'C', 'B', 'done', 0),
(214, 46, 159, 'Call by value', 'Call by reference', 'Call by address', 'Call by name', 'A', 'A', 'done', 5),
(215, 46, 54, '16 frames per second', '19 frames per second', '21 frames per second', '23 frames per second', 'A', 'A', 'done', 5),
(216, 46, 56, '*(ptrdata++)', '(*ptrdata)++', '*(ptrdata)++', 'Depends on compiler', 'A', 'A', 'done', 5),
(217, 46, 52, 'S1 and S2 only', 'S1 and S3 only', 'S2 and S3 only', 'All S1, S2, S3', 'A', 'B', 'done', 0),
(218, 46, 59, 'only 1', 'only 2', 'Neither 1 nor 2', 'Both 1 and 2', 'D', 'B', 'done', 0),
(219, 47, 88, '5', '10', '8', '9', 'A', 'C', 'done', 0),
(220, 47, 100, 'two', 'three', 'five ', 'six', 'C', '', 'notdone', 0),
(221, 47, 86, '3m bits', 'm + n bits', '3m + n bits', '3m + n + 30 bits', 'D', '', 'notdone', 0),
(222, 47, 93, '2EE', '2FF', '4EF', '4FE', 'C', '', 'notdone', 0),
(223, 47, 91, 'No change', 'Set ', 'Reset', 'Toggle', 'D', '', 'notdone', 0),
(224, 47, 87, 'words are usually larger in microprocessors', 'words are shorter in microprocessors', 'microprocessor does not contain I/O devices', 'None of the above', 'C', '', 'notdone', 0),
(225, 47, 94, 'EXCLUSIVE-OR', 'EXCLUSIVE-NOR', 'NAND', 'NOR', 'A', '', 'notdone', 0),
(226, 47, 89, '1?0 = 1', '1?1?1 = 1', '1?1?0 = 1', '1?1 = 0', 'C', '', 'notdone', 0),
(227, 47, 85, 'FADED', 'AEOBE', 'ADOBE', 'ACABE', 'C', '', 'notdone', 0),
(228, 47, 92, 'Rare condition', 'Saturation', 'Delay', 'High impedence', 'B', '', 'notdone', 0),
(229, 48, 83, '2 and 2 respectively', '1 and 1 respectively', '1 and 2 respectively', '2 and 1 respectively', 'C', '', 'notdone', 0),
(230, 48, 82, 'Only 1', 'Only 2', 'Both 1 and 2', 'Neither 1 nor 2', 'C', '', 'notdone', 0),
(231, 48, 80, 'Dependency preserving but not lossless join', 'Dependency preserving and lossless join C', 'Lossless join but not dependency preserving', 'Neither dependency preserving nor lossless join', 'A', '', 'notdone', 0),
(232, 48, 76, 'LOOKUP', 'INSERT', 'MODIFY', 'CHANGE', 'C', '', 'notdone', 0),
(233, 48, 75, 'Functional dependencies', 'Data integrity', 'Refrential integrity', 'Normal forms', 'D', '', 'notdone', 0),
(234, 48, 73, 'only (a) is true', 'only (b) is true', 'Both (a) and (b) are true', 'Neither (a) nor (b) are true', 'B', '', 'notdone', 0),
(235, 48, 74, 'SELECT', 'CREATE', 'AVG', 'MODIFY', 'C', '', 'notdone', 0),
(236, 48, 78, '(A), (B), and (C) are true', '(A) false, (B) and (C) are true', '(A) and (B) are true , (C) true', '(A),(B) and (C) are false', 'C', '', 'notdone', 0),
(237, 48, 77, '20,20', '3,20', '3,4', '20,4', 'B', '', 'notdone', 0),
(238, 48, 81, '1 and 2', '1 and 4', '1, 2 and 3 only', '1, 2 and 4', 'C', '', 'notdone', 0),
(239, 49, 94, 'EXCLUSIVE-OR', 'EXCLUSIVE-NOR', 'NAND', 'NOR', 'A', 'B', 'done', 0),
(240, 49, 88, '5', '10', '8', '9', 'A', 'A', 'done', 5),
(241, 49, 91, 'No change', 'Set ', 'Reset', 'Toggle', 'D', 'C', 'done', 0),
(242, 49, 100, 'two', 'three', 'five ', 'six', 'C', 'C', 'done', 5),
(243, 49, 92, 'Rare condition', 'Saturation', 'Delay', 'High impedence', 'B', 'D', 'done', 0),
(244, 49, 87, 'words are usually larger in microprocessors', 'words are shorter in microprocessors', 'microprocessor does not contain I/O devices', 'None of the above', 'C', '', 'notdone', 0),
(245, 49, 89, '1?0 = 1', '1?1?1 = 1', '1?1?0 = 1', '1?1 = 0', 'C', 'B', 'done', 0),
(246, 49, 90, '16', '32', '48', '64', 'D', 'A', 'done', 0),
(247, 49, 86, '3m bits', 'm + n bits', '3m + n bits', '3m + n + 30 bits', 'D', 'A', 'done', 0),
(248, 49, 85, 'FADED', 'AEOBE', 'ADOBE', 'ACABE', 'C', 'B', 'done', 0);

-- --------------------------------------------------------

--
-- Table structure for table `sections`
--

CREATE TABLE `sections` (
  `sectionid` int(11) NOT NULL,
  `sectionname` varchar(500) NOT NULL,
  `maxques` int(11) NOT NULL,
  `marks` int(11) NOT NULL,
  `negmarks` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sections`
--

INSERT INTO `sections` (`sectionid`, `sectionname`, `maxques`, `marks`, `negmarks`) VALUES
(1, 'Computer Arithmetic', 10, 10, -0.5),
(2, 'Relational Database design and sql', 10, 10, -0.5),
(3, 'System Software and Compilers', 10, 10, -0.5),
(4, 'programming in C and C++', 10, 10, -0.5),
(5, 'Computer Networks', 10, 10, -0.5),
(6, 'Digital Electronics', 10, 10, -0.5),
(7, 'Analogue Electronics', 10, 10, -0.5),
(8, 'Microelectronics', 10, 10, -0.5),
(9, 'Power Electronics', 10, 10, -0.5),
(10, 'Semiconductor devices', 10, 10, -0.5),
(11, 'Society and culture', 10, 10, -0.5),
(12, 'Medieval Indian History', 10, 10, -0.5),
(13, 'Modern Indian History', 10, 10, -0.5),
(14, 'From state to empire', 10, 10, -0.5),
(15, 'Vedic Period', 10, 10, -0.5);

-- --------------------------------------------------------

--
-- Table structure for table `streams`
--

CREATE TABLE `streams` (
  `streamid` int(50) NOT NULL,
  `streamname` varchar(200) NOT NULL,
  `description` varchar(500) NOT NULL,
  `passper` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `streams`
--

INSERT INTO `streams` (`streamid`, `streamname`, `description`, `passper`) VALUES
(7, 'Computer-science', 'It include five sections to check applicant knowledge in each section', 68),
(11, 'Electronics science', 'It include five sections to check applicant knowledge in each section', 66),
(12, 'History', 'It include five sections to check applicant knowledge in each section', 66);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`qid`),
  ADD KEY `sectionid` (`sectionid`);

--
-- Indexes for table `registration`
--
ALTER TABLE `registration`
  ADD PRIMARY KEY (`apid`);

--
-- Indexes for table `result`
--
ALTER TABLE `result`
  ADD PRIMARY KEY (`resultid`),
  ADD KEY `foreignkey` (`apid`),
  ADD KEY `foreignkey2` (`sectionid`);

--
-- Indexes for table `resultdetail`
--
ALTER TABLE `resultdetail`
  ADD PRIMARY KEY (`detailid`),
  ADD KEY `resultid` (`resultid`),
  ADD KEY `foreignkey4` (`qid`);

--
-- Indexes for table `sections`
--
ALTER TABLE `sections`
  ADD PRIMARY KEY (`sectionid`);

--
-- Indexes for table `streams`
--
ALTER TABLE `streams`
  ADD PRIMARY KEY (`streamid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `questions`
--
ALTER TABLE `questions`
  MODIFY `qid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=160;

--
-- AUTO_INCREMENT for table `registration`
--
ALTER TABLE `registration`
  MODIFY `apid` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `result`
--
ALTER TABLE `result`
  MODIFY `resultid` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT for table `resultdetail`
--
ALTER TABLE `resultdetail`
  MODIFY `detailid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=249;

--
-- AUTO_INCREMENT for table `sections`
--
ALTER TABLE `sections`
  MODIFY `sectionid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `streams`
--
ALTER TABLE `streams`
  MODIFY `streamid` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `questions`
--
ALTER TABLE `questions`
  ADD CONSTRAINT `fksecquestions` FOREIGN KEY (`sectionid`) REFERENCES `sections` (`sectionid`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `result`
--
ALTER TABLE `result`
  ADD CONSTRAINT `foreignkey2` FOREIGN KEY (`sectionid`) REFERENCES `sections` (`sectionid`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `resultdetail`
--
ALTER TABLE `resultdetail`
  ADD CONSTRAINT `foreignkey3` FOREIGN KEY (`resultid`) REFERENCES `result` (`resultid`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `foreignkey4` FOREIGN KEY (`qid`) REFERENCES `questions` (`qid`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
