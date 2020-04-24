codeunit 50000 "JSON Convert"
{
    trigger OnRun()
    begin
    end;

    procedure SerializeObject(var RecRef: RecordRef) JObject: JsonObject;
    var
        FieldRef: FieldRef;
        TableFields: Record Field;
    begin
        TableFields.SetRange(TableNo, RecRef.Number);
        TableFields.SetRange(ObsoleteState, TableFields.ObsoleteState::No);

        if TableFields.FindSet() then begin
            repeat
                Clear(FieldRef);
                FieldRef := RecRef.Field(TableFields."No.");
                JObject.Add(FieldRef.Name, Format(FieldRef.Value));
            until TableFields.Next() = 0;
        end;

        exit(JObject);
    end;
}