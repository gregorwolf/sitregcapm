using com.sap.sapmentors.sitregcapm as sitreg from '../db/data-model';

service PublicService {
    entity Events @( 
            Capabilities: {
            InsertRestrictions: {Insertable: false},
            UpdateRestrinctions: {Updatable: false},
            DeleteRestrictions: {Deletable: false}
        }
    ) as projection on sitreg.Events;


    entity Participants @( 
            Capabilities: {
            InsertRestrictions: {Insertable: false},
            UpdateRestrinctions: {Updatable: false},
            DeleteRestrictions: {Deletable: false}
        }
    ) as projection  on sitreg.Participants;
    entity CoOrganizers @readonly as projection on sitreg.CoOrganizers{
        *,
        Events: redirected to Events
        
    };
    entity Devices @readonly as projection on sitreg.Devices{
        *,
        Events: redirected to Events
    };
    entity PrintQueues @readonly as projection on sitreg.PrintQueues{
        *,
        Events: redirected to Events
    };
    entity Tickets @readonly as projection on sitreg.Tickets{
        *,
        Events: redirected to Events
    };
    entity EventTypes @readonly as projection on sitreg.EventTypes;
    entity RelationsToSAP @readonly as projection on sitreg.RelationsToSAP;
}
