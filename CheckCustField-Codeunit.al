codeunit 50100 "Check Cust. Field Sales Order"
{
    [EventSubscriber(ObjectType::Table, DataBase::"Sales Header", OnAfterSelltoCustomerNoOnAfterValidate, '', false, false)]
    local procedure "Check Cust. Field on Sales Order"(var SalesHeader: Record "Sales Header";
        var xSalesHeader: Record "Sales Header")
    var
        lrCustomer: Record Customer;
        ltxterror: label 'This customer is not allowed to be used on Sales Orders. Please check the "%1" field on the Customer Card.';
    begin
        if lrCustomer.Get(SalesHeader."Sell-to Customer No.") then begin
            if not lrCustomer."Use this customer" then
                Error(ltxterror, lrCustomer.FieldCaption("Use this customer"));
        end;
    end;
}