SET SERVEROUTPUT ON;

DECLARE
    amount NUMBER := &Purchase_Amount;
    discount NUMBER;
    payable NUMBER;

BEGIN
    IF amount >= 5000 THEN
        discount := amount * 20/100;
    ELSIF amount >= 2000 THEN
        discount := amount * 10/100;
    ELSE
        discount := 0;
    END IF;

    payable := amount - discount;

    DBMS_OUTPUT.PUT_LINE('Discount = Rs.' || discount);
    DBMS_OUTPUT.PUT_LINE('Payable Amount = Rs.' || payable);

END;
/