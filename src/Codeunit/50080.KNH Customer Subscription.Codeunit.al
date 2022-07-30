/// <summary>
/// Codeunit KNH Customer Subscription (ID 50080).
/// </summary>
codeunit 50080 "KNH Customer Subscription"
{
    [EventSubscriber(ObjectType::Page, Page::"Customer Card", 'OnAfterOnOpenPage', '', true, true)]
    local procedure OnAfterOnOpenPage(var Customer: Record Customer; xCustomer: Record Customer)
    begin
        Customer.TestField(Name);
        Customer.Name := UpperCase(Customer.Name);
    end;

    [EventSubscriber(ObjectType::Table, Database::Customer, 'OnBeforeCreateNewCustomer', '', true, true)]
    local procedure OnBeforeCreateNewCustomer(CustomerName: Text[100]; ShowCustomerCard: Boolean; var NewCustomerCode: Code[20]; var IsHandled: Boolean)
    begin
        Message('Are you sure?');
        //Note: If IsHandled set to false then code in procedure CreateNewCustomer will not be run.
    end;
}


