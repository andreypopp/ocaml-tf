(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

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

let register ?tf_module ?id ?timeouts
    ~application_consistent_snapshot_frequency_in_minutes ~name
    ~recovery_point_retention_in_minutes ~recovery_vault_id
    __resource_id =
  let __resource_type =
    "azurerm_site_recovery_vmware_replication_policy"
  in
  let __resource =
    azurerm_site_recovery_vmware_replication_policy ?id ?timeouts
      ~application_consistent_snapshot_frequency_in_minutes ~name
      ~recovery_point_retention_in_minutes ~recovery_vault_id ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_site_recovery_vmware_replication_policy
       __resource);
  let __resource_attributes =
    ({
       application_consistent_snapshot_frequency_in_minutes =
         Prop.computed __resource_type __resource_id
           "application_consistent_snapshot_frequency_in_minutes";
       id = Prop.computed __resource_type __resource_id "id";
       name = Prop.computed __resource_type __resource_id "name";
       recovery_point_retention_in_minutes =
         Prop.computed __resource_type __resource_id
           "recovery_point_retention_in_minutes";
       recovery_vault_id =
         Prop.computed __resource_type __resource_id
           "recovery_vault_id";
     }
      : t)
  in
  __resource_attributes
