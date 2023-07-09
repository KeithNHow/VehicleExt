/// <summary>
/// Codeunit KNH Event Subscriptions (ID 51600).
/// </summary>
codeunit 51600 "KNHCustomerSubscription"
{
    [EventSubscriber(ObjectType::Table, Database::Customer, 'OnBeforeOnDelete', '', true, true)]
    local procedure OnBeforeOnDelete(var Customer: Record Customer; var IsHandled: Boolean)
    begin
        Message('You are about to delete this record.');
    end;

    [EventSubscriber(ObjectType::Table, Database::Customer, 'OnBeforeOpenCustomerLedgerEntries', '', true, true)]
    local procedure OnBeforeOpenCustomerLedgerEntries(var Customer: Record Customer; var DetailedCustLedgEntry: Record "Detailed Cust. Ledg. Entry"; FilterOnDueEntries: Boolean; var IsHandled: Boolean)
    begin
        Message('You are about to view the ledger related entry records.');
    end;

    [EventSubscriber(ObjectType::Page, Page::"Customer Card", 'OnAfterOnOpenPage', '', true, true)]
    local procedure OnAfterOnOpenPage(var Customer: Record Customer; xCustomer: Record Customer)
    begin
        if Customer."No." <> '' then begin
            Customer.TestField(Name);
            Customer.Name := UpperCase(Customer.Name);
            Customer.Modify();
        end;
    end;
}