/*
SQLyog Ultimate v12.09 (64 bit)
MySQL - 5.7.20-log : Database - ytd
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`ytd` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `ytd`;

/*Table structure for table `basicinfo` */

DROP TABLE IF EXISTS `basicinfo`;

CREATE TABLE `basicinfo` (
  `basicInfoId` int(10) DEFAULT NULL COMMENT 'basicInfoId',
  `NAME` varchar(60) DEFAULT NULL COMMENT 'name',
  `idNumber` varchar(18) DEFAULT NULL COMMENT 'idNumber',
  `maritalStatus` varchar(60) DEFAULT NULL COMMENT 'maritalStatus',
  `email` varchar(60) DEFAULT NULL COMMENT 'email',
  `householdRegister` varchar(60) DEFAULT NULL COMMENT 'householdRegister',
  `householdRegisterAddresss` varchar(60) DEFAULT NULL COMMENT 'householdRegisterAddresss',
  `liveProvince` varchar(60) DEFAULT NULL COMMENT 'liveProvince',
  `liveAddress` varchar(60) DEFAULT NULL COMMENT 'liveAddress',
  `currentResidenceStatus` varchar(60) DEFAULT NULL COMMENT 'currentResidenceStatus',
  `monthlyRent` float DEFAULT NULL COMMENT 'monthlyRent',
  `monthlyRepaymentAmount` float DEFAULT NULL COMMENT 'monthlyRepaymentAmount',
  `hvPassport` smallint(6) DEFAULT NULL COMMENT 'hvPassport',
  `hvDriverLicense` smallint(6) DEFAULT NULL COMMENT 'hvDriverLicense',
  `hvSocialSecurity` smallint(6) DEFAULT NULL COMMENT 'hvSocialSecurity',
  `dataAttachmentId` bigint(10) DEFAULT NULL COMMENT 'dataAttachmentId',
  `dataCompleteStatus` int(5) DEFAULT NULL COMMENT 'dataCompleteStatus'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='basicInfo';

/*Data for the table `basicinfo` */

/*Table structure for table `basiciteminfo` */

DROP TABLE IF EXISTS `basiciteminfo`;

CREATE TABLE `basiciteminfo` (
  `itemCommonId` int(10) DEFAULT NULL COMMENT 'itemCommonId',
  `iteLimitYuan` int(10) DEFAULT NULL COMMENT 'iteLimitYuan',
  `iteReason` varchar(50) DEFAULT NULL COMMENT 'iteReason',
  `applyDate` date DEFAULT NULL COMMENT 'applyDate',
  `endDate` date DEFAULT NULL COMMENT 'endDate',
  `iteBidMin` float DEFAULT NULL COMMENT 'iteBidMin',
  `iteBidDate` date DEFAULT NULL COMMENT 'iteBidDate',
  `iteYearRate` float DEFAULT NULL COMMENT 'iteYearRate',
  `iteRepayInterval` varchar(50) DEFAULT NULL COMMENT 'iteRepayInterval',
  `iteRepayDate` int(10) DEFAULT NULL COMMENT 'iteRepayDate',
  `iteBidSum` int(10) DEFAULT NULL COMMENT 'iteBidSum',
  `iteRepayType` varchar(50) DEFAULT NULL COMMENT 'iteRepayType',
  `iteTitle` varchar(50) DEFAULT NULL COMMENT 'iteTitle',
  `itdContent` varchar(250) DEFAULT NULL COMMENT 'itdContent',
  `loanerId` int(10) DEFAULT NULL COMMENT 'loanerId',
  `repayTotalMoney` float DEFAULT NULL COMMENT 'repayTotalMoney',
  `loanItemLevel` varchar(5) DEFAULT NULL COMMENT 'loanItemLevel',
  `isNewItem` tinyint(1) DEFAULT NULL COMMENT 'isNewItem',
  `overDueDays` int(5) DEFAULT NULL COMMENT 'overDueDays',
  `overDueInterests` float DEFAULT NULL COMMENT 'overDueInterests',
  `overDueCapital` float DEFAULT NULL COMMENT 'overDueCapital',
  `termRepay` float DEFAULT NULL COMMENT 'termRepay'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='basicItemInfo';

/*Data for the table `basiciteminfo` */

/*Table structure for table `biditem` */

DROP TABLE IF EXISTS `biditem`;

CREATE TABLE `biditem` (
  `bidItemId` int(10) DEFAULT NULL COMMENT 'bidItemId',
  `creditLevel` varchar(5) DEFAULT NULL COMMENT 'creditLevel',
  `restRaiseDays` datetime DEFAULT NULL COMMENT 'RaiseDays',
  `applyDate` date DEFAULT NULL COMMENT 'applyDate',
  `endDate` date DEFAULT NULL COMMENT 'endDate',
  `canInvestCash` float DEFAULT NULL COMMENT 'canInvestCash',
  `loanUse` varchar(10) DEFAULT NULL COMMENT 'loanUse',
  `repaymentResource` varchar(250) DEFAULT NULL COMMENT 'repaymentResource',
  `pawnInfo` varchar(250) DEFAULT NULL COMMENT 'pawnInfo',
  `factoryBackground` varchar(250) DEFAULT NULL COMMENT 'factoryBackground',
  `pawnDealMethod` varchar(250) DEFAULT NULL COMMENT 'pawnDealMethod',
  `riskControlMethod` varchar(250) DEFAULT NULL COMMENT 'riskControlMethod',
  `ItemCommonId` int(10) DEFAULT NULL COMMENT 'ItemCommonId',
  `STATUS` varchar(10) DEFAULT NULL COMMENT 'status'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='bidItem';

/*Data for the table `biditem` */

/*Table structure for table `companydata` */

DROP TABLE IF EXISTS `companydata`;

CREATE TABLE `companydata` (
  `companyDataId` int(10) DEFAULT NULL COMMENT 'companyDataId',
  `companyName` varchar(60) DEFAULT NULL COMMENT 'companyName',
  `companyNature` varchar(60) DEFAULT NULL COMMENT 'companyNature',
  `companyIndustry` varchar(60) DEFAULT NULL COMMENT 'companyIndustry',
  `workLevel` varchar(60) DEFAULT NULL COMMENT 'workLevel',
  `POSITION` varchar(60) DEFAULT NULL COMMENT 'position',
  `serviceTime` date DEFAULT NULL COMMENT 'serviceTime',
  `workYears` int(4) DEFAULT NULL COMMENT 'workYears',
  `workTel` int(11) DEFAULT NULL COMMENT 'workTel',
  `companyAddress` varchar(60) DEFAULT NULL COMMENT 'companyAddress',
  `companySite` varchar(60) DEFAULT NULL COMMENT 'companySite',
  `dataAttachmentId` bigint(10) DEFAULT NULL COMMENT 'dataAttachmentId',
  `dataCompleteStatus` int(5) DEFAULT NULL COMMENT 'dataCompleteStatus'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='companyData';

/*Data for the table `companydata` */

/*Table structure for table `contactinfo` */

DROP TABLE IF EXISTS `contactinfo`;

CREATE TABLE `contactinfo` (
  `contactInfoId` int(10) DEFAULT NULL COMMENT 'contactInfoId',
  `homeTel` int(11) DEFAULT NULL COMMENT 'homeTel',
  `tel` int(11) DEFAULT NULL COMMENT 'tel',
  `liveProvince` varchar(60) DEFAULT NULL COMMENT 'liveProvince',
  `liveCity` varchar(60) DEFAULT NULL COMMENT 'liveCity',
  `livieDistrict` varchar(60) DEFAULT NULL COMMENT 'livieDistrict',
  `liveAddress` varchar(60) DEFAULT NULL COMMENT 'liveAddress',
  `livePostcode` int(6) DEFAULT NULL COMMENT 'livePostcode',
  `MSN2` int(20) DEFAULT NULL COMMENT 'MSN2',
  `QQ2` int(15) DEFAULT NULL COMMENT 'QQ2',
  `aliwangwang` int(15) DEFAULT NULL COMMENT 'aliwangwang',
  `partnerName` varchar(60) DEFAULT NULL COMMENT 'partnerName',
  `partnerRelationship` varchar(60) DEFAULT NULL COMMENT 'partnerRelationship',
  `partnerHomeTel` int(11) DEFAULT NULL COMMENT 'partnerHomeTel',
  `partnerTel` int(11) DEFAULT NULL COMMENT 'partnerTel',
  `dataAttachmentId` bigint(10) DEFAULT NULL COMMENT 'dataAttachmentId',
  `dataCompleteStatus` int(5) DEFAULT NULL COMMENT 'dataCompleteStatus'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='contactInfo';

/*Data for the table `contactinfo` */

/*Table structure for table `dataattachment` */

DROP TABLE IF EXISTS `dataattachment`;

CREATE TABLE `dataattachment` (
  `dataAttachmentId` int(10) DEFAULT NULL COMMENT 'dataAttachmentId',
  `dataUpload` varchar(60) DEFAULT NULL COMMENT 'dataUpload',
  `dataName` varchar(60) DEFAULT NULL COMMENT 'dataName',
  `dataType` varchar(60) DEFAULT NULL COMMENT 'dataType',
  `dataExplain` varchar(60) DEFAULT NULL COMMENT 'dataExplain',
  `dataId` bigint(10) DEFAULT NULL COMMENT 'dataId'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='dataAttachment';

/*Data for the table `dataattachment` */

/*Table structure for table `deliveryaddress` */

DROP TABLE IF EXISTS `deliveryaddress`;

CREATE TABLE `deliveryaddress` (
  `deliveryAddressId` int(10) DEFAULT NULL COMMENT 'deliveryAddressId',
  `deliveryName` varchar(60) DEFAULT NULL COMMENT 'name',
  `deliveryTel` int(11) DEFAULT NULL COMMENT 'phone',
  `deliveryArea` varchar(60) DEFAULT NULL COMMENT 'inTheArea',
  `deliveryAddress` varchar(60) DEFAULT NULL COMMENT 'detailedAddress'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='deliveryAddress';

/*Data for the table `deliveryaddress` */

/*Table structure for table `educationdata` */

DROP TABLE IF EXISTS `educationdata`;

CREATE TABLE `educationdata` (
  `educationDataId` int(10) DEFAULT NULL COMMENT 'educationDataId',
  `entranceYear` date DEFAULT NULL COMMENT 'entranceYear',
  `graduateYear` date DEFAULT NULL COMMENT 'graduateYear',
  `schoolName` varchar(60) DEFAULT NULL COMMENT 'schoolName',
  `recordOfFormalSchooling` varchar(60) DEFAULT NULL COMMENT 'recordOfFormalSchooling',
  `major` varchar(60) DEFAULT NULL COMMENT 'major',
  `note` varchar(60) DEFAULT NULL COMMENT 'note',
  `dataAttachmentId` bigint(10) DEFAULT NULL COMMENT 'dataAttachmentId',
  `dataCompleteStatus` int(5) DEFAULT NULL COMMENT 'dataCompleteStatus'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='educationData';

/*Data for the table `educationdata` */

/*Table structure for table `financialstatus` */

DROP TABLE IF EXISTS `financialstatus`;

CREATE TABLE `financialstatus` (
  `financialStatusId` int(10) DEFAULT NULL COMMENT 'financialStatusId',
  `monthUnpledgeRepayMoney` float DEFAULT NULL COMMENT 'monthUnpledgeRepayMoney',
  `houseStatus` varchar(10) DEFAULT NULL COMMENT 'houseStatus',
  `mortgageAmount` float DEFAULT NULL COMMENT 'mortgageAmount',
  `carStatus` varchar(10) DEFAULT NULL COMMENT 'carStatus',
  `carMortgageAmount` float DEFAULT NULL COMMENT 'carMortgageAmount',
  `creditcardRepayAmount` float DEFAULT NULL COMMENT 'creditcardRepayAmount',
  `dataAttachmentId` bigint(10) DEFAULT NULL COMMENT 'dataAttachmentId',
  `dataCompleteStatus` varchar(60) DEFAULT NULL COMMENT 'dataCompleteStatus'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='financialStatus';

/*Data for the table `financialstatus` */

/*Table structure for table `fund` */

DROP TABLE IF EXISTS `fund`;

CREATE TABLE `fund` (
  `fundId` int(10) DEFAULT NULL COMMENT 'fundId',
  `userId` int(10) DEFAULT NULL COMMENT 'userId',
  `fund` float DEFAULT NULL COMMENT 'fund',
  `tradeTime` datetime DEFAULT NULL COMMENT 'tradeTime',
  `fundTypeId` int(5) DEFAULT NULL COMMENT 'fundTypeId',
  `statement` varchar(250) DEFAULT NULL COMMENT 'statement',
  `curTotalMoney` float DEFAULT NULL COMMENT 'curTotalMoney',
  `curAbleMoney` float DEFAULT NULL COMMENT 'curAbleMoney',
  `curUnableMoney` float DEFAULT NULL COMMENT 'curUnableMoney'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='fund';

/*Data for the table `fund` */

/*Table structure for table `fundtype` */

DROP TABLE IF EXISTS `fundtype`;

CREATE TABLE `fundtype` (
  `fundTypeId` int(5) DEFAULT NULL COMMENT 'fundTypeId',
  `fundType` varchar(10) DEFAULT NULL COMMENT 'fundType'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='fundType';

/*Data for the table `fundtype` */

/*Table structure for table `housedata` */

DROP TABLE IF EXISTS `housedata`;

CREATE TABLE `housedata` (
  `houseDataId` int(10) DEFAULT NULL COMMENT 'houseDataId',
  `houseAddress` varchar(60) DEFAULT NULL COMMENT 'houseAddress',
  `houseArea` float DEFAULT NULL COMMENT 'houseArea',
  `yearsOfHouse` date DEFAULT NULL COMMENT 'yearsOfHouse',
  `houseRepayConditions` varchar(60) DEFAULT NULL COMMENT 'houseRepayConditions',
  `owner1` varchar(60) DEFAULT NULL COMMENT 'owner1',
  `owner1Rights` int(10) DEFAULT NULL COMMENT 'owner1Rights',
  `owner2` int(10) DEFAULT NULL COMMENT 'owner2',
  `owner2Rights` varchar(60) DEFAULT NULL COMMENT 'owner2Rights',
  `houseLoanYears` int(10) DEFAULT NULL COMMENT 'houseLoanYears',
  `monthHouseRepay` float DEFAULT NULL COMMENT 'monthHouseRepay',
  `restLoan` float DEFAULT NULL COMMENT 'restLoan',
  `mortgageBank` varchar(60) DEFAULT NULL COMMENT 'mortgageBank',
  `dataAttachmentId` bigint(10) DEFAULT NULL COMMENT 'dataAttachmentId',
  `dataCompleteStatus` int(5) DEFAULT NULL COMMENT 'dataCompleteStatus'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='houseData';

/*Data for the table `housedata` */

/*Table structure for table `investorrefund` */

DROP TABLE IF EXISTS `investorrefund`;

CREATE TABLE `investorrefund` (
  `investorRefundId` int(10) DEFAULT NULL COMMENT 'investorRefundId',
  `investorId` int(10) DEFAULT NULL COMMENT 'investorId',
  `periods` int(5) DEFAULT NULL COMMENT 'periods',
  `promiseInterest` float DEFAULT NULL COMMENT 'promiseInterest',
  `applyDate` date DEFAULT NULL COMMENT 'applyDate',
  `endDate` date DEFAULT NULL COMMENT 'endDate',
  `interestManageCost` float DEFAULT NULL COMMENT 'interestManageCost',
  `promiseRefundDate` date DEFAULT NULL COMMENT 'promiseRefundDate',
  `actualRefundDate` date DEFAULT NULL COMMENT 'actualRefundDate',
  `principal` float DEFAULT NULL COMMENT 'principal',
  `actualRefundInterest` float DEFAULT NULL COMMENT 'actualRefundInterest',
  `refundStatus` varchar(50) DEFAULT NULL COMMENT 'refundStatus',
  `note` varchar(250) DEFAULT NULL COMMENT 'note',
  `fullScaleOrNot` tinyint(1) DEFAULT NULL COMMENT 'fullScaleOrNot',
  `itemCommonId` int(10) DEFAULT NULL COMMENT 'itemCommonId',
  `transferOrNot` tinyint(1) DEFAULT NULL COMMENT 'transferOrNot'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='investorRefund';

/*Data for the table `investorrefund` */

/*Table structure for table `investortransferitem` */

DROP TABLE IF EXISTS `investortransferitem`;

CREATE TABLE `investortransferitem` (
  `investorTransferId` int(10) DEFAULT NULL COMMENT 'investorTransferId',
  `applyDate` date DEFAULT NULL COMMENT 'applyDate',
  `endDate` date DEFAULT NULL COMMENT 'endDate',
  `transferPrice` float DEFAULT NULL COMMENT 'transferPrice',
  `STATUS` varchar(10) DEFAULT NULL COMMENT 'status',
  `note` varchar(250) DEFAULT NULL COMMENT 'note',
  `restRepayDays` int(5) DEFAULT NULL COMMENT 'restRepayDays',
  `resetPickedUpDays` int(5) DEFAULT NULL COMMENT 'resetPickedUpDays',
  `pickedUpUserId` int(10) DEFAULT NULL COMMENT 'pickedUpUserId',
  `investorRefundId` int(10) DEFAULT NULL COMMENT 'investorRefundId'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='investorTransferItem';

/*Data for the table `investortransferitem` */

/*Table structure for table `loadapplyitem` */

DROP TABLE IF EXISTS `loadapplyitem`;

CREATE TABLE `loadapplyitem` (
  `itemCommonId` int(10) DEFAULT NULL COMMENT 'itemCommonId',
  `applyDate` date DEFAULT NULL COMMENT 'applyDate',
  `endDate` date DEFAULT NULL COMMENT 'endDate',
  `STATUS` varchar(10) DEFAULT NULL COMMENT 'status'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='loadApplyItem';

/*Data for the table `loadapplyitem` */

/*Table structure for table `notice` */

DROP TABLE IF EXISTS `notice`;

CREATE TABLE `notice` (
  `noticeId` int(10) DEFAULT NULL COMMENT 'noticeId',
  `noticeTitle` varchar(20) DEFAULT NULL COMMENT 'noticeTitle',
  `noticeTime` date DEFAULT NULL COMMENT 'noticeTime',
  `viewsOfNotice` int(5) DEFAULT NULL COMMENT 'viewsOfNotice',
  `noticeFrom` varchar(25) DEFAULT NULL COMMENT 'noticeFrom',
  `noticeContent` varchar(1024) DEFAULT NULL COMMENT 'noticeContent',
  `noticeTypeId` int(5) DEFAULT NULL COMMENT 'noticeTypeId'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='notice';

/*Data for the table `notice` */

/*Table structure for table `noticetype` */

DROP TABLE IF EXISTS `noticetype`;

CREATE TABLE `noticetype` (
  `noticeTypeId` int(5) DEFAULT NULL COMMENT 'noticeTypeId',
  `noticeType` varchar(20) DEFAULT NULL COMMENT 'noticeType'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='noticeType';

/*Data for the table `noticetype` */

/*Table structure for table `overdue` */

DROP TABLE IF EXISTS `overdue`;

CREATE TABLE `overdue` (
  `overdueId` int(10) NOT NULL COMMENT 'overdueId',
  `overdueDays` int(5) DEFAULT NULL COMMENT 'overdueDays',
  PRIMARY KEY (`overdueId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='overdue';

/*Data for the table `overdue` */

/*Table structure for table `pawn` */

DROP TABLE IF EXISTS `pawn`;

CREATE TABLE `pawn` (
  `loanerId` int(10) NOT NULL COMMENT 'loanerId',
  `pawnId` varchar(1024) DEFAULT NULL COMMENT 'pawnId',
  `STATUS` varchar(10) DEFAULT NULL COMMENT 'status',
  `itemCommonId` int(10) NOT NULL COMMENT 'itemCommonId',
  `titleName` varchar(10) DEFAULT NULL COMMENT 'titleName',
  `itdContent` varchar(10) DEFAULT NULL COMMENT 'itdContent',
  `picture1` varchar(50) DEFAULT NULL COMMENT 'picture1',
  `picture2` varchar(50) DEFAULT NULL COMMENT 'picture2',
  `picture3` varchar(50) DEFAULT NULL COMMENT 'picture3',
  `picture4` varchar(50) DEFAULT NULL COMMENT 'picture4',
  `picture5` varchar(50) DEFAULT NULL COMMENT 'picture5'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='pawn';

/*Data for the table `pawn` */

/*Table structure for table `privateownerdata` */

DROP TABLE IF EXISTS `privateownerdata`;

CREATE TABLE `privateownerdata` (
  `privateOwnerDataId` int(10) DEFAULT NULL COMMENT 'privateOwnerDataId',
  `privateOwnerType` varchar(60) DEFAULT NULL COMMENT 'privateOwnerType',
  `setUpDate` date DEFAULT NULL COMMENT 'setUpDate',
  `premises` varchar(60) DEFAULT NULL COMMENT 'premises',
  `rent` float DEFAULT NULL COMMENT 'rent',
  `lease` varchar(60) DEFAULT NULL COMMENT 'lease',
  `taxNumber` varchar(60) DEFAULT NULL COMMENT 'taxNumber',
  `businessRegistrationNumber` int(10) DEFAULT NULL COMMENT 'businessRegistrationNumber',
  `fullYearEarnings` float DEFAULT NULL COMMENT 'fullYearEarnings',
  `employment` int(10) DEFAULT NULL COMMENT 'employment',
  `dataAttachmentId` bigint(10) DEFAULT NULL COMMENT 'dataAttachmentId',
  `dataCompleteStatus` varchar(60) DEFAULT NULL COMMENT 'dataCompleteStatus'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='privateOwnerData';

/*Data for the table `privateownerdata` */

/*Table structure for table `repayitem` */

DROP TABLE IF EXISTS `repayitem`;

CREATE TABLE `repayitem` (
  `repaymentItemId` int(10) DEFAULT NULL COMMENT 'repaymentItemId',
  `applicationDate` date DEFAULT NULL COMMENT 'applicationDate',
  `endDate` date DEFAULT NULL COMMENT 'endDate',
  `itemCommonId` int(10) DEFAULT NULL COMMENT 'itemCommonId',
  `STATUS` varchar(10) DEFAULT NULL COMMENT 'status',
  `repaymentTerm` int(5) DEFAULT NULL COMMENT 'repaymentTerm'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='repayItem';

/*Data for the table `repayitem` */

/*Table structure for table `spousedata` */

DROP TABLE IF EXISTS `spousedata`;

CREATE TABLE `spousedata` (
  `spouseDataId` int(10) DEFAULT NULL COMMENT 'spouseDataId',
  `spouseName` varchar(60) DEFAULT NULL COMMENT 'spouseName',
  `spouseSalary` varchar(60) DEFAULT NULL COMMENT 'spouseSalary',
  `spouseTel` int(11) DEFAULT NULL COMMENT 'spouseTel',
  `spouseWorkTel` int(11) DEFAULT NULL COMMENT 'spouseWorkTel',
  `spouseCompany` varchar(60) DEFAULT NULL COMMENT 'spouseCompany',
  `spousePosition` varchar(60) DEFAULT NULL COMMENT 'spousePosition',
  `spouseCompanyAddress` varchar(60) DEFAULT NULL COMMENT 'spouseCompanyAddress',
  `dataAttachmentId` bigint(10) DEFAULT NULL COMMENT 'dataAttachmentId',
  `dataCompleteStatus` int(5) DEFAULT NULL COMMENT 'dataCompleteStatus'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='spouseData';

/*Data for the table `spousedata` */

/*Table structure for table `user` */

DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
  `userId` int(10) NOT NULL COMMENT 'userId',
  `userName` varchar(20) DEFAULT NULL COMMENT 'userName',
  `userTel` int(11) DEFAULT NULL COMMENT 'userTel',
  `logPsw` int(20) DEFAULT NULL COMMENT 'logPsw',
  `tradePsw` int(20) DEFAULT NULL COMMENT 'tradePsw',
  `totalMoney` float DEFAULT NULL COMMENT 'totalMoney',
  `availableMoney` float DEFAULT NULL COMMENT 'availableMoney',
  `unavailableMoney` float DEFAULT NULL COMMENT 'unavailableMoney',
  `futureMoney` float DEFAULT NULL COMMENT 'futureMoney',
  `userRoleId` int(10) DEFAULT NULL COMMENT 'userRoleId',
  `basicInfoId` int(10) DEFAULT NULL COMMENT 'basicInfoId',
  `houseDataId` int(10) DEFAULT NULL COMMENT 'houseDataId',
  `companyDataId` int(10) DEFAULT NULL COMMENT 'companyDataId',
  `privateOwnerDataId` int(10) DEFAULT NULL COMMENT 'privateOwnerDataId',
  `financialStatusId` int(10) DEFAULT NULL COMMENT 'financialStatusId',
  `contactInfoId` int(10) DEFAULT NULL COMMENT 'contactInfoId',
  `spouseDataId` int(10) DEFAULT NULL COMMENT 'spouseDataId',
  `educationDataId` int(10) DEFAULT NULL COMMENT 'educationDataId',
  `deliveryAddressId` int(10) DEFAULT NULL COMMENT 'deliveryAddressId',
  `verifyDataId` int(10) DEFAULT NULL COMMENT 'verifyDataId',
  `overdueId` int(10) DEFAULT NULL COMMENT 'overdueId',
  `overdueTimes` int(5) DEFAULT NULL COMMENT 'overdueTimes',
  `isNewCutsomer` tinyint(1) DEFAULT NULL COMMENT 'isNewCutsomer'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='user';

/*Data for the table `user` */

/*Table structure for table `userrole` */

DROP TABLE IF EXISTS `userrole`;

CREATE TABLE `userrole` (
  `userRoleId` int(10) DEFAULT NULL COMMENT 'userRoleId',
  `userRoleName` varchar(20) DEFAULT NULL COMMENT 'userRoleName'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='userRole';

/*Data for the table `userrole` */

/*Table structure for table `verifydata` */

DROP TABLE IF EXISTS `verifydata`;

CREATE TABLE `verifydata` (
  `verifyDataId` int(10) DEFAULT NULL COMMENT 'verifyDataId',
  `tel` int(10) DEFAULT NULL COMMENT 'tel',
  `realNameVerify` varchar(10) DEFAULT NULL COMMENT 'realNameVerify',
  `bankCard` int(19) DEFAULT NULL COMMENT 'bankCard',
  `email` varchar(60) DEFAULT NULL COMMENT 'email',
  `verifyStatus` int(5) DEFAULT NULL COMMENT 'verifyStatus'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='verifyData';

/*Data for the table `verifydata` */

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
