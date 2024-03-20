(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type azurerm_site_recovery_hyperv_replication_policy = {
  application_consistent_snapshot_frequency_in_hours : float prop;
      (** application_consistent_snapshot_frequency_in_hours *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  recovery_point_retention_in_hours : float prop;
      (** recovery_point_retention_in_hours *)
  recovery_vault_id : string prop;  (** recovery_vault_id *)
  replication_interval_in_seconds : float prop;
      (** replication_interval_in_seconds *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_site_recovery_hyperv_replication_policy *)

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_site_recovery_hyperv_replication_policy ?id ?timeouts
    ~application_consistent_snapshot_frequency_in_hours ~name
    ~recovery_point_retention_in_hours ~recovery_vault_id
    ~replication_interval_in_seconds () :
    azurerm_site_recovery_hyperv_replication_policy =
  {
    application_consistent_snapshot_frequency_in_hours;
    id;
    name;
    recovery_point_retention_in_hours;
    recovery_vault_id;
    replication_interval_in_seconds;
    timeouts;
  }

type t = {
  application_consistent_snapshot_frequency_in_hours : float prop;
  id : string prop;
  name : string prop;
  recovery_point_retention_in_hours : float prop;
  recovery_vault_id : string prop;
  replication_interval_in_seconds : float prop;
}

let make ?id ?timeouts
    ~application_consistent_snapshot_frequency_in_hours ~name
    ~recovery_point_retention_in_hours ~recovery_vault_id
    ~replication_interval_in_seconds __id =
  let __type = "azurerm_site_recovery_hyperv_replication_policy" in
  let __attrs =
    ({
       application_consistent_snapshot_frequency_in_hours =
         Prop.computed __type __id
           "application_consistent_snapshot_frequency_in_hours";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       recovery_point_retention_in_hours =
         Prop.computed __type __id
           "recovery_point_retention_in_hours";
       recovery_vault_id =
         Prop.computed __type __id "recovery_vault_id";
       replication_interval_in_seconds =
         Prop.computed __type __id "replication_interval_in_seconds";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_site_recovery_hyperv_replication_policy
        (azurerm_site_recovery_hyperv_replication_policy ?id
           ?timeouts
           ~application_consistent_snapshot_frequency_in_hours ~name
           ~recovery_point_retention_in_hours ~recovery_vault_id
           ~replication_interval_in_seconds ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?timeouts
    ~application_consistent_snapshot_frequency_in_hours ~name
    ~recovery_point_retention_in_hours ~recovery_vault_id
    ~replication_interval_in_seconds __id =
  let (r : _ Tf_core.resource) =
    make ?id ?timeouts
      ~application_consistent_snapshot_frequency_in_hours ~name
      ~recovery_point_retention_in_hours ~recovery_vault_id
      ~replication_interval_in_seconds __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
