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

type azurerm_site_recovery_vmware_replication_policy = {
  application_consistent_snapshot_frequency_in_minutes : float prop;
      (** application_consistent_snapshot_frequency_in_minutes *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  recovery_point_retention_in_minutes : float prop;
      (** recovery_point_retention_in_minutes *)
  recovery_vault_id : string prop;  (** recovery_vault_id *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_site_recovery_vmware_replication_policy *)

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_site_recovery_vmware_replication_policy ?id ?timeouts
    ~application_consistent_snapshot_frequency_in_minutes ~name
    ~recovery_point_retention_in_minutes ~recovery_vault_id () :
    azurerm_site_recovery_vmware_replication_policy =
  {
    application_consistent_snapshot_frequency_in_minutes;
    id;
    name;
    recovery_point_retention_in_minutes;
    recovery_vault_id;
    timeouts;
  }

type t = {
  application_consistent_snapshot_frequency_in_minutes : float prop;
  id : string prop;
  name : string prop;
  recovery_point_retention_in_minutes : float prop;
  recovery_vault_id : string prop;
}

let make ?id ?timeouts
    ~application_consistent_snapshot_frequency_in_minutes ~name
    ~recovery_point_retention_in_minutes ~recovery_vault_id __id =
  let __type = "azurerm_site_recovery_vmware_replication_policy" in
  let __attrs =
    ({
       application_consistent_snapshot_frequency_in_minutes =
         Prop.computed __type __id
           "application_consistent_snapshot_frequency_in_minutes";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       recovery_point_retention_in_minutes =
         Prop.computed __type __id
           "recovery_point_retention_in_minutes";
       recovery_vault_id =
         Prop.computed __type __id "recovery_vault_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_site_recovery_vmware_replication_policy
        (azurerm_site_recovery_vmware_replication_policy ?id
           ?timeouts
           ~application_consistent_snapshot_frequency_in_minutes
           ~name ~recovery_point_retention_in_minutes
           ~recovery_vault_id ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?timeouts
    ~application_consistent_snapshot_frequency_in_minutes ~name
    ~recovery_point_retention_in_minutes ~recovery_vault_id __id =
  let (r : _ Tf_core.resource) =
    make ?id ?timeouts
      ~application_consistent_snapshot_frequency_in_minutes ~name
      ~recovery_point_retention_in_minutes ~recovery_vault_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
