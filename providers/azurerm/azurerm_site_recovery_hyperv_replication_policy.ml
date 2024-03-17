(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_site_recovery_hyperv_replication_policy__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_site_recovery_hyperv_replication_policy__timeouts *)

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
  timeouts :
    azurerm_site_recovery_hyperv_replication_policy__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_site_recovery_hyperv_replication_policy *)

type t = {
  application_consistent_snapshot_frequency_in_hours : float prop;
  id : string prop;
  name : string prop;
  recovery_point_retention_in_hours : float prop;
  recovery_vault_id : string prop;
  replication_interval_in_seconds : float prop;
}

let azurerm_site_recovery_hyperv_replication_policy ?id ?timeouts
    ~application_consistent_snapshot_frequency_in_hours ~name
    ~recovery_point_retention_in_hours ~recovery_vault_id
    ~replication_interval_in_seconds __resource_id =
  let __resource_type =
    "azurerm_site_recovery_hyperv_replication_policy"
  in
  let __resource =
    ({
       application_consistent_snapshot_frequency_in_hours;
       id;
       name;
       recovery_point_retention_in_hours;
       recovery_vault_id;
       replication_interval_in_seconds;
       timeouts;
     }
      : azurerm_site_recovery_hyperv_replication_policy)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_site_recovery_hyperv_replication_policy
       __resource);
  let __resource_attributes =
    ({
       application_consistent_snapshot_frequency_in_hours =
         Prop.computed __resource_type __resource_id
           "application_consistent_snapshot_frequency_in_hours";
       id = Prop.computed __resource_type __resource_id "id";
       name = Prop.computed __resource_type __resource_id "name";
       recovery_point_retention_in_hours =
         Prop.computed __resource_type __resource_id
           "recovery_point_retention_in_hours";
       recovery_vault_id =
         Prop.computed __resource_type __resource_id
           "recovery_vault_id";
       replication_interval_in_seconds =
         Prop.computed __resource_type __resource_id
           "replication_interval_in_seconds";
     }
      : t)
  in
  __resource_attributes
