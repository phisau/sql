=============
HANA Security
=============

Hana security lässt sich in zwei Teile unterteilen:

- Datenbank security: ist so wie bei Oracle/Postgres
- Calculation View Security ( Analytical Privileges):
    a) Classic Analytic Privileges (veraltet; gibt es bei XSA nicht mehr)
    b) SQL Analytic Privileges (HANA 1 und 2; bei HANA XSA ist es mandatory))
    c) Keine 'content' (CV u TF) Privileges

Datenbank-Privileges
====================

Ein User braucht nur ein 'GRANT SELECT ON private.cars_view TO badguy', um auf die Tabelle cars_views View zuzugreifen. Folgendes SQL liefert aufgrund fehlender Privileges nichts zurueck.

``SELECT * FROM private.cars``

In HANA laesst sich das auch in Design-time Objekten regeln.


Content-Privileges
==================

SAP HANA hat eine zweite Schicht bei Berechtigungen. Eine proprietaeres Level ueber der Database. Man hat drei optionen ( siehe oben).  -------------

Drei Optionen
-------------

    a) Classic Analytic Privileges (veraltet; gibt es bei XSA nicht mehr)
    b) SQL Analytic Privileges (HANA 1 und 2; bei HANA XSA ist es mandatory))
    c) Keine 'content' (CV u TF) Privileges


---------------------
Analytical Privileges
---------------------



-------
Objekte
-------




Calculation Views
-----------------

Table Functions
---------------

Gibt es Privileges des:
- Invoker
- Definer
