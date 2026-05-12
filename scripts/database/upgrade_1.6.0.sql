-- *********************************************************************
-- Update Database Script - LibrePlan 1.6.0
-- *********************************************************************
-- Change Log: src/main/resources/db.changelog.xml
-- Ran at: 5/5/26, 3:34 PM
-- Against: libreplan@jdbc:postgresql://localhost/libreplandev
-- Liquibase version: 3.5.1
-- *********************************************************************

-- Lock Database
UPDATE databasechangeloglock SET LOCKED = TRUE, LOCKEDBY = '10.1.1.157 (10.1.1.157)', LOCKGRANTED = '2026-05-05 15:34:52.010' WHERE ID = 1 AND LOCKED = FALSE;

-- Adding missing databasechangelog.contexts column
-- Adding missing databasechangelog.labels column
-- Adding missing databasechangelog.deployment_id column
-- DatabaseChangeLog checksums are an incompatible version.  Setting them to null so they will be updated on next database update
ALTER TABLE databasechangelog ADD CONTEXTS VARCHAR(255);

ALTER TABLE databasechangelog ADD LABELS VARCHAR(255);

ALTER TABLE databasechangelog ADD DEPLOYMENT_ID VARCHAR(10);

UPDATE databasechangelog SET MD5SUM = NULL;

UPDATE databasechangelog SET MD5SUM = '7:c876c4e0a27ffe72ba5556d5eae0bfe5' WHERE ID = 'initial-database-creation-1' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:7c83e51b32f6995e952b88cf7fbc4861' WHERE ID = 'initial-database-creation-2' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:5990e3c6b56c5fc7b79a182d69c68eda' WHERE ID = 'initial-database-creation-3' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:71162c1d45926536f2edbe6bd7784290' WHERE ID = 'initial-database-creation-4' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:d4fac3a9bc3339fff49f602bc70da852' WHERE ID = 'initial-database-creation-5' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:ac0eecfd849cb95ed36d4d2ec615d7cd' WHERE ID = 'initial-database-creation-6' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:b224b2760976a7239d00b314c0745a48' WHERE ID = 'initial-database-creation-7' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:d376eb3af41cbc036fd8633abb83330d' WHERE ID = 'initial-database-creation-8' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:1b24c221f18f736787ae1c238a82f3b6' WHERE ID = 'initial-database-creation-9' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:eac52bdcf22b74a3e4b35378e4366d95' WHERE ID = 'initial-database-creation-10' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:253a78909b2da8b91a48a0eb1a391046' WHERE ID = 'initial-database-creation-11' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:1ff25e2e39a1615c59d2ad6829d43f86' WHERE ID = 'initial-database-creation-12' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:7ddefbfd2945d38ad8eedfe1d3d8eace' WHERE ID = 'initial-database-creation-13' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:cbf7a15d47cf91b2ea16693fc31f6d35' WHERE ID = 'initial-database-creation-14' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:f533d3b17b1767bb831671f422d5d712' WHERE ID = 'initial-database-creation-15' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:d00836ae0490befe0711eebb6d7fb9ed' WHERE ID = 'initial-database-creation-16' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:3f4e5d3157d2c98000b24540bc394bbc' WHERE ID = 'initial-database-creation-17' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:d8e619ba0dfe3cbf2f76b059a9fffea9' WHERE ID = 'initial-database-creation-18' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:b8aa1f0d696aaf5e78c44216091b93b7' WHERE ID = 'initial-database-creation-19' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:6cb1d7003b37e16d05aeeb36f85cb7bf' WHERE ID = 'initial-database-creation-20' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:50357a7b2502eb022425abf82bf1ee09' WHERE ID = 'initial-database-creation-21' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:6567c5f67eaac970e9bf7acfbf322cb7' WHERE ID = 'initial-database-creation-22' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:e9190893bcb444e0f3e562659687e50e' WHERE ID = 'initial-database-creation-23' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:7b259ba0b8d96de0c0fb8ca4e5912a82' WHERE ID = 'initial-database-creation-24' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:e38d4f2c9a0db0b4b5716443709278bf' WHERE ID = 'initial-database-creation-25' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:572f94b97ca28310e924a4906dabdb09' WHERE ID = 'initial-database-creation-26' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:02cd686ccd0cc927fe0d0541d92c14fc' WHERE ID = 'initial-database-creation-27' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:9e5e78af0a5917ff1b6643a6a04479dc' WHERE ID = 'initial-database-creation-28' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:c7be545a4ca6887ec51e61b4408410aa' WHERE ID = 'initial-database-creation-29' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:8e410ebbdf976ad59421a7016d66b281' WHERE ID = 'initial-database-creation-30' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:93454d31986fdb7e5e211710162cf880' WHERE ID = 'initial-database-creation-31' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:56cfab3c01f3e298b9cca74448b5f370' WHERE ID = 'initial-database-creation-32' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:bc40cda69ccc16bdff0f5063c3eaf3d2' WHERE ID = 'initial-database-creation-33' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:c37f547c3929bb2fcef734f1be3830e0' WHERE ID = 'initial-database-creation-34' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:1a08f3a7fa5bab73c6b17c6cab3e39a7' WHERE ID = 'initial-database-creation-35' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:7beb4cc38f3c10519793ebcc09933a87' WHERE ID = 'initial-database-creation-36' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:08c1b624461455168d84f1f8c666522c' WHERE ID = 'initial-database-creation-37' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:67fcbf5e2867f90bf6a380b14b362a99' WHERE ID = 'initial-database-creation-38' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:eff83492830ae44fbb04b1585226366c' WHERE ID = 'initial-database-creation-39' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:7d146c29bdfc7deb69a3a8d4564ccfb6' WHERE ID = 'initial-database-creation-40' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:75b77edba12165335c1a2a42cffff954' WHERE ID = 'initial-database-creation-41' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:1c2c969e0f3f4f6ea2f005891d99d5e7' WHERE ID = 'initial-database-creation-42' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:7b76cbd6e5afd9716bafa1fa7c0f5e5c' WHERE ID = 'initial-database-creation-43' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:2050fac2c95659870245acef849a96be' WHERE ID = 'initial-database-creation-44' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:9e16482312bd1b0ba6a32258bdc8a5ed' WHERE ID = 'initial-database-creation-45' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:7c6408617eae35891c25db4344817654' WHERE ID = 'initial-database-creation-46' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:74eb67bd11e9af1d4d3418d505c50302' WHERE ID = 'initial-database-creation-47' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:0a77bae4bbfae6527ff1076000f40200' WHERE ID = 'initial-database-creation-48' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:aec4b39ef8f602d8cc68b27a46011128' WHERE ID = 'initial-database-creation-49' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:ee2491a168556daa5fe3e00e026eb1d9' WHERE ID = 'initial-database-creation-50' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:877608a5c714d28ca47cdb9133229aea' WHERE ID = 'initial-database-creation-51' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:ed5197580d5b0436b267b7ef8c9584e7' WHERE ID = 'initial-database-creation-52' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:a28766c7a8382b9f725412fc693d012c' WHERE ID = 'initial-database-creation-53' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:4031081e5d475143f922aa937251c1b3' WHERE ID = 'initial-database-creation-54' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:5420a1febf60fcf34c1f3419dd0d8796' WHERE ID = 'initial-database-creation-55' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:a4e9dfdea3e6810df546a7c4352901a5' WHERE ID = 'initial-database-creation-56' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:cdae434bf5e3a24e513f1c2a73ab905c' WHERE ID = 'initial-database-creation-57' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:b62df5b413fc7a5cd41afac52eb65c69' WHERE ID = 'initial-database-creation-58' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:b6152ff946c83b1963c22218ed058a58' WHERE ID = 'initial-database-creation-59' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:49f8a4e773d5908ed91aa4059b4b5f70' WHERE ID = 'initial-database-creation-60' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:ffcc0c6de212b58184482cc2105ea76d' WHERE ID = 'initial-database-creation-61' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:b7f3fb7b70e058620a39b66463181ec3' WHERE ID = 'initial-database-creation-62' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:8f41a7692dea93ffd6075318bc25fa2b' WHERE ID = 'initial-database-creation-63' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:bf613e17e982b0cee3134c42ae3752c7' WHERE ID = 'initial-database-creation-64' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:bb4a15f4a61e4b1acad041c4b47eccc9' WHERE ID = 'initial-database-creation-65' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:52c6468498f1b80f2087e677b130ffbe' WHERE ID = 'initial-database-creation-66' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:c6f0eb79e94dca32f2bc6f095c4d779c' WHERE ID = 'initial-database-creation-67' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:62920c6eb78ca73eff50169cdf53263b' WHERE ID = 'initial-database-creation-68' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:7f18a039913815d957dabbd08ee65c0b' WHERE ID = 'initial-database-creation-69' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:bcb0a6e737ee430fbf69d06fc5945612' WHERE ID = 'initial-database-creation-70' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:60194d5f385a3c70843fb0c00619df8b' WHERE ID = 'initial-database-creation-71' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:db727f711e3c605db9a9efcd248421a7' WHERE ID = 'initial-database-creation-72' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:72a90512db0c6d182321df90e1705f81' WHERE ID = 'initial-database-creation-73' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:41b345f4ad1d8d3beace95711ec50d06' WHERE ID = 'initial-database-creation-74' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:8113a9009c2d8e2744b738b3010b7aff' WHERE ID = 'initial-database-creation-75' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:e8371b5c1a7d45a481e3b994df9d4118' WHERE ID = 'initial-database-creation-76' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:b6fb883fa0e80e8c32bdfccf1e924f3d' WHERE ID = 'initial-database-creation-77' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:611880b6bc16964c7dcd1de7729f87f0' WHERE ID = 'initial-database-creation-78' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:8da00cc25949c4ee11ac8151cfe60baf' WHERE ID = 'initial-database-creation-79' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:21b2509b8c7f1634dae49e9de4583f29' WHERE ID = 'initial-database-creation-80' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:19262e57b78f4882b455dfd1630133f8' WHERE ID = 'initial-database-creation-81' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:41fd61d39abd6408717438d962893bda' WHERE ID = 'initial-database-creation-82' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:5d2a60ce6b5b46f30b846b98a4a79a9f' WHERE ID = 'initial-database-creation-83' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:99053bd8d357d7fa78d9b34f58cd8bfc' WHERE ID = 'initial-database-creation-84' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:53156db218740c87c302a52ab7ca0cd8' WHERE ID = 'initial-database-creation-85' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:d719a179c783b99743a9277ad1767259' WHERE ID = 'initial-database-creation-86' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:70fcde1b3c53fbe6653ea3ae9c1148bc' WHERE ID = 'initial-database-creation-87' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:d55de8d5ecddf3d7677eba8c5811ce81' WHERE ID = 'initial-database-creation-88' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:61975c0baba81af1bfa8a5e9f89ddfd1' WHERE ID = 'initial-database-creation-89' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:76c48e40c6f49ed6f7c99da0daf0e3dd' WHERE ID = 'initial-database-creation-90' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:a437bacc1ffdd3f3604faf2b69977315' WHERE ID = 'initial-database-creation-91' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:60a90f3000f61848f2aef598f25d319e' WHERE ID = 'initial-database-creation-92' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:628688392578a1a35e55bbbb6c7a1173' WHERE ID = 'initial-database-creation-93' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:e8447b44dafa4caf3683a99c266abc1a' WHERE ID = 'initial-database-creation-94' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:c633245357d51af0052eeff8f3a2c9b4' WHERE ID = 'initial-database-creation-95' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:c3b1239a040718994f0aa8858bfd5358' WHERE ID = 'initial-database-creation-96' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:08ae22f51368438ba081cf2b8f4c5b25' WHERE ID = 'initial-database-creation-97' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:61584131fecdd101e38356f5c842d38c' WHERE ID = 'initial-database-creation-98' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:02ea7d1c3e103e7ef3d876ba39cb4c39' WHERE ID = 'initial-database-creation-99' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:72ec93e4df6641ce30dce6ff2cfd6d49' WHERE ID = 'initial-database-creation-100' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:134b90e8425cae5c4ed9bb00e0adabf6' WHERE ID = 'initial-database-creation-101' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:083e7a433dd566f78fff8b328c84393d' WHERE ID = 'initial-database-creation-102' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:0b1a0a695eff1fb1ffb1306cab40e6c6' WHERE ID = 'initial-database-creation-103' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:19b3f067b954d4966191940914c15b54' WHERE ID = 'initial-database-creation-104' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:e8507429c89d43653d565c7441a2e48f' WHERE ID = 'initial-database-creation-105' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:c84666fe6786e1c657fcfc468e14e2a6' WHERE ID = 'initial-database-creation-106' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:4bff38cadc30af45348fd6cc27d58741' WHERE ID = 'initial-database-creation-107' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:5dc26ac7ce20ad635434baeb1429d767' WHERE ID = 'initial-database-creation-108' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:82d626c8efb7d038aed1bf6014af54aa' WHERE ID = 'initial-database-creation-109' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:6fc8f2390a5531da00bcfe96a6d08d59' WHERE ID = 'initial-database-creation-110' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:f4ae2701bcac4a13d0ed009279ace3e9' WHERE ID = 'initial-database-creation-111' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:67931aa6354d6e2da8f9fc351897c3d6' WHERE ID = 'initial-database-creation-112' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:2d221d6f6341bbfee22bfecfbc9e2208' WHERE ID = 'initial-database-creation-113' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:0174d4ca2607bf88a344bf333b2a62d7' WHERE ID = 'initial-database-creation-114' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:d3fd61ded3114054c2bc70ff9b020a27' WHERE ID = 'initial-database-creation-115' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:74bd4009e6824b7fa37388aa396f15b7' WHERE ID = 'initial-database-creation-116' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:39e73895fa85b8e7a634f36a62fb0608' WHERE ID = 'initial-database-creation-117' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:b8c92e980355ee5046cbefa6c23d2859' WHERE ID = 'initial-database-creation-118' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:db4774011e84e8ec89c84f3702e0e20a' WHERE ID = 'initial-database-creation-119' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:9197839a7ea946d1df8f581ac8c23d16' WHERE ID = 'initial-database-creation-120' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:8d6e8f9f2aeabcce3ec67ab5b3006f05' WHERE ID = 'initial-database-creation-121' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:9feca3418d53baaa0a888bf22288d653' WHERE ID = 'initial-database-creation-122' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:14155a36cf228f10badc3944a24cfef2' WHERE ID = 'initial-database-creation-123' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:8ad737d404044c324f45da505426a62c' WHERE ID = 'initial-database-creation-124' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:1de75651cad65c8a323ecbeb0652490f' WHERE ID = 'initial-database-creation-125' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:7c2b7c5427a55a7fd1361f980f5d49fb' WHERE ID = 'initial-database-creation-126' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:f9a01a21b40e29534d05b9547b40d9b7' WHERE ID = 'initial-database-creation-127' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:e3d2bded12cbe9caf6a98703b6c28125' WHERE ID = 'initial-database-creation-128' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:94af761fcb6c01534f3444ade0cdef1a' WHERE ID = 'initial-database-creation-129' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:f8f3d921e6550c94f2cdf278adcc260a' WHERE ID = 'initial-database-creation-130' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:114b9603d12b95505f6c4fc7d77003f0' WHERE ID = 'initial-database-creation-131' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:b39b3f11ba9940b8d017e5ee2bab75b6' WHERE ID = 'initial-database-creation-132' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:d146882b163babc6cad9aeacaf92face' WHERE ID = 'initial-database-creation-133' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:4850ef61231f998019dcb20bc4d720d9' WHERE ID = 'initial-database-creation-134' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:249273531bb6b2d62b9f07e349eabee8' WHERE ID = 'initial-database-creation-135' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:bcc8f8503697f36a7bc6b8be4826f019' WHERE ID = 'initial-database-creation-136' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:4f16bf55801ba9bb64b6dc1e44707c71' WHERE ID = 'initial-database-creation-137' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:ac630995ea6daf1236c3abeb091cd0eb' WHERE ID = 'initial-database-creation-138' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:2f7ab2eec2df73cc55c1724e020c952b' WHERE ID = 'initial-database-creation-139' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:d802f20e3407cb13ec31d19edd63a6f0' WHERE ID = 'initial-database-creation-140' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:8139ae9a8b8496a9e3f6cb341709d64d' WHERE ID = 'initial-database-creation-141' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:dd2682038f9c2e205bb3a1a6f9fb6d0f' WHERE ID = 'initial-database-creation-142' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:4896204906fe5ebb89b8d84a65cb678d' WHERE ID = 'initial-database-creation-143' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:5618c0a383ae8a575d159dd189736ccb' WHERE ID = 'initial-database-creation-144' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:92e150efdc9696b0f641d3032e3ec75c' WHERE ID = 'initial-database-creation-145' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:b8b292ee53dbc4b5ab80fcd5a7f8ac9c' WHERE ID = 'initial-database-creation-146' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:d30161a1bf9a4bbb3f981178462a20d4' WHERE ID = 'initial-database-creation-147' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:5726807cc2bc216bfb989e02e619709b' WHERE ID = 'initial-database-creation-148' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:cfb02098c33d5f245fa4fa56c824f6fe' WHERE ID = 'initial-database-creation-149' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:ca7fa132c6d722dda3f77647ef6e8d5e' WHERE ID = 'initial-database-creation-150' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:e7f320c260eb0793c712803eb587427f' WHERE ID = 'initial-database-creation-151' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:81772f418952b1387fc046a3c5480aaf' WHERE ID = 'initial-database-creation-152' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:94e09bdc2bbd102a2e932dab94c69d84' WHERE ID = 'initial-database-creation-153' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:6c58af5550db76b753e52d7ec1a07a09' WHERE ID = 'initial-database-creation-154' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:8e80fcb566092c13422815831ae6b6f2' WHERE ID = 'initial-database-creation-155' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:436a571caceb4ccbe80ba06dcab57928' WHERE ID = 'initial-database-creation-156' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:974070f2386769b7e6fa2e77d23865bd' WHERE ID = 'initial-database-creation-157' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:6c38da51c2821abbe261e519b7952a10' WHERE ID = 'initial-database-creation-158' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:f07788a823bcb6ca67d61b3e8c0108c2' WHERE ID = 'initial-database-creation-159' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:90655049b1ef7ba903e196350e9d6db8' WHERE ID = 'initial-database-creation-160' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:c864a003ebbea8c8307e063d59c20c48' WHERE ID = 'initial-database-creation-161' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:6cf683d80e3e979894865de2dae9063e' WHERE ID = 'initial-database-creation-162' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:09b8fe9fa4be7cf449441f3e26a085c6' WHERE ID = 'initial-database-creation-163' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:48ef1226c21870f78811ec68ed0e81b2' WHERE ID = 'initial-database-creation-164' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:72d94c6a29e2cf59195247d2d438947e' WHERE ID = 'initial-database-creation-165' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:c195b3090af1b50bb1adf9cc3e1b5c8c' WHERE ID = 'initial-database-creation-166' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:4eb3b7f9c50bb5c70ed1dc8d81bd726c' WHERE ID = 'initial-database-creation-167' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:83140318dcef3897fef7a603854e1702' WHERE ID = 'initial-database-creation-168' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:c5ae737dfa58bf5e820f37bf762df968' WHERE ID = 'initial-database-creation-169' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:cc1fc6e891dbb353d76b0ce9aca84d7a' WHERE ID = 'initial-database-creation-170' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:178f67714db358b024fc804c5bf58c5a' WHERE ID = 'initial-database-creation-171' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:a6998f6e0d718e5a65766a20b4a6029c' WHERE ID = 'initial-database-creation-172' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:e046f86460794d241f7b508d8f6254ef' WHERE ID = 'initial-database-creation-173' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:38e1b77cc9189c39fa12ed65f2cb81e1' WHERE ID = 'initial-database-creation-174' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:49fef9a9ed08a2c4118c7688c7deb56d' WHERE ID = 'initial-database-creation-175' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:d945215d04720e9976336b4a60cc6b6b' WHERE ID = 'initial-database-creation-176' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:f14031ea0eca3449effa36744cddb412' WHERE ID = 'initial-database-creation-177' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:fb461c8a099588d308f498df5aa8000d' WHERE ID = 'initial-database-creation-178' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:6b9221fd7a1f70fc29cfabc9fb837a12' WHERE ID = 'initial-database-creation-179' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:3c3456b3be4c25c8f0700e6be51d5488' WHERE ID = 'initial-database-creation-180' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:724929bfb0c75e19997ea44a9c083383' WHERE ID = 'initial-database-creation-181' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:60d0b8a0d67ca74952cfc6b7101eeeb3' WHERE ID = 'initial-database-creation-182' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:812a51b333663accc9df96b0542254d3' WHERE ID = 'initial-database-creation-183' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:d9e8dcdf087837a9ecee198c25544752' WHERE ID = 'initial-database-creation-184' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:70ba3bc76eaac78df00e0d2a6199a7e5' WHERE ID = 'initial-database-creation-185' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:7581900ff540444ec3ec897fc4bff388' WHERE ID = 'initial-database-creation-186' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:c35db595b181e103d70aada445893a3a' WHERE ID = 'initial-database-creation-187' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:71f03a5df75480894a4f36f960565f94' WHERE ID = 'initial-database-creation-188' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:ddcc408342feac2415adf128804a1bc9' WHERE ID = 'initial-database-creation-189' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:ab3c9f2d81ce0f7e98f2b59ec6f0a5b4' WHERE ID = 'initial-database-creation-190' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:4d3cd217ab9654999bd53abddb3ccc69' WHERE ID = 'initial-database-creation-191' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:ca4de353dd63831c33ed925f42f2df8e' WHERE ID = 'initial-database-creation-192' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:d698454781950ce6f1bbf061fd7a61f2' WHERE ID = 'initial-database-creation-193' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:8e09436b7374965c248b05fe69d0bc7e' WHERE ID = 'initial-database-creation-194' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:36283b8a4501c81b28042c729fc50108' WHERE ID = 'initial-database-creation-195' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:5c9fde88a7ab5da60a5dc8f3f9547429' WHERE ID = 'initial-database-creation-196' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:945912c0c5ba6f29c8c3be4bba344e01' WHERE ID = 'initial-database-creation-197' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:506c20c5250c47a36385b18a4cd53f27' WHERE ID = 'initial-database-creation-198' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:0e57750d5abb95c5bed60f1001bdd767' WHERE ID = 'initial-database-creation-199' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:3f81ef7921d03be4f316352e882dcfba' WHERE ID = 'initial-database-creation-200' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:a4ea1e2d194605f6f58b153bfaccf5ab' WHERE ID = 'initial-database-creation-201' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:0d14060c6060767cd382ae11daab03c5' WHERE ID = 'initial-database-creation-202' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:6707a13bf3f51bdb706c76882ce46ec4' WHERE ID = 'initial-database-creation-203' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:0e6fd2f5f65ab9faf7c8703e7685ca65' WHERE ID = 'initial-database-creation-204' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:309f434d6c082d6891afd0d337282991' WHERE ID = 'initial-database-creation-205' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:c32ba10cbb1f0b5c2e95aa027ec746fe' WHERE ID = 'initial-database-creation-206' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:5384963f62e7187ec90a1b1c153182aa' WHERE ID = 'initial-database-creation-207' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:2989ae695264d7a11807a0979ec0ecb2' WHERE ID = 'initial-database-creation-208' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:d25479cc3d966e012c6911dc51d6cce8' WHERE ID = 'initial-database-creation-209' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:ac9cc3045f1f9fe1a02ccd9974b8323d' WHERE ID = 'initial-database-creation-210' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:49cfb6312e54282c4d0e795f80b39341' WHERE ID = 'initial-database-creation-211' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:082d165623816b3c4df275c39d2a5c87' WHERE ID = 'initial-database-creation-212' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:c1fa529176b85c1fd1d6df34e101730b' WHERE ID = 'initial-database-creation-213' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:e21ea36e2865acc7a8b529008ab18638' WHERE ID = 'initial-database-creation-214' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:bf499a472647063ad23d818f3b9efc0c' WHERE ID = 'initial-database-creation-215' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:3cf0b99be2d102f0c18d6e1b087a6e07' WHERE ID = 'initial-database-creation-216' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:e5328dc45c03321e840b1dfbeca3aaf4' WHERE ID = 'initial-database-creation-217' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:7ea348bcf2a726b57bc2e48c1573abe4' WHERE ID = 'initial-database-creation-218' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:75e05f119db1962a31320a356ead606d' WHERE ID = 'initial-database-creation-219' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:75b7a302ad3797e328d986f81c28a5fd' WHERE ID = 'initial-database-creation-220' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:ba22657b9068e4ca375362000671ba21' WHERE ID = 'initial-database-creation-221' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:acc55b69000f8a5b28452aab10f5b169' WHERE ID = 'initial-database-creation-222' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:8cfce63d019f419629c39ad8fdc9120d' WHERE ID = 'initial-database-creation-223' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:39f6d2e2a61c8529249622ca487d57a7' WHERE ID = 'initial-database-creation-224' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:a584b5ca8d9bf8f9a230769b10dfda69' WHERE ID = 'initial-database-creation-225' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:ce096c8029c383f4e8251ed0885d8390' WHERE ID = 'initial-database-creation-226' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:de2b97a7c2cb4e61e67d17d48c4a4d20' WHERE ID = 'initial-database-creation-227' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:f39bcf544eef6692cbc5f38bbddd55cd' WHERE ID = 'initial-database-creation-228' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:73a607e5b7217d115eadcfbadd89455a' WHERE ID = 'initial-database-creation-229' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:d2d2be80e0ac4dcca4713e2836f37990' WHERE ID = 'initial-database-creation-230' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:367efc1c8cc792f70211c4bfd9eef6ed' WHERE ID = 'initial-database-creation-231' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:aae212760ec31dfd923f2d12ba9d6f1d' WHERE ID = 'initial-database-creation-232' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:fbb1b9abd4ec87b8932aade0c9218ae3' WHERE ID = 'initial-database-creation-233' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:2aba7298c4844af59c5edb831f117ba5' WHERE ID = 'initial-database-creation-234' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:89fe84b09a8acd34f363679bf7677356' WHERE ID = 'initial-database-creation-235' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:5dc4e8c340bd393f4b5099e20f0f9a36' WHERE ID = 'initial-database-creation-236' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:3590b686acb9b09cea6fac5c89bbdc9d' WHERE ID = 'initial-database-creation-237' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:f8cfec1398bb704b6a2e138e81b07ccf' WHERE ID = 'initial-database-creation-238' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:ba0e3a1d8b9c29fb3bdb55bae218bb4c' WHERE ID = 'initial-database-creation-239' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:bbdc482744e95dbd90575c89ad9d41ae' WHERE ID = 'initial-database-creation-240' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:d2b36af99c5952b528eaae7057ac1b6e' WHERE ID = 'initial-database-creation-241' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:3b62b7db5eaee97240817ecd722ac2a7' WHERE ID = 'initial-database-creation-242' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:ef9951fb06b1b9539f42987d8c7594f2' WHERE ID = 'initial-database-creation-243' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:7cd497d7af6ffe2717e6ba48161289db' WHERE ID = 'initial-database-creation-244' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:64be25676fe6a16a9179a8ecca37946f' WHERE ID = 'initial-database-creation-245' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:7ca9c1541c3c1c3cb4ff41ba97468977' WHERE ID = 'initial-database-creation-246' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:5628baa778f7975d33844745464bd72e' WHERE ID = 'initial-database-creation-247' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:39b2886714c95b4fcea840e728dbeafe' WHERE ID = 'initial-database-creation-248' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:d123f9a5f94593bf52ae8de082c5fbaf' WHERE ID = 'initial-database-creation-249' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:6d3aa67ebaaf1bf8d90a857cc980f5f4' WHERE ID = 'initial-database-creation-250' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:b5b0c05626d01b47c019ae26616d4828' WHERE ID = 'initial-database-creation-251' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:0f0ff7e553ea342720ff6a08a2ec9a79' WHERE ID = 'initial-database-creation-252' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:8ecef16684b0a1402cc45f4359c1cf8d' WHERE ID = 'initial-database-creation-253' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:d34ae8e0bc647c198532a5796f84970c' WHERE ID = 'initial-database-creation-254' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:c77b9876807fc668bf925c15b6f05d95' WHERE ID = 'initial-database-creation-255' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:04edb15a2341263b756bef9da590c0da' WHERE ID = 'initial-database-creation-256' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:04df4ad24e2f0029592544981ad02af1' WHERE ID = 'initial-database-creation-257' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:6ff190dc6ee66086ea50e4c1c0218bea' WHERE ID = 'initial-database-creation-258' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:f0738411e10071f2f018ff01eeb35d6d' WHERE ID = 'initial-database-creation-259' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:38eff64be66a81aefceff8295f24457c' WHERE ID = 'initial-database-creation-260' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:866937843544d7ea29305ff0aa63f716' WHERE ID = 'initial-database-creation-261' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:1a79dcd24324b40b74fe51216933dd60' WHERE ID = 'initial-database-creation-262' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:f3b5bf1bb8dec4d1a539a14b729fa5d7' WHERE ID = 'initial-database-creation-263' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:7489a0cd1ddac88ed52c5d7a1a4f8b15' WHERE ID = 'initial-database-creation-264' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:85386acf36cc7732a909b50feb7161e5' WHERE ID = 'initial-database-creation-265' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:265253245bc2a4d3a147abf6dc2f5a63' WHERE ID = 'initial-database-creation-266' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:bb1e840ddd6ad5a4e3ebdc051158ec43' WHERE ID = 'initial-database-creation-267' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:1b171c7216f636855695b563e1914e33' WHERE ID = 'initial-database-creation-268' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:4226f9c9cab55a23a6d5b4e15b3fb9ee' WHERE ID = 'initial-database-creation-269' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:aea699561de90a74b8916c3d1ed344eb' WHERE ID = 'initial-database-creation-270' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:475222ac5ae3d2abc1b7d45e9c4e177b' WHERE ID = 'initial-database-creation-271' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:2d6e61725ae54122c2080c90008a2b26' WHERE ID = 'initial-database-creation-272' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:7e4235c52130abfe71c0d00afa7d4ce4' WHERE ID = 'initial-database-creation-273' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:84f4c22bdcbb6b8b9b5a3b70366f963d' WHERE ID = 'initial-database-creation-274' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:ccd737d5dd312fd91122cd812b5a966e' WHERE ID = 'initial-database-creation-275' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:51837fcb989bf6bd725dcb15cf16e523' WHERE ID = 'initial-database-creation-276' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:b61c900c5dbb41916da6da7cd86c577b' WHERE ID = 'initial-database-creation-277' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:136371209592142dfb066f431dc820d2' WHERE ID = 'initial-database-creation-278' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:74476bd04d63820337d0163ead5f408b' WHERE ID = 'initial-database-creation-279' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:77619d56bb9caef66ddb09b2d738a689' WHERE ID = 'initial-database-creation-280' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:401e0d01fa21de72b2cfdc904b7793d2' WHERE ID = 'initial-database-creation-281' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:71c0e98d3fdaffd5241327a88d7fdcc2' WHERE ID = 'initial-database-creation-282' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:49564ddf7a028e03718eb115075be50e' WHERE ID = 'initial-database-creation-283' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:a3f182e08f211522c2fdceff6658adb4' WHERE ID = 'initial-database-creation-284' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:fa809e223b8edc78e803b61393643714' WHERE ID = 'initial-database-creation-285' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:38c6589a313eddb26f132963c26c6530' WHERE ID = 'initial-database-creation-286' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:b4f8bccc6e065ce463aadde27e17d230' WHERE ID = 'initial-database-creation-287' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:97361f372c354ebcd4e0452c415dbf7c' WHERE ID = 'initial-database-creation-288' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:d678d74ac95b746dc8c258b4b1284f59' WHERE ID = 'initial-database-creation-289' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:42313cf70e1ca6c2d710353631bb9cc6' WHERE ID = 'initial-database-creation-290' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:cbef825460cae1bd015a31aca425b1dd' WHERE ID = 'initial-database-creation-291' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:7932c5b87f56ac81597296b7430a4a1a' WHERE ID = 'initial-database-creation-292' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:3cfafcce493dc68c0c2a0819bf3b4424' WHERE ID = 'initial-database-creation-293' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:683a9bb1f8dec1b928b52abc0d13c614' WHERE ID = 'initial-database-creation-294' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:d79fcbe5e100ffa411d371bde048de9c' WHERE ID = 'initial-database-creation-295' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:a3451251df2e81fb19e31b70640416e4' WHERE ID = 'initial-database-creation-296' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:9ce7cc7f4b37a33879fd86f6e51f1c55' WHERE ID = 'initial-database-creation-297' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:7be41a7f6064dd9fe0539976d1c8b3d0' WHERE ID = 'initial-database-creation-298' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:f83cbc66b0dc3f92ac50ae3732d53b71' WHERE ID = 'initial-database-creation-299' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:0922adca7c62b031132bf803be407187' WHERE ID = 'initial-database-creation-300' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:6f5b7c51292ecdc6a7376573eb841d54' WHERE ID = 'initial-database-creation-301' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:68e8da1cdab002c1a44b9e94bf74a54e' WHERE ID = 'initial-database-creation-302' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:2ee59e6eb1443a6b5f17955ae868ec3d' WHERE ID = 'initial-database-creation-303' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:c9a0c8f2a51a38880549746c4d03a644' WHERE ID = 'initial-database-creation-304' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:0ced52a9c6b59828513a3506efb1b1ef' WHERE ID = 'initial-database-creation-305' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:a2fc7ddf27cf8adc3db57ce19ec92f72' WHERE ID = 'initial-database-creation-306' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:4247931bed864bfc0a08c5b90c64f409' WHERE ID = 'initial-database-creation-307' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:669398ad637b9fd862d16fc335c65d9d' WHERE ID = 'initial-database-creation-308' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:4bb5d497e77f36479dce9156a92e78ba' WHERE ID = 'initial-database-creation-309' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:e90b2f53ebf96ead3e3c999812ecb09f' WHERE ID = 'initial-database-creation-310' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:c1ae57ea413aa929d7e52318a2da53ce' WHERE ID = 'initial-database-creation-311' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:f74da495f82b379ed710cb0a58d223bf' WHERE ID = 'initial-database-creation-312' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:0d50fa556f4c74a03a6a09f525b1bd07' WHERE ID = 'initial-database-creation-313' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:2ed8fe8c1f5dea5c1994bfb56d668629' WHERE ID = 'initial-database-creation-314' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:1b639acadf3c84d20ee4a96ed44fa921' WHERE ID = 'initial-database-creation-315' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:b03e714b00a4eec1376670955a0d8a74' WHERE ID = 'initial-database-creation-316' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:b20f898af1cacecbff0cad78c9b41193' WHERE ID = 'initial-database-creation-317' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:f576c9ba9b712673b0f113d8c337c676' WHERE ID = 'initial-database-creation-318' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:e854c3100c9768aca54e3834cc8c0e2a' WHERE ID = 'initial-database-creation-319' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:0955cc1f559e97dafedc69df8cba7e1d' WHERE ID = 'initial-database-creation-320' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:e17ce5aaf6051951be309a8154d4602a' WHERE ID = 'resize-precision-in-planning_data' AND AUTHOR = 'dpino' AND FILENAME = 'db.changelog-initial.xml';

UPDATE databasechangelog SET MD5SUM = '7:013ba795423732a239fcb0bf56280c1c' WHERE ID = 'add-company-logo-url-configuration-setting' AND AUTHOR = 'ltilve' AND FILENAME = 'db.changelog-initial.xml';

UPDATE databasechangelog SET MD5SUM = '7:20d3d7099b8c2124dc071367d7158683' WHERE ID = 'add scheduling mode' AND AUTHOR = 'ogonzalez' AND FILENAME = 'db.changelog-initial.xml';

UPDATE databasechangelog SET MD5SUM = '7:68f932faa34858b37470ecf08d65cfeb' WHERE ID = 'rename start_constraint_type in task and task milestone' AND AUTHOR = 'ogonzalez' AND FILENAME = 'db.changelog-initial.xml';

UPDATE databasechangelog SET MD5SUM = '7:5c7b64f1ec02d8fd8f5f73d3d4d88e89' WHERE ID = 'add-scenarios-enabled-configuration-setting' AND AUTHOR = 'ltilve' AND FILENAME = 'db.changelog-initial.xml';

UPDATE databasechangelog SET MD5SUM = '7:36cbdfee7d2cb030b48ec1364502f93f' WHERE ID = 'change-types-start-finish-date-criterion-satisfaction' AND AUTHOR = 'ogonzalez' AND FILENAME = 'db.changelog-initial.xml';

UPDATE databasechangelog SET MD5SUM = '7:90ae31d6c863695d97757f0ca7626382' WHERE ID = 'remove-stretches-with-amountWorkPercentage-equal-100' AND AUTHOR = 'dpino' AND FILENAME = 'db.changelog-initial.xml';

UPDATE databasechangelog SET MD5SUM = '7:78479ba9625739746a399740db54729c' WHERE ID = 'use-capacity-instead-of-effort_duration-and-not_over_assignable' AND AUTHOR = 'ogonzalez' AND FILENAME = 'db.changelog-1.0.xml';

UPDATE databasechangelog SET MD5SUM = '7:1efcbd1f208a9dcd297bb5e951ecfaba' WHERE ID = 'use-capacity-for-exceptions' AND AUTHOR = 'ogonzalez' AND FILENAME = 'db.changelog-1.0.xml';

UPDATE databasechangelog SET MD5SUM = '7:8f568e0722a4bd5db2c7a9ee15ef444b' WHERE ID = 'use-capacity-for-capacity-per-day-for-calendar-data' AND AUTHOR = 'ogonzalez' AND FILENAME = 'db.changelog-1.0.xml';

UPDATE databasechangelog SET MD5SUM = '7:9452720f2d5dafdfe92f0a1a1385c354' WHERE ID = 'by_default_weekends_are_not_overassignable' AND AUTHOR = 'ogonzalez' AND FILENAME = 'db.changelog-1.0.xml';

UPDATE databasechangelog SET MD5SUM = '7:8dc497a48d1135f6539976eb8b848865' WHERE ID = 'replace-column-limited_resource-with-resource_type' AND AUTHOR = 'jaragunde' AND FILENAME = 'db.changelog-1.0.xml';

UPDATE databasechangelog SET MD5SUM = '7:48f05d099ec14ce63df83aa04916ba33' WHERE ID = 'add-new-column-changed_default_admin_password' AND AUTHOR = 'smontes' AND FILENAME = 'db.changelog-1.0.xml';

UPDATE databasechangelog SET MD5SUM = '7:e9acb578e2503062b4d000a46c5f7f3e' WHERE ID = 'add-new-column-changed_default_user_password' AND AUTHOR = 'smontes' AND FILENAME = 'db.changelog-1.0.xml';

UPDATE databasechangelog SET MD5SUM = '7:d46d596677599738d66eadd89c4fc494' WHERE ID = 'add-new-column-changed_default_wsreader_password' AND AUTHOR = 'smontes' AND FILENAME = 'db.changelog-1.0.xml';

UPDATE databasechangelog SET MD5SUM = '7:832d6e1ef60417fab397fd24c565e40d' WHERE ID = 'add-new-column-changed_default_wswriter_password' AND AUTHOR = 'smontes' AND FILENAME = 'db.changelog-1.0.xml';

UPDATE databasechangelog SET MD5SUM = '7:0c66751f59bd6c27d91c1a107fb81ec2' WHERE ID = 'add-intended_resources_per_day-column-to-resource-allocation' AND AUTHOR = 'ogonzalez' AND FILENAME = 'db.changelog-1.0.xml';

UPDATE databasechangelog SET MD5SUM = '7:c7266d37151e38c62d420ea9353876ed' WHERE ID = 'change-original-total-assignment-to-use-effort-duration' AND AUTHOR = 'ogonzalez' AND FILENAME = 'db.changelog-1.0.xml';

UPDATE databasechangelog SET MD5SUM = '7:784b153f54381c4979a6cce8a938a668' WHERE ID = 'add-intended_non_consolidated_effort' AND AUTHOR = 'ogonzalez' AND FILENAME = 'db.changelog-1.0.xml';

UPDATE databasechangelog SET MD5SUM = '7:ef28fd62121c7f9abf1dcdfcd7b95213' WHERE ID = 'add-effort-duration-to-task-and-milestone' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-1.0.xml';

UPDATE databasechangelog SET MD5SUM = '7:c2a321e8dbd4ba301498e69cd1895fa0' WHERE ID = 'add-new-column-ldap-host' AND AUTHOR = 'calvarinop' AND FILENAME = 'db.changelog-1.1.xml';

UPDATE databasechangelog SET MD5SUM = '7:ffe5cce999c981b24cae84d576a91b18' WHERE ID = 'add-new-column-ldap-port' AND AUTHOR = 'calvarinop' AND FILENAME = 'db.changelog-1.1.xml';

UPDATE databasechangelog SET MD5SUM = '7:b2b27f9a6c551942a30381987f2ed14e' WHERE ID = 'add-new-column-ldap-base' AND AUTHOR = 'calvarinop' AND FILENAME = 'db.changelog-1.1.xml';

UPDATE databasechangelog SET MD5SUM = '7:05321ba7edd533b43e022d82277082ce' WHERE ID = 'add-new-column-ldap-userdn' AND AUTHOR = 'calvarinop' AND FILENAME = 'db.changelog-1.1.xml';

UPDATE databasechangelog SET MD5SUM = '7:3ebe25045be96e881a36e795f42c3a3c' WHERE ID = 'add-new-column-ldap-password' AND AUTHOR = 'calvarinop' AND FILENAME = 'db.changelog-1.1.xml';

UPDATE databasechangelog SET MD5SUM = '7:32fea423ada8489cf2c0b1e6188372aa' WHERE ID = 'add-new-column-ldap-userid' AND AUTHOR = 'calvarinop' AND FILENAME = 'db.changelog-1.1.xml';

UPDATE databasechangelog SET MD5SUM = '7:389ba4ed89888ca1b0d20b3ec81480d8' WHERE ID = 'add-new-column-ldap-save-password-db' AND AUTHOR = 'calvarinop' AND FILENAME = 'db.changelog-1.1.xml';

UPDATE databasechangelog SET MD5SUM = '7:7a1d756f8f645c307fb50d408e52197a' WHERE ID = 'add-new-column-ldap-auth-enabled' AND AUTHOR = 'calvarinop' AND FILENAME = 'db.changelog-1.1.xml';

UPDATE databasechangelog SET MD5SUM = '7:80cd7d3db04e53554f8d4329b607f14a' WHERE ID = 'add-new-column-navalplan-user' AND AUTHOR = 'idiazt' AND FILENAME = 'db.changelog-1.1.xml';

UPDATE databasechangelog SET MD5SUM = '7:beab0dc1168e1c885fa8a30dcda2ea4c' WHERE ID = 'delete-constraint-not-null-user-password' AND AUTHOR = 'idiazt' AND FILENAME = 'db.changelog-1.1.xml';

UPDATE databasechangelog SET MD5SUM = '7:260e31e7a0707506851d27a31057fd46' WHERE ID = 'set-default-value-navalplan-user' AND AUTHOR = 'idiazt' AND FILENAME = 'db.changelog-1.1.xml';

UPDATE databasechangelog SET MD5SUM = '7:801ca2287c3903e186174da6e6217e9e' WHERE ID = 'set-default-value-ldap-save-password-db' AND AUTHOR = 'idiazt' AND FILENAME = 'db.changelog-1.1.xml';

UPDATE databasechangelog SET MD5SUM = '7:3b07c74bf110e14f5fd66ac39c55a21a' WHERE ID = 'set-default-value-ldap-auth-enabled' AND AUTHOR = 'idiazt' AND FILENAME = 'db.changelog-1.1.xml';

UPDATE databasechangelog SET MD5SUM = '7:5c0f531ec9d1adcb8d93b2f40168111b' WHERE ID = 'add-new-column-ldap-save-roles-db' AND AUTHOR = 'calvarinop' AND FILENAME = 'db.changelog-1.1.xml';

UPDATE databasechangelog SET MD5SUM = '7:1442f0c75f722bbf3584556fb2f7c911' WHERE ID = 'create-new-table-matching-roles' AND AUTHOR = 'calvarinop' AND FILENAME = 'db.changelog-1.1.xml';

UPDATE databasechangelog SET MD5SUM = '7:fc33862690308483319a638f8fe7f018' WHERE ID = 'add-new-column-ldap-search-query' AND AUTHOR = 'idiazt' AND FILENAME = 'db.changelog-1.1.xml';

UPDATE databasechangelog SET MD5SUM = '7:5d18005525c19712e7b7d50196c10a40' WHERE ID = 'add-new-column-enabled-autocomplete-login' AND AUTHOR = 'smontes' AND FILENAME = 'db.changelog-1.1.xml';

UPDATE databasechangelog SET MD5SUM = '7:0ef1a59925739f1f21c8025752876430' WHERE ID = 'add-application-language' AND AUTHOR = 'calvarinop' AND FILENAME = 'db.changelog-1.1.xml';

UPDATE databasechangelog SET MD5SUM = '7:a9e273171bcf8ea19c14058585717d52' WHERE ID = 'move-columns-from-configuration-table' AND AUTHOR = 'calvarinop' AND FILENAME = 'db.changelog-1.1.xml';

UPDATE databasechangelog SET MD5SUM = '7:267494fb6667f7b5a0cd76ead7bc90f7' WHERE ID = 'add-new-fields' AND AUTHOR = 'calvarinop' AND FILENAME = 'db.changelog-1.1.xml';

UPDATE databasechangelog SET MD5SUM = '7:2f179c765a02dc902945c2e99f130195' WHERE ID = 'remove-configuration_roles_ldap' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-1.1.xml';

UPDATE databasechangelog SET MD5SUM = '7:69f3e64511f69f4060d221857f884d41' WHERE ID = 'add-column-progress_all_by_num_hours-in-planning_data' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-1.1.xml';

UPDATE databasechangelog SET MD5SUM = '7:a9063220e75527d615ae63bec55ff635' WHERE ID = 'update-color-in-calendar_exception_type-to-default' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-1.1.xml';

UPDATE databasechangelog SET MD5SUM = '7:b6c7a69432a1fdd5c23171dbdc711ee6' WHERE ID = 'create-table-manual_function' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-1.1.xml';

UPDATE databasechangelog SET MD5SUM = '7:a6a7e33e3d4f92c4f3cc6fd5d6154076' WHERE ID = 'change-numhours-to-effort-in-work-report-lines' AND AUTHOR = 'idiazt' AND FILENAME = 'db.changelog-1.1.xml';

UPDATE databasechangelog SET MD5SUM = '7:5d893bff446c623ecd3140dc715ee6f1' WHERE ID = 'update-numhours-values-to-effort-values' AND AUTHOR = 'idiazt' AND FILENAME = 'db.changelog-1.1.xml';

UPDATE databasechangelog SET MD5SUM = '7:11d38484bf336dda6db18ecec1a34e53' WHERE ID = 'change-sum_charged_hours-to-sum_charged_effort' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-1.1.xml';

UPDATE databasechangelog SET MD5SUM = '7:4599cbee16f73fc2f398e7c1477f9d4c' WHERE ID = 'update-effort-values-in-sum_charged_effort' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-1.1.xml';

UPDATE databasechangelog SET MD5SUM = '7:725a3220c05209e58a53caf2d8d06067' WHERE ID = 'drop-foreign-key-sum_charged_hours_id-in-order_element' AND AUTHOR = 'dmel' AND FILENAME = 'db.changelog-1.1.xml';

UPDATE databasechangelog SET MD5SUM = '7:c96871ccadaa3199efc3f4a61b8d2901' WHERE ID = 'rename-sum_charged_hours_id-to-sum_charged_effort_id' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-1.1.xml';

UPDATE databasechangelog SET MD5SUM = '7:d376a53b4c95f7dcddff25745b3eb89b' WHERE ID = 'add-foreign-key-sum_charged_effort_id-in-order_element' AND AUTHOR = 'dmel' AND FILENAME = 'db.changelog-1.1.xml';

UPDATE databasechangelog SET MD5SUM = '7:6649a427ac6223f3234df8fa9d4c4077' WHERE ID = 'drop-column-date-in-stretches-table' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-1.1.xml';

UPDATE databasechangelog SET MD5SUM = '7:e63f2b44598cfe9a637b9037ad74bf72' WHERE ID = 'add-version-to-planning-data' AND AUTHOR = 'ogonzalez' AND FILENAME = 'db.changelog-1.1.xml';

UPDATE databasechangelog SET MD5SUM = '7:bfcbdabe073297540892366378d819f7' WHERE ID = 'change-navalplan_user-to-libreplan_user-in-user_table' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-1.1.xml';

UPDATE databasechangelog SET MD5SUM = '7:70188f41112228d607f210b647d5a8ff' WHERE ID = 'add-new-column-ldap-role-strategy' AND AUTHOR = 'idiazt' AND FILENAME = 'db.changelog-1.1.xml';

UPDATE databasechangelog SET MD5SUM = '7:58aff11ea6ca918e88da0fbf6c3807c6' WHERE ID = 'add-task_end_date_effort_duration-to-consolidated_value' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-1.2.xml';

UPDATE databasechangelog SET MD5SUM = '7:d4087b1d364de205ff84464c7164f60e' WHERE ID = 'change-sum_of_hours_allocated-to-sum_of_assigned_effort' AND AUTHOR = 'jaragunde' AND FILENAME = 'db.changelog-1.2.xml';

UPDATE databasechangelog SET MD5SUM = '7:5a8c7ba9be0aa25103bdc7cc191785ff' WHERE ID = 'update-effort-values-in-sum_charged_effort' AND AUTHOR = 'jaragunde' AND FILENAME = 'db.changelog-1.2.xml';

UPDATE databasechangelog SET MD5SUM = '7:6d084994b4b25f35bd6b3bba943ca6d8' WHERE ID = 'add-new-column-check_new_version_enabled' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-1.2.xml';

UPDATE databasechangelog SET MD5SUM = '7:58669c35e741419a23820cb32ee1f0f2' WHERE ID = 'add-new-column-allow_to_gather_usage_stats_enabled' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-1.2.xml';

UPDATE databasechangelog SET MD5SUM = '7:4c0d2c4b459ca5cf96e2f04fa245d60b' WHERE ID = 'change-column-description-in-order_element-to-text' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-1.2.xml';

UPDATE databasechangelog SET MD5SUM = '7:4a3420645523870198f863600906b9f9' WHERE ID = 'change-column-description-in-order_element_template-to-text' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-1.2.xml';

UPDATE databasechangelog SET MD5SUM = '7:72ab971a489f2587c5cad549c4d264be' WHERE ID = 'add-budget-column-to-order_line' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-1.2.xml';

UPDATE databasechangelog SET MD5SUM = '7:8e47536f05228b3ff7082c6eb1434b15' WHERE ID = 'add-budget-column-to-order_line_template' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-1.2.xml';

UPDATE databasechangelog SET MD5SUM = '7:14972a0a81e2c2d47023f7981b8f8d80' WHERE ID = 'initial-database-creation-customer-comunication' AND AUTHOR = 'smontes' AND FILENAME = 'db.changelog-1.2.xml';

UPDATE databasechangelog SET MD5SUM = '7:f97fb7ec38dd612187a866437aec31ad' WHERE ID = 'initial-database-creation-subcontractor-comunication' AND AUTHOR = 'smontes' AND FILENAME = 'db.changelog-1.2.xml';

UPDATE databasechangelog SET MD5SUM = '7:052f9ce9d7b883c25a60f5d35127e96e' WHERE ID = 'initial-database-creation-subcontractor-comunication-value' AND AUTHOR = 'smontes' AND FILENAME = 'db.changelog-1.2.xml';

UPDATE databasechangelog SET MD5SUM = '7:54015e1676854f644f65f0a5d2c14e9a' WHERE ID = 'rename-table-customer_comunication-to-customer_communication' AND AUTHOR = 'smontes' AND FILENAME = 'db.changelog-1.2.xml';

UPDATE databasechangelog SET MD5SUM = '7:ba7ddb07160a45afceca61fa2890f426' WHERE ID = 'rename-column-comunication_type-to-communication_type' AND AUTHOR = 'smontes' AND FILENAME = 'db.changelog-1.2.xml';

UPDATE databasechangelog SET MD5SUM = '7:55f69650cad124fef5793b75ceb664f6' WHERE ID = 'rename-column-comunication_date-to-communication_date' AND AUTHOR = 'smontes' AND FILENAME = 'db.changelog-1.2.xml';

UPDATE databasechangelog SET MD5SUM = '7:af6fc00fc9118fa5373bd728979037ce' WHERE ID = 'rename-table-subcontractor_comunication' AND AUTHOR = 'smontes' AND FILENAME = 'db.changelog-1.2.xml';

UPDATE databasechangelog SET MD5SUM = '7:626315fae50732a1fff518a342412709' WHERE ID = 'rename-column-comunication_type-on-subcontractor-communication' AND AUTHOR = 'smontes' AND FILENAME = 'db.changelog-1.2.xml';

UPDATE databasechangelog SET MD5SUM = '7:cb98e30797665edcc0efc6dced0dd2a5' WHERE ID = 'rename-column-comunication_date-on-subcontractor-communication' AND AUTHOR = 'smontes' AND FILENAME = 'db.changelog-1.2.xml';

UPDATE databasechangelog SET MD5SUM = '7:658b83d7fe4b73a4d802d44d92ee57b1' WHERE ID = 'rename-table-subcontractor_comunication_values' AND AUTHOR = 'smontes' AND FILENAME = 'db.changelog-1.2.xml';

UPDATE databasechangelog SET MD5SUM = '7:79d45c15b86258526118fb828559b408' WHERE ID = 'rename-column-subcontractor_comunication_id' AND AUTHOR = 'smontes' AND FILENAME = 'db.changelog-1.2.xml';

UPDATE databasechangelog SET MD5SUM = '7:a9b05100c4b2cc39cf29ef17012a6ca5' WHERE ID = 'creation-deadline-communication' AND AUTHOR = 'smontes' AND FILENAME = 'db.changelog-1.2.xml';

UPDATE databasechangelog SET MD5SUM = '7:7e0933f3aa9446284b092df018d80f21' WHERE ID = 'add-delivering-date-column-to-order-entity' AND AUTHOR = 'smontes' AND FILENAME = 'db.changelog-1.2.xml';

UPDATE databasechangelog SET MD5SUM = '7:490733aec1c24510d978cce93c09f062' WHERE ID = 'creation-subcontractor-deliver-date' AND AUTHOR = 'smontes' AND FILENAME = 'db.changelog-1.2.xml';

UPDATE databasechangelog SET MD5SUM = '7:a38ee75b40a1e0e9129b11f5d3ac878f' WHERE ID = 'add-subcontracted-task-data' AND AUTHOR = 'smontes' AND FILENAME = 'db.changelog-1.2.xml';

UPDATE databasechangelog SET MD5SUM = '7:9bed5b1bcae35136c3d576f16ab173b3' WHERE ID = 'database-creation-table-end-date-communication-to-customer' AND AUTHOR = 'smontes' AND FILENAME = 'db.changelog-1.2.xml';

UPDATE databasechangelog SET MD5SUM = '7:f93a0a5663dd9e04b03d8c78ed650256' WHERE ID = 'subcontracted-date-id-column-to-end-date-communication' AND AUTHOR = 'smontes' AND FILENAME = 'db.changelog-1.2.xml';

UPDATE databasechangelog SET MD5SUM = '7:923a73eb734f70a3ca372e54cadad424' WHERE ID = 'rename-table-end_date_comunication-to-customer' AND AUTHOR = 'smontes' AND FILENAME = 'db.changelog-1.2.xml';

UPDATE databasechangelog SET MD5SUM = '7:c0b428bac8fbfa8596cc54bee7f7188f' WHERE ID = 'change-mapping-order-element-and-sum-charged-effort-postgresql' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-1.2.xml';

UPDATE databasechangelog SET MD5SUM = '7:2db6f13cac6d4862da45ce887ba5327d' WHERE ID = 'creation-table-expense-sheet' AND AUTHOR = 'smontes' AND FILENAME = 'db.changelog-1.2.xml';

UPDATE databasechangelog SET MD5SUM = '7:fd82da8c5923a583c93577be6e9d1966' WHERE ID = 'creation-table-expense-sheet-line' AND AUTHOR = 'smontes' AND FILENAME = 'db.changelog-1.2.xml';

UPDATE databasechangelog SET MD5SUM = '7:1a1e27fa06e7edafa594a33815ca1224' WHERE ID = 'add-new-column-generate-code-for-expense-sheets' AND AUTHOR = 'smontes' AND FILENAME = 'db.changelog-1.2.xml';

UPDATE databasechangelog SET MD5SUM = '7:770f539dcf73546e06896c123ab9f947' WHERE ID = 'modify-columns-type-in-expense-sheet-to-date' AND AUTHOR = 'smontes' AND FILENAME = 'db.changelog-1.2.xml';

UPDATE databasechangelog SET MD5SUM = '7:eb105238b8f0ae4a214d021b0978db5f' WHERE ID = 'modify-columns-type-in-expense-sheet-line-to-date' AND AUTHOR = 'smontes' AND FILENAME = 'db.changelog-1.2.xml';

UPDATE databasechangelog SET MD5SUM = '7:5d9bca2e7f1b8f981195a797590503b0' WHERE ID = 'create3-table-sum-expenses' AND AUTHOR = 'smontes' AND FILENAME = 'db.changelog-1.2.xml';

UPDATE databasechangelog SET MD5SUM = '7:276f86a8cf2e2ba3370dbc0ee6503945' WHERE ID = 'add-new-columns-for-currency-in-configuration' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-1.2.xml';

UPDATE databasechangelog SET MD5SUM = '7:742870949e94de88eebd508b975eada7' WHERE ID = 'remove-code-from-order_element_template' AND AUTHOR = 'jaragunde' AND FILENAME = 'db.changelog-1.2.xml';

UPDATE databasechangelog SET MD5SUM = '7:ccfe8146e8507d9bd37f62d228c1c500' WHERE ID = 'add-relationship-between-worker-and-user' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-1.2.xml';

UPDATE databasechangelog SET MD5SUM = '7:e8245928465affa694aac4cf360f474f' WHERE ID = 'add-monthly_timesheets_type_of_work_hours-to-configuration' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-1.2.xml';

UPDATE databasechangelog SET MD5SUM = '7:4f21bf38fc3940befc159d28e2e9cd50' WHERE ID = 'add-new-column-personal-to-expense_sheet-table' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-1.2.xml';

UPDATE databasechangelog SET MD5SUM = '7:40cc3c680d9e07a33d52f7718d3f40a2' WHERE ID = 'add-new-column-changed_default_wssubcontracting_password' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-1.2.xml';

UPDATE databasechangelog SET MD5SUM = '7:1f9d870879366441a3a77e8c6368d788' WHERE ID = 'rename-column-elt-in-roles_table-to-role' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-1.2.xml';

UPDATE databasechangelog SET MD5SUM = '7:1b1170273d93d03bf99f0834f2317d46' WHERE ID = 'rename-roles-in-roles_table' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-1.2.xml';

UPDATE databasechangelog SET MD5SUM = '7:644aa77485e46905702aeab473709e87' WHERE ID = 'rename-column-elt-in-profile_roles-to-role' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-1.2.xml';

UPDATE databasechangelog SET MD5SUM = '7:e9d1f3ddc79c48b9cd7bf3c7fdcf2557' WHERE ID = 'rename-roles-in-profile_roles' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-1.2.xml';

UPDATE databasechangelog SET MD5SUM = '7:0374f36b32a92d528d010ad9349c3dbf' WHERE ID = 'drop-column-changed_default_user_password-in-configuration' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-1.2.xml';

UPDATE databasechangelog SET MD5SUM = '7:492cdbfb7858dfa8394a8308a7708677' WHERE ID = 'add-new-column-changed_default_manager_password' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-1.2.xml';

UPDATE databasechangelog SET MD5SUM = '7:c586bf45dc11d95db160b4f3a42e6bb1' WHERE ID = 'add-new-column-changed_default_hresources_password' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-1.2.xml';

UPDATE databasechangelog SET MD5SUM = '7:f58cc07372a6a88dbed95fbc61b70861' WHERE ID = 'add-new-column-changed_default_outsourcing_password' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-1.2.xml';

UPDATE databasechangelog SET MD5SUM = '7:6a736fe36b04e1569a2fdb3f49ce4f8d' WHERE ID = 'add-new-column-changed_default_reports_password' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-1.2.xml';

UPDATE databasechangelog SET MD5SUM = '7:0c0f4bd813bd8b2d7aa842b31591b82b' WHERE ID = 'change-column-notes-in-task_element-to-text' AND AUTHOR = 'jaragunde' AND FILENAME = 'db.changelog-1.3.xml';

UPDATE databasechangelog SET MD5SUM = '7:a51bb4c3a40cb72003039d7d39ad3b32' WHERE ID = 'update-work_report_type-name-to-personal-timehseets' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-1.3.xml';

UPDATE databasechangelog SET MD5SUM = '7:da2d9e05990c3392cf400c00ee777d57' WHERE ID = 'add-personal_timesheets_periodicity-column-to-configuration' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-1.3.xml';

UPDATE databasechangelog SET MD5SUM = '7:ebdeb7296bcfecf91a8dcb7e414a58e7' WHERE ID = 'rename-column-from-monthly-to-personal-in-configuration' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-1.3.xml';

UPDATE databasechangelog SET MD5SUM = '7:10ea2931878daa5f0d60ca251f382017' WHERE ID = 'add-max_users-and-max_resources-columns-to-configuration' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-1.3.xml';

UPDATE databasechangelog SET MD5SUM = '7:6c2688e8f35139318e682af100606fdf' WHERE ID = 'add-columns-first-and-last-timesheet_date-to-sum_charged_effort' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-1.3.xml';

UPDATE databasechangelog SET MD5SUM = '7:8f7d3ce0cb68babcfadeecfcbe99ef0e' WHERE ID = 'add-new-column-read_only-to-advance_type' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-1.3.xml';

UPDATE databasechangelog SET MD5SUM = '7:8035d760c9107289a3f6f92e1adf37de' WHERE ID = 'add-new-column-finished-to-work_report_line' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-1.3.xml';

UPDATE databasechangelog SET MD5SUM = '7:ddf9915bb3364518059684203a4c14ef' WHERE ID = 'add-new-column-finished_timesheets-to-sum_charged_effort' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-1.3.xml';

UPDATE databasechangelog SET MD5SUM = '7:cfe0691912c47dbc2ee01d0079ebd262' WHERE ID = 'add-new-column-updated_from_timesheets-to-task_element' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-1.3.xml';

UPDATE databasechangelog SET MD5SUM = '7:ff2abfa52722fec1c4a826bb67ec9c30' WHERE ID = 'update-status-values-in-order_table' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-1.3.xml';

UPDATE databasechangelog SET MD5SUM = '7:aa584731bd56fed462fa30c8f31890c2' WHERE ID = 'drop-unique-constraint-code-in-order_element' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-1.3.xml';

UPDATE databasechangelog SET MD5SUM = '7:24c17e2270dcb5e8ca549dfdfb9d95d3' WHERE ID = 'add-seconds_planning_warning-column-to-configuration' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-1.3.xml';

UPDATE databasechangelog SET MD5SUM = '7:bf66808003065c19f1165d4d04059b2d' WHERE ID = 'add-updatable-boolean-column-to-calendar-exception-type' AND AUTHOR = 'acarro' AND FILENAME = 'db.changelog-1.3.xml';

UPDATE databasechangelog SET MD5SUM = '7:6a1d8e0163009c775688fcabb5fcd122' WHERE ID = 'create-table-order-sync-info' AND AUTHOR = 'miciele' AND FILENAME = 'db.changelog-1.3.xml';

UPDATE databasechangelog SET MD5SUM = '7:4098f696e1eedeb3fa8b1226aa275ab7' WHERE ID = 'create-tables-related-to-connector-entity' AND AUTHOR = 'rego' AND FILENAME = 'db.changelog-1.3.xml';

UPDATE databasechangelog SET MD5SUM = '7:fe7c89fabfb5b75029f3dd63cfb49e98' WHERE ID = 'create-table-job-scheduler-configuration' AND AUTHOR = 'miciele' AND FILENAME = 'db.changelog-1.3.xml';

UPDATE databasechangelog SET MD5SUM = '7:0d21457a5941a9df8f61c936e79ca43d' WHERE ID = 'add-projects_filter_period_since-column-to-user_table' AND AUTHOR = 'ltilve' AND FILENAME = 'db.changelog-1.3.xml';

UPDATE databasechangelog SET MD5SUM = '7:e689b0b92e0a6d02e0232386fa004f22' WHERE ID = 'add-projects_filter_period_to-column-to-user_table' AND AUTHOR = 'ltilve' AND FILENAME = 'db.changelog-1.3.xml';

UPDATE databasechangelog SET MD5SUM = '7:ab570c2ada1dc26bc48b948dac90d9f8' WHERE ID = 'add-resources_load_filter_period_since-column-to-user_table' AND AUTHOR = 'ltilve' AND FILENAME = 'db.changelog-1.3.xml';

UPDATE databasechangelog SET MD5SUM = '7:a88bfda7da71206c673300ce01b01708' WHERE ID = 'add-resources_load_filter_period_to-column-to-user_table' AND AUTHOR = 'ltilve' AND FILENAME = 'db.changelog-1.3.xml';

UPDATE databasechangelog SET MD5SUM = '7:58ff21fac5a0cfc347a76c79a2d3c0e1' WHERE ID = 'add-projects_filter_label_id-column-to-user_table' AND AUTHOR = 'ltilve' AND FILENAME = 'db.changelog-1.3.xml';

UPDATE databasechangelog SET MD5SUM = '7:5ba89d91e6f02c87a420036e07354fb9' WHERE ID = 'add-resources_load_filter_criterion_id-column-to-user_table' AND AUTHOR = 'ltilve' AND FILENAME = 'db.changelog-1.3.xml';

UPDATE databasechangelog SET MD5SUM = '7:440cdc5d751b65675d018d5a90fdc3a3' WHERE ID = 'add-projects_filter_label_id-fk-to-user_table' AND AUTHOR = 'ltilve' AND FILENAME = 'db.changelog-1.3.xml';

UPDATE databasechangelog SET MD5SUM = '7:3857373c886a568e32a5566eae5fa8e3' WHERE ID = 'add-resources_load_filter_fk_id-column-to-user_table' AND AUTHOR = 'ltilve' AND FILENAME = 'db.changelog-1.3.xml';

-- Changeset db.changelog-database.xml::rename_work_report_label_type_assigment::pluchyn
ALTER TABLE work_report_label_type_assigment RENAME TO work_report_label_type_assignment;

INSERT INTO databasechangelog (ID, AUTHOR, FILENAME, DATEEXECUTED, ORDEREXECUTED, MD5SUM, DESCRIPTION, COMMENTS, EXECTYPE, CONTEXTS, LABELS, LIQUIBASE, DEPLOYMENT_ID) VALUES ('rename_work_report_label_type_assigment', 'pluchyn', 'db.changelog-database.xml', NOW(), 450, '7:53a9c49f5aa7f02c636516071685dcef', 'renameTable newTableName=work_report_label_type_assignment, oldTableName=work_report_label_type_assigment', '', 'EXECUTED', NULL, NULL, '3.5.1', '7988093552');

-- Changeset db.changelog-database.xml::drop_pkey_work_report_label_type_assignment::pluchyn
ALTER TABLE work_report_label_type_assignment DROP CONSTRAINT work_report_label_type_assigment_pkey;

INSERT INTO databasechangelog (ID, AUTHOR, FILENAME, DATEEXECUTED, ORDEREXECUTED, MD5SUM, DESCRIPTION, COMMENTS, EXECTYPE, CONTEXTS, LABELS, LIQUIBASE, DEPLOYMENT_ID) VALUES ('drop_pkey_work_report_label_type_assignment', 'pluchyn', 'db.changelog-database.xml', NOW(), 451, '7:cf38a201becd6c6a676b237e34357359', 'dropPrimaryKey constraintName=work_report_label_type_assigment_pkey, tableName=work_report_label_type_assignment', '', 'EXECUTED', NULL, NULL, '3.5.1', '7988093552');

-- Changeset db.changelog-database.xml::add_pkey_work_report_label_type_assignment::pluchyn
ALTER TABLE work_report_label_type_assignment ADD CONSTRAINT work_report_label_type_assignment_pkey PRIMARY KEY (id);

INSERT INTO databasechangelog (ID, AUTHOR, FILENAME, DATEEXECUTED, ORDEREXECUTED, MD5SUM, DESCRIPTION, COMMENTS, EXECTYPE, CONTEXTS, LABELS, LIQUIBASE, DEPLOYMENT_ID) VALUES ('add_pkey_work_report_label_type_assignment', 'pluchyn', 'db.changelog-database.xml', NOW(), 452, '7:c606b2c51f85c4747c79ed2c06785f31', 'addPrimaryKey constraintName=work_report_label_type_assignment_pkey, tableName=work_report_label_type_assignment', '', 'EXECUTED', NULL, NULL, '3.5.1', '7988093552');

-- Changeset db.changelog-database.xml::drop_fkey_constraints_work_report_label_type_assignment::pluchyn
ALTER TABLE work_report_label_type_assignment DROP CONSTRAINT fkbb262920c1c2746e;

ALTER TABLE work_report_label_type_assignment DROP CONSTRAINT fkbb262920707cd777;

ALTER TABLE work_report_label_type_assignment DROP CONSTRAINT fkbb262920131853a1;

INSERT INTO databasechangelog (ID, AUTHOR, FILENAME, DATEEXECUTED, ORDEREXECUTED, MD5SUM, DESCRIPTION, COMMENTS, EXECTYPE, CONTEXTS, LABELS, LIQUIBASE, DEPLOYMENT_ID) VALUES ('drop_fkey_constraints_work_report_label_type_assignment', 'pluchyn', 'db.changelog-database.xml', NOW(), 453, '7:d0f63e10c091f7b34a22df5bdf7c6daa', 'dropForeignKeyConstraint baseTableName=work_report_label_type_assignment, constraintName=fkbb262920c1c2746e; dropForeignKeyConstraint baseTableName=work_report_label_type_assignment, constraintName=fkbb262920707cd777; dropForeignKeyConstraint base...', '', 'EXECUTED', NULL, NULL, '3.5.1', '7988093552');

-- Changeset db.changelog-database.xml::add_fkey_constraints_work_report_label_type_assignment::pluchyn
ALTER TABLE work_report_label_type_assignment ADD CONSTRAINT fkbb262920c1c2746e FOREIGN KEY (label_id) REFERENCES label (id) ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE work_report_label_type_assignment ADD CONSTRAINT fkbb262920707cd777 FOREIGN KEY (label_type_id) REFERENCES label_type (id) ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE work_report_label_type_assignment ADD CONSTRAINT fkbb262920131853a1 FOREIGN KEY (work_report_type_id) REFERENCES work_report_type (id) ON UPDATE NO ACTION ON DELETE NO ACTION;

INSERT INTO databasechangelog (ID, AUTHOR, FILENAME, DATEEXECUTED, ORDEREXECUTED, MD5SUM, DESCRIPTION, COMMENTS, EXECTYPE, CONTEXTS, LABELS, LIQUIBASE, DEPLOYMENT_ID) VALUES ('add_fkey_constraints_work_report_label_type_assignment', 'pluchyn', 'db.changelog-database.xml', NOW(), 454, '7:cf7fcdbb311a5ac787a910a031ee65c3', 'addForeignKeyConstraint baseTableName=work_report_label_type_assignment, constraintName=fkbb262920c1c2746e, referencedTableName=label; addForeignKeyConstraint baseTableName=work_report_label_type_assignment, constraintName=fkbb262920707cd777, refe...', '', 'EXECUTED', NULL, NULL, '3.5.1', '7988093552');

-- Changeset db.changelog-database.xml::rename_material_assigment::pluchyn
ALTER TABLE material_assigment RENAME TO material_assignment;

INSERT INTO databasechangelog (ID, AUTHOR, FILENAME, DATEEXECUTED, ORDEREXECUTED, MD5SUM, DESCRIPTION, COMMENTS, EXECTYPE, CONTEXTS, LABELS, LIQUIBASE, DEPLOYMENT_ID) VALUES ('rename_material_assigment', 'pluchyn', 'db.changelog-database.xml', NOW(), 455, '7:b6536b1130eca344fb5abc9141b0b3b0', 'renameTable newTableName=material_assignment, oldTableName=material_assigment', '', 'EXECUTED', NULL, NULL, '3.5.1', '7988093552');

-- Changeset db.changelog-database.xml::drop_pkey_material_assignment::pluchyn
ALTER TABLE material_assignment DROP CONSTRAINT material_assigment_pkey;

INSERT INTO databasechangelog (ID, AUTHOR, FILENAME, DATEEXECUTED, ORDEREXECUTED, MD5SUM, DESCRIPTION, COMMENTS, EXECTYPE, CONTEXTS, LABELS, LIQUIBASE, DEPLOYMENT_ID) VALUES ('drop_pkey_material_assignment', 'pluchyn', 'db.changelog-database.xml', NOW(), 456, '7:69c859a64c27c541e754a5db365aa892', 'dropPrimaryKey constraintName=material_assigment_pkey, tableName=material_assignment', '', 'EXECUTED', NULL, NULL, '3.5.1', '7988093552');

-- Changeset db.changelog-database.xml::add_pkey_material_assignment::pluchyn
ALTER TABLE material_assignment ADD CONSTRAINT material_assignment_pkey PRIMARY KEY (id);

INSERT INTO databasechangelog (ID, AUTHOR, FILENAME, DATEEXECUTED, ORDEREXECUTED, MD5SUM, DESCRIPTION, COMMENTS, EXECTYPE, CONTEXTS, LABELS, LIQUIBASE, DEPLOYMENT_ID) VALUES ('add_pkey_material_assignment', 'pluchyn', 'db.changelog-database.xml', NOW(), 457, '7:d073c3db0a904794c5106a37a888a7df', 'addPrimaryKey constraintName=material_assignment_pkey, tableName=material_assignment', '', 'EXECUTED', NULL, NULL, '3.5.1', '7988093552');

-- Changeset db.changelog-database.xml::rename_material_assigment_template::pluchyn
ALTER TABLE material_assigment_template RENAME TO material_assignment_template;

INSERT INTO databasechangelog (ID, AUTHOR, FILENAME, DATEEXECUTED, ORDEREXECUTED, MD5SUM, DESCRIPTION, COMMENTS, EXECTYPE, CONTEXTS, LABELS, LIQUIBASE, DEPLOYMENT_ID) VALUES ('rename_material_assigment_template', 'pluchyn', 'db.changelog-database.xml', NOW(), 458, '7:1d136d2bf826e11ec309ef229c13859f', 'renameTable newTableName=material_assignment_template, oldTableName=material_assigment_template', '', 'EXECUTED', NULL, NULL, '3.5.1', '7988093552');

-- Changeset db.changelog-database.xml::drop_pkey_material_assignment_template::pluchyn
ALTER TABLE material_assignment_template DROP CONSTRAINT material_assigment_template_pkey;

INSERT INTO databasechangelog (ID, AUTHOR, FILENAME, DATEEXECUTED, ORDEREXECUTED, MD5SUM, DESCRIPTION, COMMENTS, EXECTYPE, CONTEXTS, LABELS, LIQUIBASE, DEPLOYMENT_ID) VALUES ('drop_pkey_material_assignment_template', 'pluchyn', 'db.changelog-database.xml', NOW(), 459, '7:f8aac5fa8c9b6402d77c4c34fd7ddeba', 'dropPrimaryKey constraintName=material_assigment_template_pkey, tableName=material_assignment_template', '', 'EXECUTED', NULL, NULL, '3.5.1', '7988093552');

-- Changeset db.changelog-database.xml::add_pkey_material_assignment_template::pluchyn
ALTER TABLE material_assignment_template ADD CONSTRAINT material_assignment_template_pkey PRIMARY KEY (id);

INSERT INTO databasechangelog (ID, AUTHOR, FILENAME, DATEEXECUTED, ORDEREXECUTED, MD5SUM, DESCRIPTION, COMMENTS, EXECTYPE, CONTEXTS, LABELS, LIQUIBASE, DEPLOYMENT_ID) VALUES ('add_pkey_material_assignment_template', 'pluchyn', 'db.changelog-database.xml', NOW(), 460, '7:71d8d211fbb71d832c96092a35f52842', 'addPrimaryKey constraintName=material_assignment_template_pkey, tableName=material_assignment_template', '', 'EXECUTED', NULL, NULL, '3.5.1', '7988093552');

-- Changeset db.changelog-database.xml::rename_order_element-last_advance_meausurement_for_spreading::pluchyn
ALTER TABLE order_element RENAME COLUMN last_advance_meausurement_for_spreading TO last_advance_measurement_for_spreading;

INSERT INTO databasechangelog (ID, AUTHOR, FILENAME, DATEEXECUTED, ORDEREXECUTED, MD5SUM, DESCRIPTION, COMMENTS, EXECTYPE, CONTEXTS, LABELS, LIQUIBASE, DEPLOYMENT_ID) VALUES ('rename_order_element-last_advance_meausurement_for_spreading', 'pluchyn', 'db.changelog-database.xml', NOW(), 461, '7:b239264c0a23365e7fd097cb3f0ef93d', 'renameColumn newColumnName=last_advance_measurement_for_spreading, oldColumnName=last_advance_meausurement_for_spreading, tableName=order_element', '', 'EXECUTED', NULL, NULL, '3.5.1', '7988093552');

-- Changeset db.changelog-database.xml::rename_task-subcontrated_task_data_id::pluchyn
ALTER TABLE task RENAME COLUMN subcontrated_task_data_id TO subcontracted_task_data_id;

INSERT INTO databasechangelog (ID, AUTHOR, FILENAME, DATEEXECUTED, ORDEREXECUTED, MD5SUM, DESCRIPTION, COMMENTS, EXECTYPE, CONTEXTS, LABELS, LIQUIBASE, DEPLOYMENT_ID) VALUES ('rename_task-subcontrated_task_data_id', 'pluchyn', 'db.changelog-database.xml', NOW(), 462, '7:d2538a5ecb492a8fc9ca3bc837bc23ce', 'renameColumn newColumnName=subcontracted_task_data_id, oldColumnName=subcontrated_task_data_id, tableName=task', '', 'EXECUTED', NULL, NULL, '3.5.1', '7988093552');

-- Changeset db.changelog-database.xml::drop_unique_constraint_task::pluchyn
ALTER TABLE task DROP CONSTRAINT task_subcontrated_task_data_id_key;

INSERT INTO databasechangelog (ID, AUTHOR, FILENAME, DATEEXECUTED, ORDEREXECUTED, MD5SUM, DESCRIPTION, COMMENTS, EXECTYPE, CONTEXTS, LABELS, LIQUIBASE, DEPLOYMENT_ID) VALUES ('drop_unique_constraint_task', 'pluchyn', 'db.changelog-database.xml', NOW(), 463, '7:dba49e8166420173023949ec953695f7', 'dropUniqueConstraint constraintName=task_subcontrated_task_data_id_key, tableName=task', '', 'EXECUTED', NULL, NULL, '3.5.1', '7988093552');

-- Changeset db.changelog-database.xml::add_unique_constraint_task::pluchyn
ALTER TABLE task ADD CONSTRAINT task_subcontracted_task_data_id_key UNIQUE (subcontracted_task_data_id);

INSERT INTO databasechangelog (ID, AUTHOR, FILENAME, DATEEXECUTED, ORDEREXECUTED, MD5SUM, DESCRIPTION, COMMENTS, EXECTYPE, CONTEXTS, LABELS, LIQUIBASE, DEPLOYMENT_ID) VALUES ('add_unique_constraint_task', 'pluchyn', 'db.changelog-database.xml', NOW(), 464, '7:df0886dd7f24c03f0664afb0be8bd567', 'addUniqueConstraint constraintName=task_subcontracted_task_data_id_key, tableName=task', '', 'EXECUTED', NULL, NULL, '3.5.1', '7988093552');

-- Changeset db.changelog-database.xml::drop_fkey-material_assignment-material_assignment_template::pluchyn
ALTER TABLE material_assignment DROP CONSTRAINT fkb3e9425b5c68337;

ALTER TABLE material_assignment DROP CONSTRAINT fkb3e9425efda874f;

ALTER TABLE material_assignment_template DROP CONSTRAINT fk35254354b5c68337;

ALTER TABLE material_assignment_template DROP CONSTRAINT fk3525435419b9dfde;

INSERT INTO databasechangelog (ID, AUTHOR, FILENAME, DATEEXECUTED, ORDEREXECUTED, MD5SUM, DESCRIPTION, COMMENTS, EXECTYPE, CONTEXTS, LABELS, LIQUIBASE, DEPLOYMENT_ID) VALUES ('drop_fkey-material_assignment-material_assignment_template', 'pluchyn', 'db.changelog-database.xml', NOW(), 465, '7:3972f1659bce1687376eef4944a34147', 'dropForeignKeyConstraint baseTableName=material_assignment, constraintName=fkb3e9425b5c68337; dropForeignKeyConstraint baseTableName=material_assignment, constraintName=fkb3e9425efda874f; dropForeignKeyConstraint baseTableName=material_assignment_...', '', 'EXECUTED', NULL, NULL, '3.5.1', '7988093552');

-- Changeset db.changelog-database.xml::add_fkey_material_assignment-material_assignment_template::pluchyn
ALTER TABLE material_assignment ADD CONSTRAINT fkb3e9425b5c68337 FOREIGN KEY (material_id) REFERENCES material (id) ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE material_assignment ADD CONSTRAINT fkb3e9425efda874f FOREIGN KEY (order_element_id) REFERENCES order_element (id) ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE material_assignment_template ADD CONSTRAINT fk35254354b5c68337 FOREIGN KEY (material_id) REFERENCES material (id) ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE material_assignment_template ADD CONSTRAINT fk3525435419b9dfde FOREIGN KEY (order_element_template_id) REFERENCES order_element_template (id) ON UPDATE NO ACTION ON DELETE NO ACTION;

INSERT INTO databasechangelog (ID, AUTHOR, FILENAME, DATEEXECUTED, ORDEREXECUTED, MD5SUM, DESCRIPTION, COMMENTS, EXECTYPE, CONTEXTS, LABELS, LIQUIBASE, DEPLOYMENT_ID) VALUES ('add_fkey_material_assignment-material_assignment_template', 'pluchyn', 'db.changelog-database.xml', NOW(), 466, '7:3681706c5711e5c6f1660e502434c6aa', 'addForeignKeyConstraint baseTableName=material_assignment, constraintName=fkb3e9425b5c68337, referencedTableName=material; addForeignKeyConstraint baseTableName=material_assignment, constraintName=fkb3e9425efda874f, referencedTableName=order_eleme...', '', 'EXECUTED', NULL, NULL, '3.5.1', '7988093552');

-- Changeset db.changelog-database.xml::drop_fkey_task::pluchyn
ALTER TABLE task DROP CONSTRAINT fk3635855b595a0;

INSERT INTO databasechangelog (ID, AUTHOR, FILENAME, DATEEXECUTED, ORDEREXECUTED, MD5SUM, DESCRIPTION, COMMENTS, EXECTYPE, CONTEXTS, LABELS, LIQUIBASE, DEPLOYMENT_ID) VALUES ('drop_fkey_task', 'pluchyn', 'db.changelog-database.xml', NOW(), 467, '7:6d6a72fdc5a7619ca53e1852be22cfdc', 'dropForeignKeyConstraint baseTableName=task, constraintName=fk3635855b595a0', '', 'EXECUTED', NULL, NULL, '3.5.1', '7988093552');

-- Changeset db.changelog-database.xml::add_fkey_task::pluchyn
ALTER TABLE task ADD CONSTRAINT fk3635855b595a0 FOREIGN KEY (subcontracted_task_data_id) REFERENCES subcontracted_task_data (id) ON UPDATE NO ACTION ON DELETE NO ACTION;

INSERT INTO databasechangelog (ID, AUTHOR, FILENAME, DATEEXECUTED, ORDEREXECUTED, MD5SUM, DESCRIPTION, COMMENTS, EXECTYPE, CONTEXTS, LABELS, LIQUIBASE, DEPLOYMENT_ID) VALUES ('add_fkey_task', 'pluchyn', 'db.changelog-database.xml', NOW(), 468, '7:7a7661bdb08990527ad8e44feea3277b', 'addForeignKeyConstraint baseTableName=task, constraintName=fk3635855b595a0, referencedTableName=subcontracted_task_data', '', 'EXECUTED', NULL, NULL, '3.5.1', '7988093552');

-- Changeset db.changelog-1.2.xml::update allow_to_gather_usage_stats_enabled::bogdan/jeroen
-- Update allow_to_gather_usage_stats_enabled field
UPDATE configuration SET allow_to_gather_usage_stats_enabled = TRUE;

INSERT INTO databasechangelog (ID, AUTHOR, FILENAME, DATEEXECUTED, ORDEREXECUTED, MD5SUM, DESCRIPTION, COMMENTS, EXECTYPE, CONTEXTS, LABELS, LIQUIBASE, DEPLOYMENT_ID) VALUES ('update allow_to_gather_usage_stats_enabled', 'bogdan/jeroen', 'db.changelog-1.2.xml', NOW(), 469, '7:74bc7a87c4b728c8b6376df0364bec17', 'update tableName=configuration', 'Update allow_to_gather_usage_stats_enabled field', 'EXECUTED', NULL, NULL, '3.5.1', '7988093552');

-- Changeset db.changelog-1.2.xml::change_default_value_for_gather_usage_stats::pluchyn
ALTER TABLE configuration ALTER COLUMN  allow_to_gather_usage_stats_enabled SET DEFAULT TRUE;

UPDATE configuration SET allow_to_gather_usage_stats_enabled = 'TRUE' WHERE allow_to_gather_usage_stats_enabled IS NULL;

ALTER TABLE configuration ALTER COLUMN  allow_to_gather_usage_stats_enabled SET NOT NULL;

INSERT INTO databasechangelog (ID, AUTHOR, FILENAME, DATEEXECUTED, ORDEREXECUTED, MD5SUM, DESCRIPTION, COMMENTS, EXECTYPE, CONTEXTS, LABELS, LIQUIBASE, DEPLOYMENT_ID) VALUES ('change_default_value_for_gather_usage_stats', 'pluchyn', 'db.changelog-1.2.xml', NOW(), 470, '7:035c66a73e986edf18a4ada2257f2559', 'addDefaultValue columnName=allow_to_gather_usage_stats_enabled, tableName=configuration; addNotNullConstraint columnName=allow_to_gather_usage_stats_enabled, tableName=configuration', '', 'EXECUTED', NULL, NULL, '3.5.1', '7988093552');

-- Changeset db.changelog-1.3.xml::add-new-column-hours-margin::miciele
-- Add new column hours_margin in table order_table
ALTER TABLE order_table ADD hours_margin INT;

INSERT INTO databasechangelog (ID, AUTHOR, FILENAME, DATEEXECUTED, ORDEREXECUTED, MD5SUM, DESCRIPTION, COMMENTS, EXECTYPE, CONTEXTS, LABELS, LIQUIBASE, DEPLOYMENT_ID) VALUES ('add-new-column-hours-margin', 'miciele', 'db.changelog-1.3.xml', NOW(), 471, '7:aeaa435fce3c23f069e7d594d2f04152', 'addColumn tableName=order_table', 'Add new column hours_margin in table order_table', 'EXECUTED', NULL, NULL, '3.5.1', '7988093552');

-- Changeset db.changelog-1.3.xml::add-new-column-budget-margin::miciele
-- Add new column budget_margin in table order_table
ALTER TABLE order_table ADD budget_margin INT;

INSERT INTO databasechangelog (ID, AUTHOR, FILENAME, DATEEXECUTED, ORDEREXECUTED, MD5SUM, DESCRIPTION, COMMENTS, EXECTYPE, CONTEXTS, LABELS, LIQUIBASE, DEPLOYMENT_ID) VALUES ('add-new-column-budget-margin', 'miciele', 'db.changelog-1.3.xml', NOW(), 472, '7:c4f2bd2ec5b9c17d526a6367fc875f6d', 'addColumn tableName=order_table', 'Add new column budget_margin in table order_table', 'EXECUTED', NULL, NULL, '3.5.1', '7988093552');

-- Changeset db.changelog-1.4.xml::add-id_cost_category-column-to-criterion-table::ltilve
-- Add column to criterion table to store the relationship with cost category
ALTER TABLE criterion ADD id_cost_category BIGINT;

INSERT INTO databasechangelog (ID, AUTHOR, FILENAME, DATEEXECUTED, ORDEREXECUTED, MD5SUM, DESCRIPTION, COMMENTS, EXECTYPE, CONTEXTS, LABELS, LIQUIBASE, DEPLOYMENT_ID) VALUES ('add-id_cost_category-column-to-criterion-table', 'ltilve', 'db.changelog-1.4.xml', NOW(), 473, '7:ac318a2d19dbff96f1023ab5b1f99123', 'addColumn tableName=criterion', 'Add column to criterion table to store the relationship with cost category', 'EXECUTED', NULL, NULL, '3.5.1', '7988093552');

-- Changeset db.changelog-1.4.xml::add-id_cost_category-fk-to-criterion-table::ltilve
-- Add foreign key constraint to new id_cost_category column on cost_category id
ALTER TABLE criterion ADD CONSTRAINT cost_category_fkey FOREIGN KEY (id_cost_category) REFERENCES cost_category (id) ON DELETE SET NULL;

INSERT INTO databasechangelog (ID, AUTHOR, FILENAME, DATEEXECUTED, ORDEREXECUTED, MD5SUM, DESCRIPTION, COMMENTS, EXECTYPE, CONTEXTS, LABELS, LIQUIBASE, DEPLOYMENT_ID) VALUES ('add-id_cost_category-fk-to-criterion-table', 'ltilve', 'db.changelog-1.4.xml', NOW(), 474, '7:39e1405584ad36ca9498c56e83c7d259', 'addForeignKeyConstraint baseTableName=criterion, constraintName=cost_category_fkey, referencedTableName=cost_category', 'Add foreign key constraint to new id_cost_category column on cost_category id', 'EXECUTED', NULL, NULL, '3.5.1', '7988093552');

-- Changeset db.changelog-1.4.xml::add-new-column-automatic_budget_enabled::ltilve
-- Add new column automatic_budget_enabled with default value FALSE to configuration table
ALTER TABLE configuration ADD automatic_budget_enabled BOOLEAN;

ALTER TABLE configuration ALTER COLUMN  automatic_budget_enabled SET DEFAULT FALSE;

UPDATE configuration SET automatic_budget_enabled = 'FALSE' WHERE automatic_budget_enabled IS NULL;

ALTER TABLE configuration ALTER COLUMN  automatic_budget_enabled SET NOT NULL;

INSERT INTO databasechangelog (ID, AUTHOR, FILENAME, DATEEXECUTED, ORDEREXECUTED, MD5SUM, DESCRIPTION, COMMENTS, EXECTYPE, CONTEXTS, LABELS, LIQUIBASE, DEPLOYMENT_ID) VALUES ('add-new-column-automatic_budget_enabled', 'ltilve', 'db.changelog-1.4.xml', NOW(), 475, '7:81026d75982fc9c641ac94d47418462f', 'addColumn tableName=configuration; addDefaultValue columnName=automatic_budget_enabled, tableName=configuration; addNotNullConstraint columnName=automatic_budget_enabled, tableName=configuration', 'Add new column automatic_budget_enabled with default value FALSE to configuration table', 'EXECUTED', NULL, NULL, '3.5.1', '7988093552');

-- Changeset db.changelog-1.4.xml::add-automatic_budget_type_of_work_hours-to-configuration::ltilve
-- Add new column automatic_budget_type_of_work_hours to
--             configuration table.
ALTER TABLE configuration ADD automatic_budget_type_of_work_hours BIGINT;

ALTER TABLE configuration ADD CONSTRAINT automatic_budget_type_of_work_hours_fkey FOREIGN KEY (automatic_budget_type_of_work_hours) REFERENCES type_of_work_hours (id);

INSERT INTO databasechangelog (ID, AUTHOR, FILENAME, DATEEXECUTED, ORDEREXECUTED, MD5SUM, DESCRIPTION, COMMENTS, EXECTYPE, CONTEXTS, LABELS, LIQUIBASE, DEPLOYMENT_ID) VALUES ('add-automatic_budget_type_of_work_hours-to-configuration', 'ltilve', 'db.changelog-1.4.xml', NOW(), 476, '7:1f2bdf23e8a35c54b1058c8ae627ae2e', 'addColumn tableName=configuration; addForeignKeyConstraint baseTableName=configuration, constraintName=automatic_budget_type_of_work_hours_fkey, referencedTableName=type_of_work_hours', 'Add new column automatic_budget_type_of_work_hours to
            configuration table.', 'EXECUTED', NULL, NULL, '3.5.1', '7988093552');

-- Changeset db.changelog-1.4.xml::adding-limits::vova/jeroen
CREATE TABLE limits (id BIGSERIAL NOT NULL, type VARCHAR(20), value INT, CONSTRAINT limits_pkey PRIMARY KEY (id));

ALTER TABLE limits ADD CONSTRAINT type UNIQUE (type);

INSERT INTO limits VALUES(0, 'users', 5);

INSERT INTO limits VALUES(1, 'workers+machines', 10);

INSERT INTO databasechangelog (ID, AUTHOR, FILENAME, DATEEXECUTED, ORDEREXECUTED, MD5SUM, DESCRIPTION, COMMENTS, EXECTYPE, CONTEXTS, LABELS, LIQUIBASE, DEPLOYMENT_ID) VALUES ('adding-limits', 'vova/jeroen', 'db.changelog-1.4.xml', NOW(), 477, '7:b5145a99fcd365131b77887b3bca0126', 'createTable tableName=limits; addUniqueConstraint constraintName=type, tableName=limits; sql', '', 'EXECUTED', NULL, NULL, '3.5.1', '7988093552');

-- Changeset db.changelog-1.4.1.xml::change-primary-key::vmazurashu
ALTER TABLE limits ADD tmp_id BIGINT;

UPDATE limits SET tmp_id = id;

ALTER TABLE limits DROP CONSTRAINT limits_pkey;

ALTER TABLE limits DROP COLUMN id;

ALTER TABLE limits RENAME COLUMN tmp_id TO id;

ALTER TABLE limits ADD CONSTRAINT limits_pkey PRIMARY KEY (id);

INSERT INTO databasechangelog (ID, AUTHOR, FILENAME, DATEEXECUTED, ORDEREXECUTED, MD5SUM, DESCRIPTION, COMMENTS, EXECTYPE, CONTEXTS, LABELS, LIQUIBASE, DEPLOYMENT_ID) VALUES ('change-primary-key', 'vmazurashu', 'db.changelog-1.4.1.xml', NOW(), 478, '7:429a72a91c4c9d776fa4e35c5e4d1c64', 'sql; addPrimaryKey constraintName=limits_pkey, tableName=limits', '', 'EXECUTED', NULL, NULL, '3.5.1', '7988093552');

-- Changeset db.changelog-1.4.1.xml::update-values::vmazurashu
UPDATE limits SET value = 0;

INSERT INTO databasechangelog (ID, AUTHOR, FILENAME, DATEEXECUTED, ORDEREXECUTED, MD5SUM, DESCRIPTION, COMMENTS, EXECTYPE, CONTEXTS, LABELS, LIQUIBASE, DEPLOYMENT_ID) VALUES ('update-values', 'vmazurashu', 'db.changelog-1.4.1.xml', NOW(), 479, '7:844d5d4e4d03895fe57727720a292767', 'sql', '', 'EXECUTED', NULL, NULL, '3.5.1', '7988093552');

-- Changeset db.changelog-1.4.1.xml::update-unique-constraint::vmazurashu
ALTER TABLE limits DROP CONSTRAINT type;

ALTER TABLE limits ADD CONSTRAINT limits_type UNIQUE (type);

INSERT INTO databasechangelog (ID, AUTHOR, FILENAME, DATEEXECUTED, ORDEREXECUTED, MD5SUM, DESCRIPTION, COMMENTS, EXECTYPE, CONTEXTS, LABELS, LIQUIBASE, DEPLOYMENT_ID) VALUES ('update-unique-constraint', 'vmazurashu', 'db.changelog-1.4.1.xml', NOW(), 480, '7:357acd1a01c2bb3b5273ef4a97cb6dc8', 'dropUniqueConstraint constraintName=type, tableName=limits; addUniqueConstraint constraintName=limits_type, tableName=limits', '', 'EXECUTED', NULL, NULL, '3.5.1', '7988093552');

-- Changeset db.changelog-1.5.xml::adding-email_template-table::vova/jeroen
CREATE TABLE email_template (id BIGSERIAL NOT NULL, type INT, language INT, content VARCHAR(2048), subject VARCHAR(1024), CONSTRAINT email_templates_pkey PRIMARY KEY (id));

ALTER TABLE email_template ADD CONSTRAINT email_template_type_language UNIQUE (type, language);

CREATE INDEX language_index ON email_template(language);

CREATE INDEX type_index ON email_template(type);

INSERT INTO databasechangelog (ID, AUTHOR, FILENAME, DATEEXECUTED, ORDEREXECUTED, MD5SUM, DESCRIPTION, COMMENTS, EXECTYPE, CONTEXTS, LABELS, LIQUIBASE, DEPLOYMENT_ID) VALUES ('adding-email_template-table', 'vova/jeroen', 'db.changelog-1.5.xml', NOW(), 481, '7:29c8b47b62933193376d544040cfb332', 'createTable tableName=email_template; addUniqueConstraint constraintName=email_template_type_language, tableName=email_template; createIndex indexName=language_index, tableName=email_template; createIndex indexName=type_index, tableName=email_temp...', '', 'EXECUTED', NULL, NULL, '3.5.1', '7988093552');

-- Changeset db.changelog-1.5.xml::adding-notification_notification_queue::vova
CREATE TABLE notification_queue (id BIGSERIAL NOT NULL, type INT, updated TIMESTAMP WITHOUT TIME ZONE, resource BIGINT, task BIGINT, project BIGINT, CONSTRAINT notification_queue_pkey PRIMARY KEY (id));

ALTER TABLE notification_queue ADD UNIQUE (type, resource, task, project);

INSERT INTO databasechangelog (ID, AUTHOR, FILENAME, DATEEXECUTED, ORDEREXECUTED, MD5SUM, DESCRIPTION, COMMENTS, EXECTYPE, CONTEXTS, LABELS, LIQUIBASE, DEPLOYMENT_ID) VALUES ('adding-notification_notification_queue', 'vova', 'db.changelog-1.5.xml', NOW(), 482, '7:24c7d899257557dd96a6391f2f274972', 'createTable tableName=notification_queue; addUniqueConstraint tableName=notification_queue', '', 'EXECUTED', NULL, NULL, '3.5.1', '7988093552');

-- Changeset db.changelog-1.5.xml::adding-issue_log-table::misha/vova
CREATE TABLE issue_log (id BIGSERIAL NOT NULL, code VARCHAR(25), project BIGINT, type INT, description VARCHAR(1024), priority INT, severity INT, created_by BIGINT, assigned_to VARCHAR(512), status VARCHAR(50), date_raised TIMESTAMP WITHOUT TIME ZONE, deadline TIMESTAMP WITHOUT TIME ZONE, date_resolved TIMESTAMP WITHOUT TIME ZONE, notes VARCHAR(1024), CONSTRAINT issue_log_pkey PRIMARY KEY (id));

ALTER TABLE issue_log ADD CONSTRAINT issue_log_project_order_element_table FOREIGN KEY (project) REFERENCES order_element (id);

ALTER TABLE issue_log ADD CONSTRAINT issue_log_user_user_table FOREIGN KEY (created_by) REFERENCES user_table (id);

ALTER TABLE issue_log ADD CONSTRAINT issue_log_unique_code UNIQUE (code);

INSERT INTO databasechangelog (ID, AUTHOR, FILENAME, DATEEXECUTED, ORDEREXECUTED, MD5SUM, DESCRIPTION, COMMENTS, EXECTYPE, CONTEXTS, LABELS, LIQUIBASE, DEPLOYMENT_ID) VALUES ('adding-issue_log-table', 'misha/vova', 'db.changelog-1.5.xml', NOW(), 483, '7:baef2f27ea3a499e89242f2c6ac25f4a', 'createTable tableName=issue_log; addForeignKeyConstraint baseTableName=issue_log, constraintName=issue_log_project_order_element_table, referencedTableName=order_element; addForeignKeyConstraint baseTableName=issue_log, constraintName=issue_log_us...', '', 'EXECUTED', NULL, NULL, '3.5.1', '7988093552');

-- Changeset db.changelog-1.5.xml::adding-risk_log-table::misha/vova
CREATE TABLE risk_log (id BIGSERIAL NOT NULL, code VARCHAR(25), project BIGINT, description VARCHAR(1024), probability INT, impact INT, score INT, created_by BIGINT, responsible VARCHAR(512), status VARCHAR(512), contingency VARCHAR(1024), counter_measures VARCHAR(1024), action_when TIMESTAMP WITHOUT TIME ZONE, date_created TIMESTAMP WITHOUT TIME ZONE, notes VARCHAR(1024), CONSTRAINT risk_log_pkey PRIMARY KEY (id));

ALTER TABLE risk_log ADD CONSTRAINT project_order_element_table FOREIGN KEY (project) REFERENCES order_element (id);

ALTER TABLE risk_log ADD CONSTRAINT risk_log_user_user_table FOREIGN KEY (created_by) REFERENCES user_table (id);

ALTER TABLE risk_log ADD CONSTRAINT risk_log_unique_code UNIQUE (code);

INSERT INTO databasechangelog (ID, AUTHOR, FILENAME, DATEEXECUTED, ORDEREXECUTED, MD5SUM, DESCRIPTION, COMMENTS, EXECTYPE, CONTEXTS, LABELS, LIQUIBASE, DEPLOYMENT_ID) VALUES ('adding-risk_log-table', 'misha/vova', 'db.changelog-1.5.xml', NOW(), 484, '7:2294cfe27eea7b25434cefb67df207db', 'createTable tableName=risk_log; addForeignKeyConstraint baseTableName=risk_log, constraintName=project_order_element_table, referencedTableName=order_element; addForeignKeyConstraint baseTableName=risk_log, constraintName=risk_log_user_user_table,...', '', 'EXECUTED', NULL, NULL, '3.5.1', '7988093552');

-- Changeset db.changelog-1.5.xml::adding-local-repository_location-to-configuration-table::vova
ALTER TABLE configuration ADD repository_location VARCHAR(1024);

INSERT INTO databasechangelog (ID, AUTHOR, FILENAME, DATEEXECUTED, ORDEREXECUTED, MD5SUM, DESCRIPTION, COMMENTS, EXECTYPE, CONTEXTS, LABELS, LIQUIBASE, DEPLOYMENT_ID) VALUES ('adding-local-repository_location-to-configuration-table', 'vova', 'db.changelog-1.5.xml', NOW(), 485, '7:faab504f10924072f9a8351403e4d1a2', 'addColumn tableName=configuration', '', 'EXECUTED', NULL, NULL, '3.5.1', '7988093552');

-- Changeset db.changelog-1.5.xml::adding-files-table::vova/jeroen
CREATE TABLE files (id BIGSERIAL NOT NULL, name VARCHAR(1024), type VARCHAR(22), date TIMESTAMP WITHOUT TIME ZONE, uploader BIGINT, parent BIGINT, CONSTRAINT files_pkey PRIMARY KEY (id));

ALTER TABLE files ADD CONSTRAINT files_uploader_fkey FOREIGN KEY (uploader) REFERENCES user_table (id);

ALTER TABLE files ADD CONSTRAINT files_parent_fkey FOREIGN KEY (parent) REFERENCES order_element (id);

UPDATE configuration SET repository_location = '' WHERE id = 404;

INSERT INTO databasechangelog (ID, AUTHOR, FILENAME, DATEEXECUTED, ORDEREXECUTED, MD5SUM, DESCRIPTION, COMMENTS, EXECTYPE, CONTEXTS, LABELS, LIQUIBASE, DEPLOYMENT_ID) VALUES ('adding-files-table', 'vova/jeroen', 'db.changelog-1.5.xml', NOW(), 486, '7:93edbf44ba83007ca06dbbeb1594b256', 'createTable tableName=files; addForeignKeyConstraint baseTableName=files, constraintName=files_uploader_fkey, referencedTableName=user_table; addForeignKeyConstraint baseTableName=files, constraintName=files_parent_fkey, referencedTableName=order_...', '', 'EXECUTED', NULL, NULL, '3.5.1', '7988093552');

-- Changeset db.changelog-1.5.1-en.xml::replace-english-email-templates::jeroen
DELETE FROM email_template WHERE language = 3;

INSERT INTO email_template (type, language, content, subject) VALUES (0, 3, 'Hello {firstname},

A task has been assigned to {resource} in the LibrePlan project management application.

Project: {project}
Task: {task}

You can find more info here: {projecturl}

Have an awesome day.
Your friendly neighborhoud LibrePlan project management server.', 'A task has been assigned to you');

INSERT INTO email_template (type, language, content, subject) VALUES (1, 3, 'Hello {firstname}

{resource} has been removed from a task in the LibrePlan project management application.

Project: {project}
Task: {task}

You can find more info here: {projecturl}

Have an awesome day.
Your friendly neighborhoud LibrePlan project management server.', '{resource} has been removed from task {task} in project {project}');

INSERT INTO email_template (type, language, content, subject) VALUES (5, 3, 'Hello {firstname},

Could you please ensure that your timesheet is up to date?

It helps the organization keep a decent track of project progress.

Let''s be honest. Nobody really likes to do this work.
But it''s just part of the job. Keeping track of time spent has impact on billing.
And thus on the bottom line, and so also the continuity of the company and your salary.

You can do it!

Have an awesome day.
Your friendly neighborhoud LibrePlan project management server.', 'Please ensure your timesheet is up to date.');

INSERT INTO email_template (type, language, content, subject) VALUES (2, 3, 'Hi {firstname}

This is to let you know that milestone {task} has been reached in project {project}

Project: {project}
Task: {task}

Have a nice day.
Your friendly neighborhoud LibrePlan project management server.', 'Milestone {task} has been reached');

INSERT INTO email_template (type, language, content, subject) VALUES (3, 3, 'Hi {firstname},

This is to let you know that task {task} in project {project} should begin about now.

More info can be found at {projecturl}

Have an awesome day.
Your friendly neighborhoud LibrePlan project management server.', 'Task {task} in project {project} should begin about now');

INSERT INTO email_template (type, language, content, subject) VALUES (4, 3, 'Hi {firstname},

This is to let you know that task {task} in project {project} should be finished about now.

If that is not the case, please inform the project leader of this.

More info can be found at {projecturl}

Have an awesome day.
Your friendly neighborhoud LibrePlan project management server.', 'Task {task} in project {project} should be finished just about now.');

INSERT INTO databasechangelog (ID, AUTHOR, FILENAME, DATEEXECUTED, ORDEREXECUTED, MD5SUM, DESCRIPTION, COMMENTS, EXECTYPE, CONTEXTS, LABELS, LIQUIBASE, DEPLOYMENT_ID) VALUES ('replace-english-email-templates', 'jeroen', 'db.changelog-1.5.1-en.xml', NOW(), 487, '7:80fdbf156b13ad491d2fbda27d2342f1', 'delete tableName=email_template; insert tableName=email_template; insert tableName=email_template; insert tableName=email_template; insert tableName=email_template; insert tableName=email_template; insert tableName=email_template', '', 'EXECUTED', NULL, NULL, '3.5.1', '7988093552');

-- Changeset db.changelog-1.5.1-gl.xml::add-email-templates-gl::jeroen
INSERT INTO email_template (type, language, content, subject) VALUES (0, 1, 'Ola {firstname},

Asignóuselle unha tarefa a {resource} na aplicación de xestión de proxectos LibrePlan.

Proxecto: {project}
Tarefa: {task}

Podes atopar máis información aquí: {projecturl}

Que teñas un día estupendo.
O teu amable servidor de xestión de proxectos LibrePlan do barrio.', 'Asignóuselle unha tarefa');

INSERT INTO email_template (type, language, content, subject) VALUES (1, 1, 'Ola {firstname}

{resource} foi eliminado dunha tarefa na aplicación de xestión de proxectos LibrePlan.

Proxecto: {project}
Tarefa: {task}

Podes atopar máis información aquí: {projecturl}

Que teñas un día estupendo.
O teu amable servidor de xestión de proxectos LibrePlan do barrio.', '{resource} foi eliminado da tarefa {task} no proxecto {project}');

INSERT INTO email_template (type, language, content, subject) VALUES (2, 1, 'Ola {firstname}

Comunicámosche que se acadou o fito {task} no proxecto {project}

Proxecto: {project}
Tarefa: {task}

Que teñas un bo día.
O teu amable servidor de xestión de proxectos LibrePlan do barrio.', 'Acadouse o fito {task}');

INSERT INTO email_template (type, language, content, subject) VALUES (3, 1, 'Ola {firstname},

Comunicámosche que a tarefa {task} no proxecto {project} debería comezar aproximadamente agora.

Podes atopar máis información en {projecturl}

Que teñas un día estupendo.
O teu amable servidor de xestión de proxectos LibrePlan do barrio.', 'A tarefa {task} no proxecto {project} debería comezar aproximadamente agora');

INSERT INTO email_template (type, language, content, subject) VALUES (4, 1, 'Ola {firstname},

Comunicámosche que a tarefa {task} no proxecto {project} debería estar rematada aproximadamente agora.

Se non é o caso, por favor informa o xefe do proxecto.

Podes atopar máis información en {projecturl}

Que teñas un día estupendo.
O teu amable servidor de xestión de proxectos LibrePlan do barrio.', 'A tarefa {task} no proxecto {project} debería estar rematada aproximadamente agora.');

INSERT INTO email_template (type, language, content, subject) VALUES (5, 1, 'Ola {firstname},

Poderías asegurarte de que a túa folla de horas está actualizada?

Axuda á organización a facer un seguimento axeitado do progreso do proxecto.

Seamos honestos. A ninguén lle gusta realmente facer este traballo.
Pero é parte do traballo. Levar un rexistro do tempo dedicado ten impacto na facturación.
E polo tanto no resultado final, e tamén na continuidade da empresa e o teu salario.

Podes facelo!

Que teñas un día estupendo.
O teu amable servidor de xestión de proxectos LibrePlan do barrio.', 'Por favor, asegúrate de que a túa folla de horas está actualizada.');

INSERT INTO databasechangelog (ID, AUTHOR, FILENAME, DATEEXECUTED, ORDEREXECUTED, MD5SUM, DESCRIPTION, COMMENTS, EXECTYPE, CONTEXTS, LABELS, LIQUIBASE, DEPLOYMENT_ID) VALUES ('add-email-templates-gl', 'jeroen', 'db.changelog-1.5.1-gl.xml', NOW(), 488, '7:fe1494c67561e0ae7ed49db6cdf899c2', 'insert tableName=email_template; insert tableName=email_template; insert tableName=email_template; insert tableName=email_template; insert tableName=email_template; insert tableName=email_template', '', 'EXECUTED', NULL, NULL, '3.5.1', '7988093552');

-- Changeset db.changelog-1.5.1-es.xml::add-email-templates-es::jeroen
INSERT INTO email_template (type, language, content, subject) VALUES (0, 2, 'Hola {firstname},

Se ha asignado una tarea a {resource} en la aplicación de gestión de proyectos LibrePlan.

Proyecto: {project}
Tarea: {task}

Puedes encontrar más información aquí: {projecturl}

Que tengas un día genial.
Tu amable servidor de gestión de proyectos LibrePlan de barrio.', 'Se te ha asignado una tarea');

INSERT INTO email_template (type, language, content, subject) VALUES (1, 2, 'Hola {firstname}

{resource} ha sido eliminado de una tarea en la aplicación de gestión de proyectos LibrePlan.

Proyecto: {project}
Tarea: {task}

Puedes encontrar más información aquí: {projecturl}

Que tengas un día genial.
Tu amable servidor de gestión de proyectos LibrePlan de barrio.', '{resource} ha sido eliminado de la tarea {task} en el proyecto {project}');

INSERT INTO email_template (type, language, content, subject) VALUES (2, 2, 'Hola {firstname}

Te informamos de que se ha alcanzado el hito {task} en el proyecto {project}

Proyecto: {project}
Tarea: {task}

Que tengas un buen día.
Tu amable servidor de gestión de proyectos LibrePlan de barrio.', 'Se ha alcanzado el hito {task}');

INSERT INTO email_template (type, language, content, subject) VALUES (3, 2, 'Hola {firstname},

Te informamos de que la tarea {task} en el proyecto {project} debería comenzar aproximadamente ahora.

Puedes encontrar más información en {projecturl}

Que tengas un día genial.
Tu amable servidor de gestión de proyectos LibrePlan de barrio.', 'La tarea {task} en el proyecto {project} debería comenzar aproximadamente ahora');

INSERT INTO email_template (type, language, content, subject) VALUES (4, 2, 'Hola {firstname},

Te informamos de que la tarea {task} en el proyecto {project} debería estar terminada aproximadamente ahora.

Si no es así, por favor informa al jefe de proyecto.

Puedes encontrar más información en {projecturl}

Que tengas un día genial.
Tu amable servidor de gestión de proyectos LibrePlan de barrio.', 'La tarea {task} en el proyecto {project} debería estar terminada aproximadamente ahora.');

INSERT INTO email_template (type, language, content, subject) VALUES (5, 2, 'Hola {firstname},

¿Podrías asegurarte de que tu hoja de horas está actualizada?

Ayuda a la organización a llevar un seguimiento adecuado del progreso del proyecto.

Seamos honestos. A nadie le gusta realmente hacer este trabajo.
Pero es parte del trabajo. Llevar un registro del tiempo dedicado tiene impacto en la facturación.
Y por tanto en el resultado final, y también en la continuidad de la empresa y tu salario.

¡Tú puedes!

Que tengas un día genial.
Tu amable servidor de gestión de proyectos LibrePlan de barrio.', 'Por favor, asegúrate de que tu hoja de horas está actualizada.');

INSERT INTO databasechangelog (ID, AUTHOR, FILENAME, DATEEXECUTED, ORDEREXECUTED, MD5SUM, DESCRIPTION, COMMENTS, EXECTYPE, CONTEXTS, LABELS, LIQUIBASE, DEPLOYMENT_ID) VALUES ('add-email-templates-es', 'jeroen', 'db.changelog-1.5.1-es.xml', NOW(), 489, '7:efcaaeff4e513cc2f4d1badf8fbca1c7', 'insert tableName=email_template; insert tableName=email_template; insert tableName=email_template; insert tableName=email_template; insert tableName=email_template; insert tableName=email_template', '', 'EXECUTED', NULL, NULL, '3.5.1', '7988093552');

-- Changeset db.changelog-1.5.1-ru.xml::add-email-templates-ru::jeroen
INSERT INTO email_template (type, language, content, subject) VALUES (0, 4, 'Здравствуйте, {firstname},

Задача была назначена {resource} в приложении управления проектами LibrePlan.

Проект: {project}
Задача: {task}

Дополнительную информацию можно найти здесь: {projecturl}

Хорошего вам дня.
Ваш дружелюбный сервер управления проектами LibrePlan.', 'Вам назначена задача');

INSERT INTO email_template (type, language, content, subject) VALUES (1, 4, 'Здравствуйте, {firstname}

{resource} был удалён из задачи в приложении управления проектами LibrePlan.

Проект: {project}
Задача: {task}

Дополнительную информацию можно найти здесь: {projecturl}

Хорошего вам дня.
Ваш дружелюбный сервер управления проектами LibrePlan.', '{resource} удалён из задачи {task} в проекте {project}');

INSERT INTO email_template (type, language, content, subject) VALUES (2, 4, 'Здравствуйте, {firstname}

Сообщаем вам, что веха {task} достигнута в проекте {project}

Проект: {project}
Задача: {task}

Хорошего вам дня.
Ваш дружелюбный сервер управления проектами LibrePlan.', 'Веха {task} достигнута');

INSERT INTO email_template (type, language, content, subject) VALUES (3, 4, 'Здравствуйте, {firstname},

Сообщаем вам, что задача {task} в проекте {project} должна начаться примерно сейчас.

Дополнительную информацию можно найти по адресу {projecturl}

Хорошего вам дня.
Ваш дружелюбный сервер управления проектами LibrePlan.', 'Задача {task} в проекте {project} должна начаться примерно сейчас');

INSERT INTO email_template (type, language, content, subject) VALUES (4, 4, 'Здравствуйте, {firstname},

Сообщаем вам, что задача {task} в проекте {project} должна быть завершена примерно сейчас.

Если это не так, пожалуйста, сообщите об этом руководителю проекта.

Дополнительную информацию можно найти по адресу {projecturl}

Хорошего вам дня.
Ваш дружелюбный сервер управления проектами LibrePlan.', 'Задача {task} в проекте {project} должна быть завершена примерно сейчас.');

INSERT INTO email_template (type, language, content, subject) VALUES (5, 4, 'Здравствуйте, {firstname},

Не могли бы вы убедиться, что ваш табель рабочего времени актуален?

Это помогает организации должным образом отслеживать прогресс проекта.

Будем честны. Никто по-настоящему не любит выполнять эту работу.
Но это просто часть работы. Учёт затраченного времени влияет на выставление счетов.
А значит на итоговый результат, и тем самым на стабильность компании и ваш заработок.

Вы справитесь!

Хорошего вам дня.
Ваш дружелюбный сервер управления проектами LibrePlan.', 'Пожалуйста, убедитесь, что ваш табель рабочего времени актуален.');

INSERT INTO databasechangelog (ID, AUTHOR, FILENAME, DATEEXECUTED, ORDEREXECUTED, MD5SUM, DESCRIPTION, COMMENTS, EXECTYPE, CONTEXTS, LABELS, LIQUIBASE, DEPLOYMENT_ID) VALUES ('add-email-templates-ru', 'jeroen', 'db.changelog-1.5.1-ru.xml', NOW(), 490, '7:3051baebc66c07e9ef66a3f966b79e3f', 'insert tableName=email_template; insert tableName=email_template; insert tableName=email_template; insert tableName=email_template; insert tableName=email_template; insert tableName=email_template', '', 'EXECUTED', NULL, NULL, '3.5.1', '7988093552');

-- Changeset db.changelog-1.5.1-pt.xml::add-email-templates-pt::jeroen
INSERT INTO email_template (type, language, content, subject) VALUES (0, 5, 'Olá {firstname},

Uma tarefa foi atribuída a {resource} na aplicação de gestão de projetos LibrePlan.

Projeto: {project}
Tarefa: {task}

Pode encontrar mais informações aqui: {projecturl}

Tenha um dia fantástico.
O seu amigável servidor de gestão de projetos LibrePlan da vizinhança.', 'Foi-lhe atribuída uma tarefa');

INSERT INTO email_template (type, language, content, subject) VALUES (1, 5, 'Olá {firstname}

{resource} foi removido de uma tarefa na aplicação de gestão de projetos LibrePlan.

Projeto: {project}
Tarefa: {task}

Pode encontrar mais informações aqui: {projecturl}

Tenha um dia fantástico.
O seu amigável servidor de gestão de projetos LibrePlan da vizinhança.', '{resource} foi removido da tarefa {task} no projeto {project}');

INSERT INTO email_template (type, language, content, subject) VALUES (2, 5, 'Olá {firstname}

Informamos que o marco {task} foi atingido no projeto {project}

Projeto: {project}
Tarefa: {task}

Tenha um bom dia.
O seu amigável servidor de gestão de projetos LibrePlan da vizinhança.', 'O marco {task} foi atingido');

INSERT INTO email_template (type, language, content, subject) VALUES (3, 5, 'Olá {firstname},

Informamos que a tarefa {task} no projeto {project} deve começar agora.

Mais informações podem ser encontradas em {projecturl}

Tenha um dia fantástico.
O seu amigável servidor de gestão de projetos LibrePlan da vizinhança.', 'A tarefa {task} no projeto {project} deve começar agora');

INSERT INTO email_template (type, language, content, subject) VALUES (4, 5, 'Olá {firstname},

Informamos que a tarefa {task} no projeto {project} deve estar concluída agora.

Se não for o caso, informe o líder do projeto.

Mais informações podem ser encontradas em {projecturl}

Tenha um dia fantástico.
O seu amigável servidor de gestão de projetos LibrePlan da vizinhança.', 'A tarefa {task} no projeto {project} deve estar concluída agora.');

INSERT INTO email_template (type, language, content, subject) VALUES (5, 5, 'Olá {firstname},

Poderia certificar-se de que a sua folha de horas está atualizada?

Ajuda a organização a acompanhar adequadamente o progresso do projeto.

Sejamos honestos. Ninguém gosta realmente de fazer este trabalho.
Mas faz simplesmente parte do trabalho. Acompanhar o tempo gasto tem impacto na faturação.
E portanto no resultado final, e assim também na continuidade da empresa e no seu salário.

Consegue fazer isso!

Tenha um dia fantástico.
O seu amigável servidor de gestão de projetos LibrePlan da vizinhança.', 'Por favor, certifique-se de que a sua folha de horas está atualizada.');

INSERT INTO databasechangelog (ID, AUTHOR, FILENAME, DATEEXECUTED, ORDEREXECUTED, MD5SUM, DESCRIPTION, COMMENTS, EXECTYPE, CONTEXTS, LABELS, LIQUIBASE, DEPLOYMENT_ID) VALUES ('add-email-templates-pt', 'jeroen', 'db.changelog-1.5.1-pt.xml', NOW(), 491, '7:95fa9ac98da1800d6486480a0d5e1504', 'insert tableName=email_template; insert tableName=email_template; insert tableName=email_template; insert tableName=email_template; insert tableName=email_template; insert tableName=email_template', '', 'EXECUTED', NULL, NULL, '3.5.1', '7988093552');

-- Changeset db.changelog-1.5.1-it.xml::add-email-templates-it::jeroen
INSERT INTO email_template (type, language, content, subject) VALUES (0, 6, 'Ciao {firstname},

Un compito è stato assegnato a {resource} nell''applicazione di gestione progetti LibrePlan.

Progetto: {project}
Compito: {task}

Puoi trovare ulteriori informazioni qui: {projecturl}

Buona giornata.
Il tuo amichevole server di gestione progetti LibrePlan di quartiere.', 'Ti è stato assegnato un compito');

INSERT INTO email_template (type, language, content, subject) VALUES (1, 6, 'Ciao {firstname}

{resource} è stato rimosso da un compito nell''applicazione di gestione progetti LibrePlan.

Progetto: {project}
Compito: {task}

Puoi trovare ulteriori informazioni qui: {projecturl}

Buona giornata.
Il tuo amichevole server di gestione progetti LibrePlan di quartiere.', '{resource} è stato rimosso dal compito {task} nel progetto {project}');

INSERT INTO email_template (type, language, content, subject) VALUES (2, 6, 'Ciao {firstname}

Ti informiamo che la milestone {task} è stata raggiunta nel progetto {project}

Progetto: {project}
Compito: {task}

Buona giornata.
Il tuo amichevole server di gestione progetti LibrePlan di quartiere.', 'È stata raggiunta la milestone {task}');

INSERT INTO email_template (type, language, content, subject) VALUES (3, 6, 'Ciao {firstname},

Ti informiamo che il compito {task} nel progetto {project} dovrebbe iniziare ora.

Ulteriori informazioni sono disponibili su {projecturl}

Buona giornata.
Il tuo amichevole server di gestione progetti LibrePlan di quartiere.', 'Il compito {task} nel progetto {project} dovrebbe iniziare ora');

INSERT INTO email_template (type, language, content, subject) VALUES (4, 6, 'Ciao {firstname},

Ti informiamo che il compito {task} nel progetto {project} dovrebbe essere terminato ora.

Se non è così, ti preghiamo di informare il responsabile del progetto.

Ulteriori informazioni sono disponibili su {projecturl}

Buona giornata.
Il tuo amichevole server di gestione progetti LibrePlan di quartiere.', 'Il compito {task} nel progetto {project} dovrebbe essere terminato ora.');

INSERT INTO email_template (type, language, content, subject) VALUES (5, 6, 'Ciao {firstname},

Potresti assicurarti che il tuo foglio ore sia aggiornato?

Aiuta l''organizzazione a tenere traccia adeguatamente dell''avanzamento del progetto.

Siamo onesti. A nessuno piace davvero fare questo lavoro.
Ma fa semplicemente parte del lavoro. Tenere traccia del tempo dedicato ha un impatto sulla fatturazione.
E quindi sul risultato finale, e di conseguenza sulla continuità dell''azienda e sul tuo stipendio.

Ce la puoi fare!

Buona giornata.
Il tuo amichevole server di gestione progetti LibrePlan di quartiere.', 'Ti preghiamo di assicurarti che il tuo foglio ore sia aggiornato.');

INSERT INTO databasechangelog (ID, AUTHOR, FILENAME, DATEEXECUTED, ORDEREXECUTED, MD5SUM, DESCRIPTION, COMMENTS, EXECTYPE, CONTEXTS, LABELS, LIQUIBASE, DEPLOYMENT_ID) VALUES ('add-email-templates-it', 'jeroen', 'db.changelog-1.5.1-it.xml', NOW(), 492, '7:2ce4e93b2acce9290de897552d1e7328', 'insert tableName=email_template; insert tableName=email_template; insert tableName=email_template; insert tableName=email_template; insert tableName=email_template; insert tableName=email_template', '', 'EXECUTED', NULL, NULL, '3.5.1', '7988093552');

-- Changeset db.changelog-1.5.1-fr.xml::add-email-templates-fr::jeroen
INSERT INTO email_template (type, language, content, subject) VALUES (0, 7, 'Bonjour {firstname},

Une tâche a été assignée à {resource} dans l''application de gestion de projets LibrePlan.

Projet : {project}
Tâche : {task}

Vous pouvez trouver plus d''informations ici : {projecturl}

Passez une excellente journée.
Votre serveur de gestion de projets LibrePlan de quartier.', 'Une tâche vous a été assignée');

INSERT INTO email_template (type, language, content, subject) VALUES (1, 7, 'Bonjour {firstname}

{resource} a été retiré d''une tâche dans l''application de gestion de projets LibrePlan.

Projet : {project}
Tâche : {task}

Vous pouvez trouver plus d''informations ici : {projecturl}

Passez une excellente journée.
Votre serveur de gestion de projets LibrePlan de quartier.', '{resource} a été retiré de la tâche {task} dans le projet {project}');

INSERT INTO email_template (type, language, content, subject) VALUES (2, 7, 'Bonjour {firstname}

Nous vous informons que le jalon {task} a été atteint dans le projet {project}

Projet : {project}
Tâche : {task}

Bonne journée.
Votre serveur de gestion de projets LibrePlan de quartier.', 'Le jalon {task} a été atteint');

INSERT INTO email_template (type, language, content, subject) VALUES (3, 7, 'Bonjour {firstname},

Nous vous informons que la tâche {task} dans le projet {project} devrait commencer maintenant.

Plus d''informations disponibles sur {projecturl}

Passez une excellente journée.
Votre serveur de gestion de projets LibrePlan de quartier.', 'La tâche {task} dans le projet {project} devrait commencer maintenant');

INSERT INTO email_template (type, language, content, subject) VALUES (4, 7, 'Bonjour {firstname},

Nous vous informons que la tâche {task} dans le projet {project} devrait être terminée maintenant.

Si ce n''est pas le cas, veuillez en informer le chef de projet.

Plus d''informations disponibles sur {projecturl}

Passez une excellente journée.
Votre serveur de gestion de projets LibrePlan de quartier.', 'La tâche {task} dans le projet {project} devrait être terminée maintenant.');

INSERT INTO email_template (type, language, content, subject) VALUES (5, 7, 'Bonjour {firstname},

Pourriez-vous vous assurer que votre feuille de temps est à jour ?

Cela aide l''organisation à suivre correctement l''avancement du projet.

Soyons honnêtes. Personne n''aime vraiment faire ce travail.
Mais c''est simplement une partie du travail. Suivre le temps passé a un impact sur la facturation.
Et donc sur le résultat final, et ainsi sur la pérennité de l''entreprise et votre salaire.

Vous pouvez le faire !

Passez une excellente journée.
Votre serveur de gestion de projets LibrePlan de quartier.', 'Veuillez vous assurer que votre feuille de temps est à jour.');

INSERT INTO databasechangelog (ID, AUTHOR, FILENAME, DATEEXECUTED, ORDEREXECUTED, MD5SUM, DESCRIPTION, COMMENTS, EXECTYPE, CONTEXTS, LABELS, LIQUIBASE, DEPLOYMENT_ID) VALUES ('add-email-templates-fr', 'jeroen', 'db.changelog-1.5.1-fr.xml', NOW(), 493, '7:ac96b5ea59362d6bace5009b5c0fbf55', 'insert tableName=email_template; insert tableName=email_template; insert tableName=email_template; insert tableName=email_template; insert tableName=email_template; insert tableName=email_template', '', 'EXECUTED', NULL, NULL, '3.5.1', '7988093552');

-- Changeset db.changelog-1.5.1-nl.xml::add-email-templates-nl::jeroen
INSERT INTO email_template (type, language, content, subject) VALUES (0, 8, 'Hallo {firstname},

Er is een taak toegewezen aan {resource} in de LibrePlan projectbeheerapplicatie.

Project: {project}
Taak: {task}

Meer informatie is hier te vinden: {projecturl}

Heb een geweldige dag.
Je vriendelijke LibrePlan projectbeheerserver uit de buurt.', 'Er is een taak aan je toegewezen');

INSERT INTO email_template (type, language, content, subject) VALUES (1, 8, 'Hallo {firstname}

{resource} is verwijderd van een taak in de LibrePlan projectbeheerapplicatie.

Project: {project}
Taak: {task}

Meer informatie is hier te vinden: {projecturl}

Heb een geweldige dag.
Je vriendelijke LibrePlan projectbeheerserver uit de buurt.', '{resource} is verwijderd van taak {task} in project {project}');

INSERT INTO email_template (type, language, content, subject) VALUES (2, 8, 'Hallo {firstname}

Hierbij laten we je weten dat mijlpaal {task} is bereikt in project {project}

Project: {project}
Taak: {task}

Heb een fijne dag.
Je vriendelijke LibrePlan projectbeheerserver uit de buurt.', 'Mijlpaal {task} is bereikt');

INSERT INTO email_template (type, language, content, subject) VALUES (3, 8, 'Hallo {firstname},

Hierbij laten we je weten dat taak {task} in project {project} nu zou moeten beginnen.

Meer informatie is te vinden op {projecturl}

Heb een geweldige dag.
Je vriendelijke LibrePlan projectbeheerserver uit de buurt.', 'Taak {task} in project {project} zou nu moeten beginnen');

INSERT INTO email_template (type, language, content, subject) VALUES (4, 8, 'Hallo {firstname},

Hierbij laten we je weten dat taak {task} in project {project} nu afgerond zou moeten zijn.

Als dat niet het geval is, informeer dan de projectleider hierover.

Meer informatie is te vinden op {projecturl}

Heb een geweldige dag.
Je vriendelijke LibrePlan projectbeheerserver uit de buurt.', 'Taak {task} in project {project} zou nu afgerond moeten zijn.');

INSERT INTO email_template (type, language, content, subject) VALUES (5, 8, 'Hallo {firstname},

Kun je er alsjeblieft voor zorgen dat je urenstaat up-to-date is?

Het helpt de organisatie om de projectvoortgang goed bij te houden.

Laten we eerlijk zijn. Niemand doet dit werk echt graag.
Maar het is nu eenmaal onderdeel van het werk. Het bijhouden van bestede tijd heeft impact op de facturatie.
En dus op het eindresultaat, en daarmee ook op de continuïteit van het bedrijf en jouw salaris.

Jij kunt het!

Heb een geweldige dag.
Je vriendelijke LibrePlan projectbeheerserver uit de buurt.', 'Zorg er alsjeblieft voor dat je urenstaat up-to-date is.');

INSERT INTO databasechangelog (ID, AUTHOR, FILENAME, DATEEXECUTED, ORDEREXECUTED, MD5SUM, DESCRIPTION, COMMENTS, EXECTYPE, CONTEXTS, LABELS, LIQUIBASE, DEPLOYMENT_ID) VALUES ('add-email-templates-nl', 'jeroen', 'db.changelog-1.5.1-nl.xml', NOW(), 494, '7:c26c140258d711b48d4850a30aed8c79', 'insert tableName=email_template; insert tableName=email_template; insert tableName=email_template; insert tableName=email_template; insert tableName=email_template; insert tableName=email_template', '', 'EXECUTED', NULL, NULL, '3.5.1', '7988093552');

-- Changeset db.changelog-1.5.1-pl.xml::add-email-templates-pl::jeroen
INSERT INTO email_template (type, language, content, subject) VALUES (0, 9, 'Witaj {firstname},

Zadanie zostało przypisane do {resource} w aplikacji do zarządzania projektami LibrePlan.

Projekt: {project}
Zadanie: {task}

Więcej informacji znajdziesz tutaj: {projecturl}

Miłego dnia.
Twój przyjazny serwer zarządzania projektami LibrePlan z sąsiedztwa.', 'Przypisano Ci zadanie');

INSERT INTO email_template (type, language, content, subject) VALUES (1, 9, 'Witaj {firstname}

{resource} został usunięty z zadania w aplikacji do zarządzania projektami LibrePlan.

Projekt: {project}
Zadanie: {task}

Więcej informacji znajdziesz tutaj: {projecturl}

Miłego dnia.
Twój przyjazny serwer zarządzania projektami LibrePlan z sąsiedztwa.', '{resource} został usunięty z zadania {task} w projekcie {project}');

INSERT INTO email_template (type, language, content, subject) VALUES (2, 9, 'Witaj {firstname}

Informujemy, że kamień milowy {task} został osiągnięty w projekcie {project}

Projekt: {project}
Zadanie: {task}

Miłego dnia.
Twój przyjazny serwer zarządzania projektami LibrePlan z sąsiedztwa.', 'Osiągnięto kamień milowy {task}');

INSERT INTO email_template (type, language, content, subject) VALUES (3, 9, 'Witaj {firstname},

Informujemy, że zadanie {task} w projekcie {project} powinno rozpocząć się mniej więcej teraz.

Więcej informacji znajdziesz pod adresem {projecturl}

Miłego dnia.
Twój przyjazny serwer zarządzania projektami LibrePlan z sąsiedztwa.', 'Zadanie {task} w projekcie {project} powinno rozpocząć się mniej więcej teraz');

INSERT INTO email_template (type, language, content, subject) VALUES (4, 9, 'Witaj {firstname},

Informujemy, że zadanie {task} w projekcie {project} powinno być zakończone mniej więcej teraz.

Jeśli tak nie jest, poinformuj o tym kierownika projektu.

Więcej informacji znajdziesz pod adresem {projecturl}

Miłego dnia.
Twój przyjazny serwer zarządzania projektami LibrePlan z sąsiedztwa.', 'Zadanie {task} w projekcie {project} powinno być zakończone mniej więcej teraz.');

INSERT INTO email_template (type, language, content, subject) VALUES (5, 9, 'Witaj {firstname},

Czy mógłbyś upewnić się, że Twoja karta czasu pracy jest aktualna?

Pomaga to organizacji w odpowiednim śledzeniu postępów projektu.

Bądźmy szczerzy. Nikt naprawdę nie lubi wykonywać tej pracy.
Ale to po prostu część pracy. Śledzenie czasu pracy ma wpływ na rozliczenia.
A tym samym na wynik finansowy, a co za tym idzie na ciągłość firmy i Twoje wynagrodzenie.

Dasz radę!

Miłego dnia.
Twój przyjazny serwer zarządzania projektami LibrePlan z sąsiedztwa.', 'Prosimy upewnić się, że Twoja karta czasu pracy jest aktualna.');

INSERT INTO databasechangelog (ID, AUTHOR, FILENAME, DATEEXECUTED, ORDEREXECUTED, MD5SUM, DESCRIPTION, COMMENTS, EXECTYPE, CONTEXTS, LABELS, LIQUIBASE, DEPLOYMENT_ID) VALUES ('add-email-templates-pl', 'jeroen', 'db.changelog-1.5.1-pl.xml', NOW(), 495, '7:6c86f8614156a2d2676d1fb3efc28ed6', 'insert tableName=email_template; insert tableName=email_template; insert tableName=email_template; insert tableName=email_template; insert tableName=email_template; insert tableName=email_template', '', 'EXECUTED', NULL, NULL, '3.5.1', '7988093552');

-- Changeset db.changelog-1.5.1-cs.xml::add-email-templates-cs::jeroen
INSERT INTO email_template (type, language, content, subject) VALUES (0, 10, 'Dobrý den {firstname},

V aplikaci pro správu projektů LibrePlan byl přiřazen úkol uživateli {resource}.

Projekt: {project}
Úkol: {task}

Více informací naleznete zde: {projecturl}

Mějte skvělý den.
Váš přátelský server pro správu projektů LibrePlan ze sousedství.', 'Byl vám přiřazen úkol');

INSERT INTO email_template (type, language, content, subject) VALUES (1, 10, 'Dobrý den {firstname}

{resource} byl odebrán z úkolu v aplikaci pro správu projektů LibrePlan.

Projekt: {project}
Úkol: {task}

Více informací naleznete zde: {projecturl}

Mějte skvělý den.
Váš přátelský server pro správu projektů LibrePlan ze sousedství.', '{resource} byl odebrán z úkolu {task} v projektu {project}');

INSERT INTO email_template (type, language, content, subject) VALUES (2, 10, 'Dobrý den {firstname}

Dáváme vám na vědomí, že milník {task} byl dosažen v projektu {project}

Projekt: {project}
Úkol: {task}

Mějte hezký den.
Váš přátelský server pro správu projektů LibrePlan ze sousedství.', 'Byl dosažen milník {task}');

INSERT INTO email_template (type, language, content, subject) VALUES (3, 10, 'Dobrý den {firstname},

Dáváme vám na vědomí, že úkol {task} v projektu {project} by měl začít přibližně nyní.

Více informací naleznete na {projecturl}

Mějte skvělý den.
Váš přátelský server pro správu projektů LibrePlan ze sousedství.', 'Úkol {task} v projektu {project} by měl začít přibližně nyní');

INSERT INTO email_template (type, language, content, subject) VALUES (4, 10, 'Dobrý den {firstname},

Dáváme vám na vědomí, že úkol {task} v projektu {project} by měl být přibližně nyní dokončen.

Pokud tomu tak není, informujte prosím vedoucího projektu.

Více informací naleznete na {projecturl}

Mějte skvělý den.
Váš přátelský server pro správu projektů LibrePlan ze sousedství.', 'Úkol {task} v projektu {project} by měl být přibližně nyní dokončen.');

INSERT INTO email_template (type, language, content, subject) VALUES (5, 10, 'Dobrý den {firstname},

Mohli byste se prosím ujistit, že váš výkaz práce je aktuální?

Pomáhá to organizaci řádně sledovat postup projektu.

Buďme upřímní. Tuto práci nikdo opravdu rád nedělá.
Ale je to prostě součást práce. Sledování stráveného času má dopad na fakturaci.
A tedy na hospodářský výsledek, a tím i na kontinuitu společnosti a váš plat.

Zvládnete to!

Mějte skvělý den.
Váš přátelský server pro správu projektů LibrePlan ze sousedství.', 'Prosíme, ujistěte se, že váš výkaz práce je aktuální.');

INSERT INTO databasechangelog (ID, AUTHOR, FILENAME, DATEEXECUTED, ORDEREXECUTED, MD5SUM, DESCRIPTION, COMMENTS, EXECTYPE, CONTEXTS, LABELS, LIQUIBASE, DEPLOYMENT_ID) VALUES ('add-email-templates-cs', 'jeroen', 'db.changelog-1.5.1-cs.xml', NOW(), 496, '7:ca41dcf3b2854111925583bb674afb68', 'insert tableName=email_template; insert tableName=email_template; insert tableName=email_template; insert tableName=email_template; insert tableName=email_template; insert tableName=email_template', '', 'EXECUTED', NULL, NULL, '3.5.1', '7988093552');

-- Changeset db.changelog-1.5.1-de.xml::add-email-templates-de::jeroen
INSERT INTO email_template (type, language, content, subject) VALUES (0, 11, 'Hallo {firstname},

In der LibrePlan-Projektverwaltungsanwendung wurde {resource} eine Aufgabe zugewiesen.

Projekt: {project}
Aufgabe: {task}

Weitere Informationen finden Sie hier: {projecturl}

Haben Sie einen wunderbaren Tag.
Ihr freundlicher LibrePlan-Projektverwaltungsserver aus der Nachbarschaft.', 'Ihnen wurde eine Aufgabe zugewiesen');

INSERT INTO email_template (type, language, content, subject) VALUES (1, 11, 'Hallo {firstname}

{resource} wurde in der LibrePlan-Projektverwaltungsanwendung von einer Aufgabe entfernt.

Projekt: {project}
Aufgabe: {task}

Weitere Informationen finden Sie hier: {projecturl}

Haben Sie einen wunderbaren Tag.
Ihr freundlicher LibrePlan-Projektverwaltungsserver aus der Nachbarschaft.', '{resource} wurde von der Aufgabe {task} im Projekt {project} entfernt');

INSERT INTO email_template (type, language, content, subject) VALUES (2, 11, 'Hallo {firstname}

Wir möchten Sie darüber informieren, dass der Meilenstein {task} im Projekt {project} erreicht wurde.

Projekt: {project}
Aufgabe: {task}

Haben Sie einen schönen Tag.
Ihr freundlicher LibrePlan-Projektverwaltungsserver aus der Nachbarschaft.', 'Meilenstein {task} wurde erreicht');

INSERT INTO email_template (type, language, content, subject) VALUES (3, 11, 'Hallo {firstname},

Wir möchten Sie darüber informieren, dass die Aufgabe {task} im Projekt {project} jetzt beginnen sollte.

Weitere Informationen finden Sie unter {projecturl}

Haben Sie einen wunderbaren Tag.
Ihr freundlicher LibrePlan-Projektverwaltungsserver aus der Nachbarschaft.', 'Aufgabe {task} im Projekt {project} sollte jetzt beginnen');

INSERT INTO email_template (type, language, content, subject) VALUES (4, 11, 'Hallo {firstname},

Wir möchten Sie darüber informieren, dass die Aufgabe {task} im Projekt {project} jetzt abgeschlossen sein sollte.

Falls dies nicht der Fall ist, informieren Sie bitte den Projektleiter.

Weitere Informationen finden Sie unter {projecturl}

Haben Sie einen wunderbaren Tag.
Ihr freundlicher LibrePlan-Projektverwaltungsserver aus der Nachbarschaft.', 'Aufgabe {task} im Projekt {project} sollte jetzt abgeschlossen sein.');

INSERT INTO email_template (type, language, content, subject) VALUES (5, 11, 'Hallo {firstname},

Könnten Sie bitte sicherstellen, dass Ihre Zeiterfassung aktuell ist?

Dies hilft der Organisation, den Projektfortschritt angemessen zu verfolgen.

Seien wir ehrlich. Niemand macht diese Arbeit wirklich gerne.
Aber es ist nun einmal Teil der Arbeit. Die Erfassung der aufgewendeten Zeit hat Auswirkungen auf die Abrechnung.
Und damit auf das Ergebnis und somit auch auf die Kontinuität des Unternehmens und Ihr Gehalt.

Sie schaffen das!

Haben Sie einen wunderbaren Tag.
Ihr freundlicher LibrePlan-Projektverwaltungsserver aus der Nachbarschaft.', 'Bitte stellen Sie sicher, dass Ihre Zeiterfassung aktuell ist.');

INSERT INTO databasechangelog (ID, AUTHOR, FILENAME, DATEEXECUTED, ORDEREXECUTED, MD5SUM, DESCRIPTION, COMMENTS, EXECTYPE, CONTEXTS, LABELS, LIQUIBASE, DEPLOYMENT_ID) VALUES ('add-email-templates-de', 'jeroen', 'db.changelog-1.5.1-de.xml', NOW(), 497, '7:022442e8fc089f534b59dd5a48b9ec1f', 'insert tableName=email_template; insert tableName=email_template; insert tableName=email_template; insert tableName=email_template; insert tableName=email_template; insert tableName=email_template', '', 'EXECUTED', NULL, NULL, '3.5.1', '7988093552');

-- Changeset db.changelog-1.5.1-ca.xml::add-email-templates-ca::jeroen
INSERT INTO email_template (type, language, content, subject) VALUES (0, 12, 'Hola {firstname},

S''ha assignat una tasca a {resource} a l''aplicació de gestió de projectes LibrePlan.

Projecte: {project}
Tasca: {task}

Podeu trobar més informació aquí: {projecturl}

Que tingueu un dia fantàstic.
El vostre amable servidor de gestió de projectes LibrePlan de barri.', 'Se t''ha assignat una tasca');

INSERT INTO email_template (type, language, content, subject) VALUES (1, 12, 'Hola {firstname}

{resource} ha estat eliminat d''una tasca a l''aplicació de gestió de projectes LibrePlan.

Projecte: {project}
Tasca: {task}

Podeu trobar més informació aquí: {projecturl}

Que tingueu un dia fantàstic.
El vostre amable servidor de gestió de projectes LibrePlan de barri.', '{resource} ha estat eliminat de la tasca {task} al projecte {project}');

INSERT INTO email_template (type, language, content, subject) VALUES (2, 12, 'Hola {firstname}

Us informem que s''ha assolit la fita {task} al projecte {project}

Projecte: {project}
Tasca: {task}

Que tingueu un bon dia.
El vostre amable servidor de gestió de projectes LibrePlan de barri.', 'S''ha assolit la fita {task}');

INSERT INTO email_template (type, language, content, subject) VALUES (3, 12, 'Hola {firstname},

Us informem que la tasca {task} al projecte {project} hauria de començar aproximadament ara.

Podeu trobar més informació a {projecturl}

Que tingueu un dia fantàstic.
El vostre amable servidor de gestió de projectes LibrePlan de barri.', 'La tasca {task} al projecte {project} hauria de començar aproximadament ara');

INSERT INTO email_template (type, language, content, subject) VALUES (4, 12, 'Hola {firstname},

Us informem que la tasca {task} al projecte {project} hauria d''estar acabada aproximadament ara.

Si no és el cas, si us plau informeu el responsable del projecte.

Podeu trobar més informació a {projecturl}

Que tingueu un dia fantàstic.
El vostre amable servidor de gestió de projectes LibrePlan de barri.', 'La tasca {task} al projecte {project} hauria d''estar acabada aproximadament ara.');

INSERT INTO email_template (type, language, content, subject) VALUES (5, 12, 'Hola {firstname},

Podríeu assegurar-vos que el vostre full d''hores està actualitzat?

Ajuda l''organització a fer un seguiment adequat del progrés del projecte.

Siguem honestos. A ningú li agrada realment fer aquesta feina.
Però és part de la feina. Fer un seguiment del temps dedicat té impacte en la facturació.
I per tant en el resultat final, i també en la continuïtat de l''empresa i el vostre salari.

Podeu fer-ho!

Que tingueu un dia fantàstic.
El vostre amable servidor de gestió de projectes LibrePlan de barri.', 'Si us plau, assegureu-vos que el vostre full d''hores està actualitzat.');

INSERT INTO databasechangelog (ID, AUTHOR, FILENAME, DATEEXECUTED, ORDEREXECUTED, MD5SUM, DESCRIPTION, COMMENTS, EXECTYPE, CONTEXTS, LABELS, LIQUIBASE, DEPLOYMENT_ID) VALUES ('add-email-templates-ca', 'jeroen', 'db.changelog-1.5.1-ca.xml', NOW(), 498, '7:a306da300b4587f92bd447e43330e980', 'insert tableName=email_template; insert tableName=email_template; insert tableName=email_template; insert tableName=email_template; insert tableName=email_template; insert tableName=email_template', '', 'EXECUTED', NULL, NULL, '3.5.1', '7988093552');

-- Changeset db.changelog-1.5.1-zh_CN.xml::add-email-templates-zh_CN::jeroen
INSERT INTO email_template (type, language, content, subject) VALUES (0, 13, '您好 {firstname}，

在 LibrePlan 项目管理应用程序中，已向 {resource} 分配了一项任务。

项目：{project}
任务：{task}

您可以在此处找到更多信息：{projecturl}

祝您有美好的一天。
您的友好的 LibrePlan 项目管理服务器。', '您已被分配一项任务');

INSERT INTO email_template (type, language, content, subject) VALUES (1, 13, '您好 {firstname}

在 LibrePlan 项目管理应用程序中，{resource} 已从一项任务中移除。

项目：{project}
任务：{task}

您可以在此处找到更多信息：{projecturl}

祝您有美好的一天。
您的友好的 LibrePlan 项目管理服务器。', '{resource} 已从项目 {project} 的任务 {task} 中移除');

INSERT INTO email_template (type, language, content, subject) VALUES (2, 13, '您好 {firstname}

特此通知您，项目 {project} 中的里程碑 {task} 已经达成。

项目：{project}
任务：{task}

祝您有愉快的一天。
您的友好的 LibrePlan 项目管理服务器。', '已达到里程碑 {task}');

INSERT INTO email_template (type, language, content, subject) VALUES (3, 13, '您好 {firstname}，

特此通知您，项目 {project} 中的任务 {task} 现在应该开始了。

更多信息请访问 {projecturl}

祝您有美好的一天。
您的友好的 LibrePlan 项目管理服务器。', '项目 {project} 中的任务 {task} 现在应该开始了');

INSERT INTO email_template (type, language, content, subject) VALUES (4, 13, '您好 {firstname}，

特此通知您，项目 {project} 中的任务 {task} 现在应该完成了。

如果情况并非如此，请告知项目负责人。

更多信息请访问 {projecturl}

祝您有美好的一天。
您的友好的 LibrePlan 项目管理服务器。', '项目 {project} 中的任务 {task} 现在应该完成了。');

INSERT INTO email_template (type, language, content, subject) VALUES (5, 13, '您好 {firstname}，

请您确保您的工时表是最新的，好吗？

这有助于组织妥善跟踪项目进度。

说实话，没有人真正喜欢做这项工作。
但这只是工作的一部分。记录所花费的时间会影响计费。
因此也会影响最终结果，进而影响公司的持续运营和您的薪资。

您能做到的！

祝您有美好的一天。
您的友好的 LibrePlan 项目管理服务器。', '请确保您的工时表是最新的。');

INSERT INTO databasechangelog (ID, AUTHOR, FILENAME, DATEEXECUTED, ORDEREXECUTED, MD5SUM, DESCRIPTION, COMMENTS, EXECTYPE, CONTEXTS, LABELS, LIQUIBASE, DEPLOYMENT_ID) VALUES ('add-email-templates-zh_CN', 'jeroen', 'db.changelog-1.5.1-zh_CN.xml', NOW(), 499, '7:9e58cb919cdf68897c32dc8b80b99f1a', 'insert tableName=email_template; insert tableName=email_template; insert tableName=email_template; insert tableName=email_template; insert tableName=email_template; insert tableName=email_template', '', 'EXECUTED', NULL, NULL, '3.5.1', '7988093552');

-- Changeset db.changelog-1.5.1-nb.xml::add-email-templates-nb::jeroen
INSERT INTO email_template (type, language, content, subject) VALUES (0, 14, 'Hei {firstname},

En oppgave har blitt tildelt {resource} i LibrePlan prosjektstyringsapplikasjonen.

Prosjekt: {project}
Oppgave: {task}

Du finner mer informasjon her: {projecturl}

Ha en flott dag.
Din vennlige LibrePlan prosjektstyringsserver fra nabolaget.', 'Du har fått tildelt en oppgave');

INSERT INTO email_template (type, language, content, subject) VALUES (1, 14, 'Hei {firstname}

{resource} er fjernet fra en oppgave i LibrePlan prosjektstyringsapplikasjonen.

Prosjekt: {project}
Oppgave: {task}

Du finner mer informasjon her: {projecturl}

Ha en flott dag.
Din vennlige LibrePlan prosjektstyringsserver fra nabolaget.', '{resource} er fjernet fra oppgaven {task} i prosjektet {project}');

INSERT INTO email_template (type, language, content, subject) VALUES (2, 14, 'Hei {firstname}

Vi vil gjerne informere deg om at milepæl {task} er nådd i prosjektet {project}

Prosjekt: {project}
Oppgave: {task}

Ha en fin dag.
Din vennlige LibrePlan prosjektstyringsserver fra nabolaget.', 'Milepæl {task} er nådd');

INSERT INTO email_template (type, language, content, subject) VALUES (3, 14, 'Hei {firstname},

Vi vil gjerne informere deg om at oppgaven {task} i prosjektet {project} bør begynne omtrent nå.

Mer informasjon finner du på {projecturl}

Ha en flott dag.
Din vennlige LibrePlan prosjektstyringsserver fra nabolaget.', 'Oppgaven {task} i prosjektet {project} bør begynne omtrent nå');

INSERT INTO email_template (type, language, content, subject) VALUES (4, 14, 'Hei {firstname},

Vi vil gjerne informere deg om at oppgaven {task} i prosjektet {project} bør være ferdig omtrent nå.

Hvis det ikke er tilfellet, vennligst informer prosjektlederen om dette.

Mer informasjon finner du på {projecturl}

Ha en flott dag.
Din vennlige LibrePlan prosjektstyringsserver fra nabolaget.', 'Oppgaven {task} i prosjektet {project} bør være ferdig omtrent nå.');

INSERT INTO email_template (type, language, content, subject) VALUES (5, 14, 'Hei {firstname},

Kan du vennligst sørge for at timelisten din er oppdatert?

Det hjelper organisasjonen med å holde god oversikt over prosjektfremdriften.

La oss være ærlige. Ingen liker egentlig å gjøre dette arbeidet.
Men det er bare en del av jobben. Å holde styr på tidsbruk har innvirkning på fakturering.
Og dermed på bunnlinjen, og slik også på selskapets kontinuitet og din lønn.

Du klarer det!

Ha en flott dag.
Din vennlige LibrePlan prosjektstyringsserver fra nabolaget.', 'Vennligst sørg for at timelisten din er oppdatert.');

INSERT INTO databasechangelog (ID, AUTHOR, FILENAME, DATEEXECUTED, ORDEREXECUTED, MD5SUM, DESCRIPTION, COMMENTS, EXECTYPE, CONTEXTS, LABELS, LIQUIBASE, DEPLOYMENT_ID) VALUES ('add-email-templates-nb', 'jeroen', 'db.changelog-1.5.1-nb.xml', NOW(), 500, '7:6e6bd9c90422227286d7960161aafa53', 'insert tableName=email_template; insert tableName=email_template; insert tableName=email_template; insert tableName=email_template; insert tableName=email_template; insert tableName=email_template', '', 'EXECUTED', NULL, NULL, '3.5.1', '7988093552');

-- Changeset db.changelog-1.5.1-fa_IR.xml::add-email-templates-fa_IR::jeroen
INSERT INTO email_template (type, language, content, subject) VALUES (0, 15, 'سلام {firstname}،

یک وظیفه در برنامه مدیریت پروژه LibrePlan به {resource} اختصاص داده شده است.

پروژه: {project}
وظیفه: {task}

اطلاعات بیشتر را اینجا بیابید: {projecturl}

روز فوق‌العاده‌ای داشته باشید.
سرور مدیریت پروژه LibrePlan دوستانه‌ی شما.', 'یک وظیفه به شما اختصاص داده شده است');

INSERT INTO email_template (type, language, content, subject) VALUES (1, 15, 'سلام {firstname}

{resource} از یک وظیفه در برنامه مدیریت پروژه LibrePlan حذف شده است.

پروژه: {project}
وظیفه: {task}

اطلاعات بیشتر را اینجا بیابید: {projecturl}

روز فوق‌العاده‌ای داشته باشید.
سرور مدیریت پروژه LibrePlan دوستانه‌ی شما.', '{resource} از وظیفه {task} در پروژه {project} حذف شده است');

INSERT INTO email_template (type, language, content, subject) VALUES (2, 15, 'سلام {firstname}

می‌خواهیم به شما اطلاع دهیم که نقطه عطف {task} در پروژه {project} به دست آمده است.

پروژه: {project}
وظیفه: {task}

روز خوبی داشته باشید.
سرور مدیریت پروژه LibrePlan دوستانه‌ی شما.', 'به نقطه عطف {task} رسیده‌ایم');

INSERT INTO email_template (type, language, content, subject) VALUES (3, 15, 'سلام {firstname}،

می‌خواهیم به شما اطلاع دهیم که وظیفه {task} در پروژه {project} باید اکنون شروع شود.

اطلاعات بیشتر در {projecturl} موجود است.

روز فوق‌العاده‌ای داشته باشید.
سرور مدیریت پروژه LibrePlan دوستانه‌ی شما.', 'وظیفه {task} در پروژه {project} باید اکنون شروع شود');

INSERT INTO email_template (type, language, content, subject) VALUES (4, 15, 'سلام {firstname}،

می‌خواهیم به شما اطلاع دهیم که وظیفه {task} در پروژه {project} باید اکنون به پایان رسیده باشد.

اگر اینطور نیست، لطفاً مدیر پروژه را در جریان بگذارید.

اطلاعات بیشتر در {projecturl} موجود است.

روز فوق‌العاده‌ای داشته باشید.
سرور مدیریت پروژه LibrePlan دوستانه‌ی شما.', 'وظیفه {task} در پروژه {project} باید اکنون به پایان رسیده باشد.');

INSERT INTO email_template (type, language, content, subject) VALUES (5, 15, 'سلام {firstname}،

آیا می‌توانید اطمینان حاصل کنید که برگه زمانی شما به‌روز است؟

این به سازمان کمک می‌کند تا پیشرفت پروژه را به درستی پیگیری کند.

صادق باشیم. هیچ‌کس واقعاً این کار را دوست ندارد.
اما این فقط بخشی از کار است. پیگیری زمان صرف‌شده بر صورتحساب تأثیر می‌گذارد.
و بنابراین بر نتیجه نهایی، و در نتیجه بر تداوم شرکت و حقوق شما نیز تأثیر می‌گذارد.

شما می‌توانید این کار را بکنید!

روز فوق‌العاده‌ای داشته باشید.
سرور مدیریت پروژه LibrePlan دوستانه‌ی شما.', 'لطفاً اطمینان حاصل کنید که برگه زمانی شما به‌روز است.');

INSERT INTO databasechangelog (ID, AUTHOR, FILENAME, DATEEXECUTED, ORDEREXECUTED, MD5SUM, DESCRIPTION, COMMENTS, EXECTYPE, CONTEXTS, LABELS, LIQUIBASE, DEPLOYMENT_ID) VALUES ('add-email-templates-fa_IR', 'jeroen', 'db.changelog-1.5.1-fa_IR.xml', NOW(), 501, '7:7f095ed23ee73dd5a080e9902b5c1767', 'insert tableName=email_template; insert tableName=email_template; insert tableName=email_template; insert tableName=email_template; insert tableName=email_template; insert tableName=email_template', '', 'EXECUTED', NULL, NULL, '3.5.1', '7988093552');

-- Changeset db.changelog-1.5.1-ja.xml::add-email-templates-ja::jeroen
INSERT INTO email_template (type, language, content, subject) VALUES (0, 16, 'こんにちは {firstname}、

LibrePlanプロジェクト管理アプリケーションで{resource}にタスクが割り当てられました。

プロジェクト: {project}
タスク: {task}

詳細はこちらをご覧ください: {projecturl}

素晴らしい一日をお過ごしください。
ご近所のLibrePlanプロジェクト管理サーバーより。', 'タスクが割り当てられました');

INSERT INTO email_template (type, language, content, subject) VALUES (1, 16, 'こんにちは {firstname}

LibrePlanプロジェクト管理アプリケーションで{resource}がタスクから削除されました。

プロジェクト: {project}
タスク: {task}

詳細はこちらをご覧ください: {projecturl}

素晴らしい一日をお過ごしください。
ご近所のLibrePlanプロジェクト管理サーバーより。', '{resource}がプロジェクト{project}のタスク{task}から削除されました');

INSERT INTO email_template (type, language, content, subject) VALUES (2, 16, 'こんにちは {firstname}

プロジェクト{project}でマイルストーン{task}に到達したことをお知らせします。

プロジェクト: {project}
タスク: {task}

良い一日をお過ごしください。
ご近所のLibrePlanプロジェクト管理サーバーより。', 'マイルストーン{task}に到達しました');

INSERT INTO email_template (type, language, content, subject) VALUES (3, 16, 'こんにちは {firstname}、

プロジェクト{project}のタスク{task}はそろそろ開始する予定であることをお知らせします。

詳細は{projecturl}をご覧ください。

素晴らしい一日をお過ごしください。
ご近所のLibrePlanプロジェクト管理サーバーより。', 'プロジェクト{project}のタスク{task}はそろそろ開始する予定です');

INSERT INTO email_template (type, language, content, subject) VALUES (4, 16, 'こんにちは {firstname}、

プロジェクト{project}のタスク{task}はそろそろ完了する予定であることをお知らせします。

そうでない場合は、プロジェクトリーダーにご連絡ください。

詳細は{projecturl}をご覧ください。

素晴らしい一日をお過ごしください。
ご近所のLibrePlanプロジェクト管理サーバーより。', 'プロジェクト{project}のタスク{task}はそろそろ完了する予定です。');

INSERT INTO email_template (type, language, content, subject) VALUES (5, 16, 'こんにちは {firstname}、

タイムシートを最新の状態に保つようにしていただけますか？

プロジェクトの進捗状況を適切に把握するために組織の助けになります。

正直に言いましょう。この作業が好きな人は誰もいません。
でも、それは仕事の一部です。費やした時間を記録することは請求に影響します。
そして最終的な結果、ひいては会社の継続性とあなたの給与にも影響します。

あなたならできます！

素晴らしい一日をお過ごしください。
ご近所のLibrePlanプロジェクト管理サーバーより。', 'タイムシートを最新の状態に保つようにしてください。');

INSERT INTO databasechangelog (ID, AUTHOR, FILENAME, DATEEXECUTED, ORDEREXECUTED, MD5SUM, DESCRIPTION, COMMENTS, EXECTYPE, CONTEXTS, LABELS, LIQUIBASE, DEPLOYMENT_ID) VALUES ('add-email-templates-ja', 'jeroen', 'db.changelog-1.5.1-ja.xml', NOW(), 502, '7:957ce2fdfdbaf8ff43ee3de1c9479886', 'insert tableName=email_template; insert tableName=email_template; insert tableName=email_template; insert tableName=email_template; insert tableName=email_template; insert tableName=email_template', '', 'EXECUTED', NULL, NULL, '3.5.1', '7988093552');

-- Changeset db.changelog-1.5.1-pt_BR.xml::add-email-templates-pt_BR::jeroen
INSERT INTO email_template (type, language, content, subject) VALUES (0, 17, 'Olá {firstname},

Uma tarefa foi atribuída a {resource} no aplicativo de gerenciamento de projetos LibrePlan.

Projeto: {project}
Tarefa: {task}

Você pode encontrar mais informações aqui: {projecturl}

Tenha um ótimo dia.
Seu amigável servidor de gerenciamento de projetos LibrePlan da vizinhança.', 'Uma tarefa foi atribuída a você');

INSERT INTO email_template (type, language, content, subject) VALUES (1, 17, 'Olá {firstname}

{resource} foi removido de uma tarefa no aplicativo de gerenciamento de projetos LibrePlan.

Projeto: {project}
Tarefa: {task}

Você pode encontrar mais informações aqui: {projecturl}

Tenha um ótimo dia.
Seu amigável servidor de gerenciamento de projetos LibrePlan da vizinhança.', '{resource} foi removido da tarefa {task} no projeto {project}');

INSERT INTO email_template (type, language, content, subject) VALUES (2, 17, 'Olá {firstname}

Informamos que o marco {task} foi atingido no projeto {project}

Projeto: {project}
Tarefa: {task}

Tenha um bom dia.
Seu amigável servidor de gerenciamento de projetos LibrePlan da vizinhança.', 'O marco {task} foi atingido');

INSERT INTO email_template (type, language, content, subject) VALUES (3, 17, 'Olá {firstname},

Informamos que a tarefa {task} no projeto {project} deve começar agora.

Mais informações podem ser encontradas em {projecturl}

Tenha um ótimo dia.
Seu amigável servidor de gerenciamento de projetos LibrePlan da vizinhança.', 'A tarefa {task} no projeto {project} deve começar agora');

INSERT INTO email_template (type, language, content, subject) VALUES (4, 17, 'Olá {firstname},

Informamos que a tarefa {task} no projeto {project} deve estar concluída agora.

Caso contrário, informe o líder do projeto.

Mais informações podem ser encontradas em {projecturl}

Tenha um ótimo dia.
Seu amigável servidor de gerenciamento de projetos LibrePlan da vizinhança.', 'A tarefa {task} no projeto {project} deve estar concluída agora.');

INSERT INTO email_template (type, language, content, subject) VALUES (5, 17, 'Olá {firstname},

Você poderia se certificar de que sua planilha de horas está atualizada?

Isso ajuda a organização a acompanhar adequadamente o progresso do projeto.

Vamos ser honestos. Ninguém realmente gosta de fazer esse trabalho.
Mas faz simplesmente parte do trabalho. Acompanhar o tempo gasto tem impacto no faturamento.
E, portanto, no resultado final, e assim também na continuidade da empresa e no seu salário.

Você consegue!

Tenha um ótimo dia.
Seu amigável servidor de gerenciamento de projetos LibrePlan da vizinhança.', 'Por favor, certifique-se de que sua planilha de horas está atualizada.');

INSERT INTO databasechangelog (ID, AUTHOR, FILENAME, DATEEXECUTED, ORDEREXECUTED, MD5SUM, DESCRIPTION, COMMENTS, EXECTYPE, CONTEXTS, LABELS, LIQUIBASE, DEPLOYMENT_ID) VALUES ('add-email-templates-pt_BR', 'jeroen', 'db.changelog-1.5.1-pt_BR.xml', NOW(), 503, '7:32a16aaa4ce8cceb3aa647ecec8d86e8', 'insert tableName=email_template; insert tableName=email_template; insert tableName=email_template; insert tableName=email_template; insert tableName=email_template; insert tableName=email_template', '', 'EXECUTED', NULL, NULL, '3.5.1', '7988093552');

-- Changeset db.changelog-1.5.1-sv_SE.xml::add-email-templates-sv_SE::jeroen
INSERT INTO email_template (type, language, content, subject) VALUES (0, 18, 'Hej {firstname},

En uppgift har tilldelats {resource} i projekthanteringsapplikationen LibrePlan.

Projekt: {project}
Uppgift: {task}

Du hittar mer information här: {projecturl}

Ha en fantastisk dag.
Din vänliga LibrePlan-projekthanteringsserver från grannskapet.', 'En uppgift har tilldelats dig');

INSERT INTO email_template (type, language, content, subject) VALUES (1, 18, 'Hej {firstname}

{resource} har tagits bort från en uppgift i projekthanteringsapplikationen LibrePlan.

Projekt: {project}
Uppgift: {task}

Du hittar mer information här: {projecturl}

Ha en fantastisk dag.
Din vänliga LibrePlan-projekthanteringsserver från grannskapet.', '{resource} har tagits bort från uppgiften {task} i projektet {project}');

INSERT INTO email_template (type, language, content, subject) VALUES (2, 18, 'Hej {firstname}

Vi vill informera dig om att milstolpen {task} har uppnåtts i projektet {project}

Projekt: {project}
Uppgift: {task}

Ha en trevlig dag.
Din vänliga LibrePlan-projekthanteringsserver från grannskapet.', 'Milstolpen {task} har uppnåtts');

INSERT INTO email_template (type, language, content, subject) VALUES (3, 18, 'Hej {firstname},

Vi vill informera dig om att uppgiften {task} i projektet {project} bör börja ungefär nu.

Mer information finns på {projecturl}

Ha en fantastisk dag.
Din vänliga LibrePlan-projekthanteringsserver från grannskapet.', 'Uppgiften {task} i projektet {project} bör börja ungefär nu');

INSERT INTO email_template (type, language, content, subject) VALUES (4, 18, 'Hej {firstname},

Vi vill informera dig om att uppgiften {task} i projektet {project} bör vara klar ungefär nu.

Om så inte är fallet, vänligen informera projektledaren om detta.

Mer information finns på {projecturl}

Ha en fantastisk dag.
Din vänliga LibrePlan-projekthanteringsserver från grannskapet.', 'Uppgiften {task} i projektet {project} bör vara klar ungefär nu.');

INSERT INTO email_template (type, language, content, subject) VALUES (5, 18, 'Hej {firstname},

Kan du vänligen se till att din tidrapport är uppdaterad?

Det hjälper organisationen att hålla god koll på projektframstegen.

Vi ska vara ärliga. Ingen tycker egentligen om att göra det här arbetet.
Men det är bara en del av jobbet. Att hålla koll på nedlagd tid påverkar faktureringen.
Och därmed resultatet, och alltså även företagets kontinuitet och din lön.

Du klarar det!

Ha en fantastisk dag.
Din vänliga LibrePlan-projekthanteringsserver från grannskapet.', 'Vänligen se till att din tidrapport är uppdaterad.');

INSERT INTO databasechangelog (ID, AUTHOR, FILENAME, DATEEXECUTED, ORDEREXECUTED, MD5SUM, DESCRIPTION, COMMENTS, EXECTYPE, CONTEXTS, LABELS, LIQUIBASE, DEPLOYMENT_ID) VALUES ('add-email-templates-sv_SE', 'jeroen', 'db.changelog-1.5.1-sv_SE.xml', NOW(), 504, '7:e763f4f97e5b522c753fd6448a20a1b9', 'insert tableName=email_template; insert tableName=email_template; insert tableName=email_template; insert tableName=email_template; insert tableName=email_template; insert tableName=email_template', '', 'EXECUTED', NULL, NULL, '3.5.1', '7988093552');

-- Changeset db.changelog-1.6.xml::add-new-column-show-reported-hours::lmann
-- Add columns to store user default setting of show/hide reported hours button
ALTER TABLE user_table ADD show_reported_hours_on BOOLEAN;

INSERT INTO databasechangelog (ID, AUTHOR, FILENAME, DATEEXECUTED, ORDEREXECUTED, MD5SUM, DESCRIPTION, COMMENTS, EXECTYPE, CONTEXTS, LABELS, LIQUIBASE, DEPLOYMENT_ID) VALUES ('add-new-column-show-reported-hours', 'lmann', 'db.changelog-1.6.xml', NOW(), 505, '7:1a60add35d506e3cf2d574cbd91602f7', 'addColumn tableName=user_table', 'Add columns to store user default setting of show/hide reported hours button', 'EXECUTED', NULL, NULL, '3.5.1', '7988093552');

-- Changeset db.changelog-1.6.xml::add-new-columns-show-resources::lmann
-- Add columns to store user default setting of show/hide resources button
ALTER TABLE user_table ADD show_resources_on BOOLEAN;

INSERT INTO databasechangelog (ID, AUTHOR, FILENAME, DATEEXECUTED, ORDEREXECUTED, MD5SUM, DESCRIPTION, COMMENTS, EXECTYPE, CONTEXTS, LABELS, LIQUIBASE, DEPLOYMENT_ID) VALUES ('add-new-columns-show-resources', 'lmann', 'db.changelog-1.6.xml', NOW(), 506, '7:da415aba20507377e61037d81be7fd85', 'addColumn tableName=user_table', 'Add columns to store user default setting of show/hide resources button', 'EXECUTED', NULL, NULL, '3.5.1', '7988093552');

-- Changeset db.changelog-1.6.xml::add-new-columns-show-advances::lmann
-- Add columns to store user default setting of show/hide advances button
ALTER TABLE user_table ADD show_advances_on BOOLEAN;

INSERT INTO databasechangelog (ID, AUTHOR, FILENAME, DATEEXECUTED, ORDEREXECUTED, MD5SUM, DESCRIPTION, COMMENTS, EXECTYPE, CONTEXTS, LABELS, LIQUIBASE, DEPLOYMENT_ID) VALUES ('add-new-columns-show-advances', 'lmann', 'db.changelog-1.6.xml', NOW(), 507, '7:db1e92dba15502826ede5382be1bde60', 'addColumn tableName=user_table', 'Add columns to store user default setting of show/hide advances button', 'EXECUTED', NULL, NULL, '3.5.1', '7988093552');

-- Changeset db.changelog-1.6.xml::add-new-columns-show-labels::lmann
-- Add columns to store user default setting of show/hide labels button
ALTER TABLE user_table ADD show_labels_on BOOLEAN;

INSERT INTO databasechangelog (ID, AUTHOR, FILENAME, DATEEXECUTED, ORDEREXECUTED, MD5SUM, DESCRIPTION, COMMENTS, EXECTYPE, CONTEXTS, LABELS, LIQUIBASE, DEPLOYMENT_ID) VALUES ('add-new-columns-show-labels', 'lmann', 'db.changelog-1.6.xml', NOW(), 508, '7:f2ac1163edd7859f9e64b7de9997f667', 'addColumn tableName=user_table', 'Add columns to store user default setting of show/hide labels button', 'EXECUTED', NULL, NULL, '3.5.1', '7988093552');

-- Changeset db.changelog-1.6.xml::add-new-columns-show-moneycostbar::lmann
-- Add columns to store user default setting of show/hide moneycostbar button
ALTER TABLE user_table ADD show_money_cost_bar_on BOOLEAN;

INSERT INTO databasechangelog (ID, AUTHOR, FILENAME, DATEEXECUTED, ORDEREXECUTED, MD5SUM, DESCRIPTION, COMMENTS, EXECTYPE, CONTEXTS, LABELS, LIQUIBASE, DEPLOYMENT_ID) VALUES ('add-new-columns-show-moneycostbar', 'lmann', 'db.changelog-1.6.xml', NOW(), 509, '7:786a9164ea48470eae498180fc60452d', 'addColumn tableName=user_table', 'Add columns to store user default setting of show/hide moneycostbar button', 'EXECUTED', NULL, NULL, '3.5.1', '7988093552');

-- Changeset db.changelog-1.6.xml::add-new-columns-projects-filter-finished::lmann
-- Add columns to store user default setting of filter finished projects in views
ALTER TABLE user_table ADD projects_filter_finished_on BOOLEAN;

INSERT INTO databasechangelog (ID, AUTHOR, FILENAME, DATEEXECUTED, ORDEREXECUTED, MD5SUM, DESCRIPTION, COMMENTS, EXECTYPE, CONTEXTS, LABELS, LIQUIBASE, DEPLOYMENT_ID) VALUES ('add-new-columns-projects-filter-finished', 'lmann', 'db.changelog-1.6.xml', NOW(), 510, '7:cf7c3e06bd1fabc8fc3b821c4a38dc3d', 'addColumn tableName=user_table', 'Add columns to store user default setting of filter finished projects in views', 'EXECUTED', NULL, NULL, '3.5.1', '7988093552');

-- Changeset db.changelog-1.6.xml::set-default-value-show-reported-hours::lmann
ALTER TABLE user_table ALTER COLUMN  show_reported_hours_on SET DEFAULT FALSE;

UPDATE user_table SET show_reported_hours_on = 'FALSE' WHERE show_reported_hours_on IS NULL;

ALTER TABLE user_table ALTER COLUMN  show_reported_hours_on SET NOT NULL;

INSERT INTO databasechangelog (ID, AUTHOR, FILENAME, DATEEXECUTED, ORDEREXECUTED, MD5SUM, DESCRIPTION, COMMENTS, EXECTYPE, CONTEXTS, LABELS, LIQUIBASE, DEPLOYMENT_ID) VALUES ('set-default-value-show-reported-hours', 'lmann', 'db.changelog-1.6.xml', NOW(), 511, '7:24daba031c7f498d10850815ba667e1d', 'addDefaultValue columnName=show_reported_hours_on, tableName=user_table; addNotNullConstraint columnName=show_reported_hours_on, tableName=user_table', '', 'EXECUTED', NULL, NULL, '3.5.1', '7988093552');

-- Changeset db.changelog-1.6.xml::set-default-value-show-resources::lmann
ALTER TABLE user_table ALTER COLUMN  show_resources_on SET DEFAULT FALSE;

UPDATE user_table SET show_resources_on = 'FALSE' WHERE show_resources_on IS NULL;

ALTER TABLE user_table ALTER COLUMN  show_resources_on SET NOT NULL;

INSERT INTO databasechangelog (ID, AUTHOR, FILENAME, DATEEXECUTED, ORDEREXECUTED, MD5SUM, DESCRIPTION, COMMENTS, EXECTYPE, CONTEXTS, LABELS, LIQUIBASE, DEPLOYMENT_ID) VALUES ('set-default-value-show-resources', 'lmann', 'db.changelog-1.6.xml', NOW(), 512, '7:b280785d3892a55511ae0883eb9c3375', 'addDefaultValue columnName=show_resources_on, tableName=user_table; addNotNullConstraint columnName=show_resources_on, tableName=user_table', '', 'EXECUTED', NULL, NULL, '3.5.1', '7988093552');

-- Changeset db.changelog-1.6.xml::set-default-value-show-advances::lmann
ALTER TABLE user_table ALTER COLUMN  show_advances_on SET DEFAULT FALSE;

UPDATE user_table SET show_advances_on = 'FALSE' WHERE show_advances_on IS NULL;

ALTER TABLE user_table ALTER COLUMN  show_advances_on SET NOT NULL;

INSERT INTO databasechangelog (ID, AUTHOR, FILENAME, DATEEXECUTED, ORDEREXECUTED, MD5SUM, DESCRIPTION, COMMENTS, EXECTYPE, CONTEXTS, LABELS, LIQUIBASE, DEPLOYMENT_ID) VALUES ('set-default-value-show-advances', 'lmann', 'db.changelog-1.6.xml', NOW(), 513, '7:e41f5c79dbd62c92ab41fe32776d29d8', 'addDefaultValue columnName=show_advances_on, tableName=user_table; addNotNullConstraint columnName=show_advances_on, tableName=user_table', '', 'EXECUTED', NULL, NULL, '3.5.1', '7988093552');

-- Changeset db.changelog-1.6.xml::set-default-value-show-labels::lmann
ALTER TABLE user_table ALTER COLUMN  show_labels_on SET DEFAULT FALSE;

UPDATE user_table SET show_labels_on = 'FALSE' WHERE show_labels_on IS NULL;

ALTER TABLE user_table ALTER COLUMN  show_labels_on SET NOT NULL;

INSERT INTO databasechangelog (ID, AUTHOR, FILENAME, DATEEXECUTED, ORDEREXECUTED, MD5SUM, DESCRIPTION, COMMENTS, EXECTYPE, CONTEXTS, LABELS, LIQUIBASE, DEPLOYMENT_ID) VALUES ('set-default-value-show-labels', 'lmann', 'db.changelog-1.6.xml', NOW(), 514, '7:7cde8ac01150cfbc39dfa2fbd6ba3e98', 'addDefaultValue columnName=show_labels_on, tableName=user_table; addNotNullConstraint columnName=show_labels_on, tableName=user_table', '', 'EXECUTED', NULL, NULL, '3.5.1', '7988093552');

-- Changeset db.changelog-1.6.xml::set-default-value-show-money_cost_bar::lmann
ALTER TABLE user_table ALTER COLUMN  show_money_cost_bar_on SET DEFAULT FALSE;

UPDATE user_table SET show_money_cost_bar_on = 'FALSE' WHERE show_money_cost_bar_on IS NULL;

ALTER TABLE user_table ALTER COLUMN  show_money_cost_bar_on SET NOT NULL;

INSERT INTO databasechangelog (ID, AUTHOR, FILENAME, DATEEXECUTED, ORDEREXECUTED, MD5SUM, DESCRIPTION, COMMENTS, EXECTYPE, CONTEXTS, LABELS, LIQUIBASE, DEPLOYMENT_ID) VALUES ('set-default-value-show-money_cost_bar', 'lmann', 'db.changelog-1.6.xml', NOW(), 515, '7:9d6898fcd7babc877d4b2424a5d2fed6', 'addDefaultValue columnName=show_money_cost_bar_on, tableName=user_table; addNotNullConstraint columnName=show_money_cost_bar_on, tableName=user_table', '', 'EXECUTED', NULL, NULL, '3.5.1', '7988093552');

-- Changeset db.changelog-1.6.xml::set-default-value-projects-filter-finished::lmann
ALTER TABLE user_table ALTER COLUMN  projects_filter_finished_on SET DEFAULT FALSE;

UPDATE user_table SET projects_filter_finished_on = 'FALSE' WHERE projects_filter_finished_on IS NULL;

ALTER TABLE user_table ALTER COLUMN  projects_filter_finished_on SET NOT NULL;

INSERT INTO databasechangelog (ID, AUTHOR, FILENAME, DATEEXECUTED, ORDEREXECUTED, MD5SUM, DESCRIPTION, COMMENTS, EXECTYPE, CONTEXTS, LABELS, LIQUIBASE, DEPLOYMENT_ID) VALUES ('set-default-value-projects-filter-finished', 'lmann', 'db.changelog-1.6.xml', NOW(), 516, '7:1bb57c06809f936b8782eb7fd6d68f7c', 'addDefaultValue columnName=projects_filter_finished_on, tableName=user_table; addNotNullConstraint columnName=projects_filter_finished_on, tableName=user_table', '', 'EXECUTED', NULL, NULL, '3.5.1', '7988093552');

-- Changeset db.changelog-1.6.xml::set-allow_to_gather_usage_stats-to-true::jeroen
UPDATE configuration SET allow_to_gather_usage_stats_enabled = 'TRUE';

INSERT INTO databasechangelog (ID, AUTHOR, FILENAME, DATEEXECUTED, ORDEREXECUTED, MD5SUM, DESCRIPTION, COMMENTS, EXECTYPE, CONTEXTS, LABELS, LIQUIBASE, DEPLOYMENT_ID) VALUES ('set-allow_to_gather_usage_stats-to-true', 'jeroen', 'db.changelog-1.6.xml', NOW(), 517, '7:e568769d4318a3a3deb56d383981fbf9', 'update tableName=configuration', '', 'EXECUTED', NULL, NULL, '3.5.1', '7988093552');

-- Release Database Lock
UPDATE databasechangeloglock SET LOCKED = FALSE, LOCKEDBY = NULL, LOCKGRANTED = NULL WHERE ID = 1;

