
CREATE TABLE `barang` (
  `ID_BARANG` varchar(10) NOT NULL,
  `NAMA_BARANG` varchar(50) DEFAULT NULL,
  `JENIS` varchar(20) DEFAULT NULL,
  `HARGABELI` decimal(10,0) DEFAULT NULL,
  `HARGAJUAL` decimal(10,0) DEFAULT NULL,
  `STOK` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID_BARANG`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

CREATE TABLE `pembelian` (
  `NoFaktur` varchar(20) NOT NULL,
  `Tanggal` varchar(20) DEFAULT NULL,
  `TotalJual` decimal(10,0) DEFAULT NULL,
  PRIMARY KEY (`NoFaktur`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;


CREATE TABLE `pembelianrinci` (
  `NoFaktur` varchar(20) DEFAULT NULL,
  `ID_Barang` varchar(10) DEFAULT NULL,
  `Nama_Barang` varchar(50) DEFAULT NULL,
  `Jumlah` int(11) DEFAULT NULL,
  `Harga` decimal(10,0) DEFAULT NULL,
  `Total` decimal(10,0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

CREATE TABLE `penjualan` (
  `NoFaktur` varchar(20) NOT NULL,
  `Tanggal` varchar(20) DEFAULT NULL,
  `ID_Customer` varchar(10) DEFAULT NULL,
  `TotalBeli` decimal(10,0) DEFAULT NULL,
  PRIMARY KEY (`NoFaktur`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

CREATE TABLE `penjualanrinci` (
  `NoFaktur` varchar(20) DEFAULT NULL,
  `ID_Barang` varchar(10) DEFAULT NULL,
  `Nama_Barang` varchar(50) DEFAULT NULL,
  `Jumlah` int(11) DEFAULT NULL,
  `Harga` decimal(10,0) DEFAULT NULL,
  `Total` decimal(10,0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

CREATE TABLE `pelanggan` (
  `ID_PELANGGAN` varchar(10) NOT NULL,
  `NAMA` varchar(50) DEFAULT NULL,
  `TELEPON` varchar(20) DEFAULT NULL,
  `ALAMAT` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`ID_PELANGGAN`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

CREATE TABLE `supplier` (
  `ID_SUPPLIER` varchar(10) NOT NULL,
  `NAMA` varchar(50) DEFAULT NULL,
  `TELEPON` varchar(20) DEFAULT NULL,
  `ALAMAT` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`ID_SUPPLIER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

ALTER TABLE `penjualan`.`penjualan` 
CHANGE COLUMN `ID_Customer` `ID_PELANGGAN` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL AFTER `Tanggal`;

ALTER TABLE `penjualan`.`pembelian` 
DROP COLUMN `ID_SUPPLIER`,
ADD COLUMN `ID_SUPPLIER` varchar(255) NULL AFTER `TotalJual`;

