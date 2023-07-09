/// <summary>
/// Unknown KNH Customer Sales List (ID 51600) extends Record Customer - Top 10 List.
/// </summary>
reportextension 51600 "KNHCustomerSalesList" extends "Customer - Top 10 List"
{
    dataset
    {
        add(Integer)
        {
            // add existing field from base table to dataset
            column(KNHCustomer_GLN; Customer.GLN)
            {
            }
            // add field from table extending Customer
            column(KNHCustomer_MyField; Customer."KNH MyField")
            {
            }
        }

        add(Customer)
        {
            // add a new field to the dataset
            column(KNHnetWeight; netWeight)
            {
            }
        }

        modify(Customer)
        {
            // modify the new, added field
            trigger OnBeforeAfterGetRecord()
            begin
                if (weightInPounds) then
                    netWeight := netWeight * 2.2
                else
                    netWeight := netWeight;
            end;
        }
    }

    requestpage
    {
        layout
        {
            addafter(Show)
            {
                // add field from table extension to request page
                field(KNHCustomer_MyField; Customer."KNH MyField")
                {

                }
            }
        }

        actions
        {
        }
    }

    labels
    {
    }

    trigger OnPreReport()
    begin

    end;

    trigger OnPostReport()
    begin

    end;

    var
        netWeight: Integer;
        weightInPounds: Boolean;
}
