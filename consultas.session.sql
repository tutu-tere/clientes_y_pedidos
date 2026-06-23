INSERT INTO clientes
VALUES(
    1,
    "María Teresa Picardo",
    "calle falsa 123",
    917863399
  );
INSERT INTO clientes
VALUES(
    2,
    "Pablo Ponce",
    "Puerta al infierno 666",
    917228980
  );
INSERT INTO clientes
VALUES (
    3,
    "Ahinoam Parra",
    "Elena camalez 721",
    934767789
  );
INSERT INTO clientes
VALUES (
    4,
    "Sandra Sepulveda",
    "Chorrillos 456",
    993400873
  );
INSERT INTO clientes
VALUES(
    5,
    "Fernando Castro",
    "El almendral 023",
    923388924
  );
INSERT INTO pedidos
VALUES (1, 1, '2026-06-01', 50000);
INSERT INTO pedidos
VALUES (2, 1, '2026-06-05', 75000);
INSERT INTO pedidos
VALUES (3, 2, '2026-06-02', 30000);
INSERT INTO pedidos
VALUES (4, 2, '2026-06-10', 45000);
INSERT INTO pedidos
VALUES (5, 3, '2026-06-03', 60000);
INSERT INTO pedidos
VALUES (6, 3, '2026-06-12', 20000);
INSERT INTO pedidos
VALUES (7, 4, '2026-06-04', 80000);
INSERT INTO pedidos
VALUES (8, 4, '2026-06-15', 15000);
INSERT INTO pedidos
VALUES (9, 5, '2026-06-06', 40000);
INSERT INTO pedidos
VALUES (10, 5, '2026-06-18', 55000);
SELECT c.id_clientes,
  c.nombre,
  p.id_pedidos AS id_pedido,
  p.fecha,
  p.total
FROM clientes c
  LEFT JOIN pedidos p ON c.id_clientes = p.cliente_id;
SELECT *
FROM pedidos
WHERE cliente_id = 1;
SELECT c.id_clientes,
  c.nombre,
  SUM(p.total) AS total_pedidos
FROM clientes c
  JOIN pedidos p ON c.id_clientes = p.cliente_id
GROUP BY c.id_clientes,
  c.nombre;
DELETE FROM pedidos
WHERE cliente_id = 4;
DELETE FROM clientes
WHERE id_clientes = 4;
SELECT c.id_clientes,
  c.nombre,
  COUNT(p.cliente_id) AS cantidad_pedidos
FROM clientes c
  JOIN pedidos p ON c.id_clientes = p.cliente_id
GROUP BY c.id_clientes,
  c.nombre
ORDER BY cantidad_pedidos DESC
LIMIT 3;