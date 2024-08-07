-- Crear base de datos
CREATE DATABASE WizardsGame;
USE WizardsGame;

-- Tabla de Usuarios
CREATE TABLE Users (
    id INT AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(50) NOT NULL,
    email VARCHAR(100) NOT NULL,
    wallet_address VARCHAR(100) NOT NULL,
    password VARCHAR(255) NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    fee DECIMAL(5,2) DEFAULT 50.00,
    magic_gold DECIMAL(10,2) DEFAULT 0,
    crystal INT DEFAULT 0,
    awaken_seal INT DEFAULT 0,
    lang VARCHAR(10) DEFAULT 'es'
);

-- Tabla de Magos
CREATE TABLE Mages (
    id INT AUTO_INCREMENT PRIMARY KEY,
    user_id INT,
    name VARCHAR(50),
    rarity ENUM('Common', 'Uncommon', 'Rare', 'Epic'),
    magic_power DECIMAL(10,2),
    cooldown_time INT,
    magic_gold_bonus DECIMAL(5,2),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (user_id) REFERENCES Users(id)
);

-- Tabla de Objetos
CREATE TABLE Items (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(50),
    magic_power DECIMAL(10,2),
    star_level INT DEFAULT 1,
    magic_gold_bonus DECIMAL(5,2) DEFAULT 0,
    user_id INT,
    awakened BOOLEAN DEFAULT FALSE,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (user_id) REFERENCES Users(id)
);

-- Tabla de Equipamientos
CREATE TABLE Equipments (
    id INT AUTO_INCREMENT PRIMARY KEY,
    mage_id INT,
    item_id INT,
    equipped BOOLEAN DEFAULT TRUE,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (mage_id) REFERENCES Mages(id),
    FOREIGN KEY (item_id) REFERENCES Items(id)
);

-- Tabla de Mazmorras
CREATE TABLE Dungeons (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(50),
    level INT,
    magic_power_requirement DECIMAL(10,2),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Tabla de Niveles de Mazmorra
CREATE TABLE DungeonLevels (
    id INT AUTO_INCREMENT PRIMARY KEY,
    dungeon_id INT,
    name VARCHAR(50),
    magic_power_requirement DECIMAL(10,2),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (dungeon_id) REFERENCES Dungeons(id)
);

-- Tabla de Transacciones
CREATE TABLE Transactions (
    id INT AUTO_INCREMENT PRIMARY KEY,
    user_id INT,
    amount DECIMAL(10,2),
    transaction_type ENUM('withdrawal', 'deposit', 'purchase', 'reward'),
    status ENUM('pending', 'approved', 'cancelled'),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (user_id) REFERENCES Users(id)
);

-- Tabla de Historial de Mazmorras
CREATE TABLE DungeonHistory (
    id INT AUTO_INCREMENT PRIMARY KEY,
    user_id INT,
    mage_id INT,
    dungeon_level_id INT,
    result ENUM('victory', 'defeat'),
    reward_magic_gold DECIMAL(10,2),
    reward_crystal INT,
    reward_awaken_seal INT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (user_id) REFERENCES Users(id),
    FOREIGN KEY (mage_id) REFERENCES Mages(id),
    FOREIGN KEY (dungeon_level_id) REFERENCES DungeonLevels(id)
);

-- Tabla de Medallas
CREATE TABLE Medals (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(50),
    description TEXT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Tabla de Medallas de Usuario
CREATE TABLE UserMedals (
    id INT AUTO_INCREMENT PRIMARY KEY,
    user_id INT,
    medal_id INT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (user_id) REFERENCES Users(id),
    FOREIGN KEY (medal_id) REFERENCES Medals(id)
);

-- Tabla de Rangos
CREATE TABLE Rankings (
    id INT AUTO_INCREMENT PRIMARY KEY,
    dungeon_id INT,
    name VARCHAR(50),
    start_date TIMESTAMP,
    end_date TIMESTAMP,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (dungeon_id) REFERENCES Dungeons(id)
);

-- Tabla de Posiciones en Rangos
CREATE TABLE RankingPositions (
    id INT AUTO_INCREMENT PRIMARY KEY,
    ranking_id INT,
    user_id INT,
    position INT,
    wins INT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (ranking_id) REFERENCES Rankings(id),
    FOREIGN KEY (user_id) REFERENCES Users(id)
);

-- Tabla de Sellos Mágicos
CREATE TABLE MagicSeals (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(50),
    cost DECIMAL(10,2),
    rarity ENUM('Common', 'Uncommon', 'Rare', 'Epic'),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Tabla de Caja de Botín
CREATE TABLE LootBoxes (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(50),
    item_id INT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (item_id) REFERENCES Items(id)
);

-- Tabla de Historial de Caja de Botín
CREATE TABLE LootBoxHistory (
    id INT AUTO_INCREMENT PRIMARY KEY,
    user_id INT,
    lootbox_id INT,
    reward_item_id INT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (user_id) REFERENCES Users(id),
    FOREIGN KEY (lootbox_id) REFERENCES LootBoxes(id),
    FOREIGN KEY (reward_item_id) REFERENCES Items(id)
);

-- Tabla de Panel de Administrador
CREATE TABLE AdminPanel (
    id INT AUTO_INCREMENT PRIMARY KEY,
    admin_id INT,
    action VARCHAR(100),
    details TEXT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Tabla de Historial de Retiro
CREATE TABLE WithdrawalHistory (
    id INT AUTO_INCREMENT PRIMARY KEY,
    user_id INT,
    amount DECIMAL(10,2),
    fee DECIMAL(5,2),
    status ENUM('pending', 'approved', 'cancelled'),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (user_id) REFERENCES Users(id)
);
