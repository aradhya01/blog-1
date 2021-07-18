-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 18, 2021 at 08:21 PM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 7.3.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `codewitharadhya`
--

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `sno` int(50) NOT NULL,
  `name` text NOT NULL,
  `email` varchar(50) NOT NULL,
  `phone_num` varchar(50) NOT NULL,
  `msg` text NOT NULL,
  `date` datetime(6) NOT NULL DEFAULT current_timestamp(6)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`sno`, `name`, `email`, `phone_num`, `msg`, `date`) VALUES
(1, 'fisrt post', 'try@gmail.com', '123456', 'first post', '0000-00-00 00:00:00.000000'),
(4, 'Aradhya Mishra', 'sve@gm', '07518279485', 'hi', '2021-04-06 11:45:58.280481'),
(10, 'ara', 'aradhyamishra00@gmail.com', '21578298', 'hello', '2021-04-10 17:58:45.060356'),
(11, 'ara', 'aradhyamishra00@gmail.com', '21578298', 'hello', '2021-04-10 18:10:05.754212'),
(12, 'ara', 'aradhyamishra00@gmail.com', '21578298', 'hello', '2021-04-10 18:17:32.093880'),
(13, 'ara', 'aradhyamishra00@gmail.com', '21578298', 'hello', '2021-04-10 18:29:40.118455'),
(14, 'Aradhya Mishra', 'btbtl18078_aradhya@banasthali.in', '07518279485', 'helllooo', '2021-04-12 18:23:17.687123'),
(15, 'Aradhya Mishra', 'sve@gm', '07518279485', 'hey this is check message', '2021-06-26 19:30:14.084936'),
(16, 'Aradhya Mishra', 'sve@gm', '07518279485', 'hey this is check message', '2021-06-26 19:30:57.660532'),
(17, 'Aradhya Mishra', 'sve@gm', '07518279485', 'hey this is test message', '2021-07-04 22:07:48.054955'),
(18, 'Aradhya Mishra', 'sve@gm', '07518279485', 'hey', '2021-07-14 17:38:02.756962'),
(19, 'Aradhya Mishra', 'btbtl18078_aradhya@banasthali.in', '07518279485', 'hey\r\n', '2021-07-14 18:05:31.862210'),
(20, 'Aradhya Mishra', 'btbtl18078_aradhya@banasthali.in', '07518279485', 'hey\r\n', '2021-07-14 18:06:13.947414'),
(21, 'Aradhya Mishra', 'btbtl18078_aradhya@banasthali.in', '07518279485', 'hey\r\n', '2021-07-14 18:08:56.627655');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `sno` int(11) NOT NULL,
  `title` text NOT NULL,
  `tagline` text NOT NULL,
  `slug` varchar(25) NOT NULL,
  `content` text NOT NULL,
  `img_file` varchar(12) NOT NULL,
  `date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`sno`, `title`, `tagline`, `slug`, `content`, `img_file`, `date`) VALUES
(2, 'This is second post', 'Coolest post ever', 'second-post', 'Synopsis\r\nA Jinja template is simply a text file. Jinja can generate any text-based format (HTML, XML, CSV, LaTeX, etc.). A Jinja template doesn’t need to have a specific extension: .html, .xml, or any other extension is just fine.\r\n\r\nA template contains variables and/or expressions, which get replaced with values when a template is rendered; and tags, which control the logic of the template. The template syntax is heavily inspired by Django and Python.', 'about-bg.jpg', '2021-04-10 23:20:51'),
(3, 'Variables', 'Variables tagline', 'third-post', 'Template variables are defined by the context dictionary passed to the template.\r\n\r\nYou can mess around with the variables in templates provided they are passed in by the application. Variables may have attributes or elements on them you can access too. What attributes a variable has depends heavily on the application providing that variable.\r\n\r\nYou can use a dot (.) to access attributes of a variable in addition to the standard Python __getitem__ “subscript” syntax ([]).\r\n\r\nThe following lines do the same thing:\r\n\r\n{{ foo.bar }}\r\n{{ foo[\'bar\'] }}\r\nIt’s important to know that the outer double-curly braces are not part of the variable, but the print statement. If you access variables inside tags don’t put the braces around them.\r\n\r\nIf a variable or attribute does not exist, you will get back an undefined value. What you can do with that kind of value depends on the application configuration: the default behavior is to evaluate to an empty string if printed or iterated over, and to fail for every other operation.\r\n\r\nImplementation\r\nFor the sake of convenience, foo.bar in Jinja does the following things on the Python layer:\r\n\r\ncheck for an attribute called bar on foo (getattr(foo, \'bar\'))\r\n\r\nif there is not, check for an item \'bar\' in foo (foo.__getitem__(\'bar\'))\r\n\r\nif there is not, return an undefined object.\r\n\r\nfoo[\'bar\'] works mostly the same with a small difference in sequence:\r\n\r\ncheck for an item \'bar\' in foo. (foo.__getitem__(\'bar\'))\r\n\r\nif there is not, check for an attribute called bar on foo. (getattr(foo, \'bar\'))\r\n\r\nif there is not, return an undefined object.\r\n\r\nThis is important if an object has an item and attribute with the same name. Additionally, the attr() filter only looks up attributes.', 'about-bg.jpg', '2021-04-10 23:50:02'),
(4, 'Filters', 'Filter\'s tagline', 'fourth-post', 'Variables can be modified by filters. Filters are separated from the variable by a pipe symbol (|) and may have optional arguments in parentheses. Multiple filters can be chained. The output of one filter is applied to the next.\r\n\r\nFor example, {{ name|striptags|title }} will remove all HTML Tags from variable name and title-case the output (title(striptags(name))).\r\n\r\nFilters that accept arguments have parentheses around the arguments, just like a function call. For example: {{ listx|join(\', \') }} will join a list with commas (str.join(\', \', listx)).\r\n\r\nThe List of Builtin Filters below describes all the builtin filters.\r\n\r\nTests', 'about-bg.jpg', '2021-04-10 23:50:02'),
(5, 'Tests', 'Test\'s tagline', 'fifth-post', 'Beside filters, there are also so-called “tests” available. Tests can be used to test a variable against a common expression. To test a variable or expression, you add is plus the name of the test after the variable. For example, to find out if a variable is defined, you can do name is defined, which will then return true or false depending on whether name is defined in the current template context.\r\n\r\nTests can accept arguments, too. If the test only takes one argument, you can leave out the parentheses. For example, the following two expressions do the same thing:\r\n\r\n{% if loop.index is divisibleby 3 %}\r\n{% if loop.index is divisibleby(3) %}\r\nThe List of Builtin Tests below describes all the builtin tests.', 'about-bg.jpg', '2021-04-10 23:52:07'),
(6, 'Whitespace Control', 'Whitespace tagline', 'sixth-post', 'In the default configuration:\r\n\r\na single trailing newline is stripped if present\r\n\r\nother whitespace (spaces, tabs, newlines etc.) is returned unchanged\r\n\r\nIf an application configures Jinja to trim_blocks, the first newline after a template tag is removed automatically (like in PHP). The lstrip_blocks option can also be set to strip tabs and spaces from the beginning of a line to the start of a block. (Nothing will be stripped if there are other characters before the start of the block.)\r\n\r\nWith both trim_blocks and lstrip_blocks enabled, you can put block tags on their own lines, and the entire block line will be removed when rendered, preserving the whitespace of the contents. For example, without the trim_blocks and lstrip_blocks options, this template:\r\n\r\n<div>\r\n    {% if True %}\r\n        yay\r\n    {% endif %}\r\n</div>\r\ngets rendered with blank lines inside the div:\r\n\r\n<div>\r\n\r\n        yay\r\n\r\n</div>\r\nBut with both trim_blocks and lstrip_blocks enabled, the template block lines are removed and other whitespace is preserved:\r\n\r\n<div>\r\n        yay\r\n</div>\r\nYou can manually disable the lstrip_blocks behavior by putting a plus sign (+) at the start of a block:\r\n\r\n<div>\r\n        {%+ if something %}yay{% endif %}\r\n</div>\r\nYou can also strip whitespace in templates by hand. If you add a minus sign (-) to the start or end of a block (e.g. a For tag), a comment, or a variable expression, the whitespaces before or after that block will be removed:\r\n\r\n{% for item in seq -%}\r\n    {{ item }}\r\n{%- endfor %}\r\nThis will yield all elements without whitespace between them. If seq was a list of numbers from 1 to 9, the output would be 123456789.\r\n\r\nIf Line Statements are enabled, they strip leading whitespace automatically up to the beginning of the line.\r\n\r\nBy default, Jinja also removes trailing newlines. To keep single trailing newlines, configure Jinja to keep_trailing_newline.\r\n\r\nNote\r\nYou must not add whitespace between the tag and the minus sign.\r\n\r\nvalid:\r\n\r\n{%- if foo -%}...{% endif %}\r\ninvalid:\r\n\r\n{% - if foo - %}...{% endif %}', 'about-bg.jpg', '2021-04-10 23:53:37'),
(10, 'hey', 'tagline', 'new post', 'sdgajSD', 'SHDG', '2021-06-06 23:53:01');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`sno`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`sno`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `sno` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `sno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
