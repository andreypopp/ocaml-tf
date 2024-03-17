(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_site_recovery_hyperv_replication_policy__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_site_recovery_hyperv_replication_policy__timeouts *)

type azurerm_site_recovery_hyperv_replication_policy = {
  application_consistent_snapshot_frequency_in_hours : float;
      (** application_consistent_snapshot_frequency_in_hours *)
  name : string;  (** name *)
  recovery_point_retention_in_hours : float;
      (** recovery_point_retention_in_hours *)
  recovery_vault_id : string;  (** recovery_vault_id *)
  replication_interval_in_seconds : float;
      (** replication_interval_in_seconds *)
  timeouts :
    azurerm_site_recovery_hyperv_replication_policy__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_site_recovery_hyperv_replication_policy *)

let azurerm_site_recovery_hyperv_replication_policy ?timeouts
    ~application_consistent_snapshot_frequency_in_hours ~name
    ~recovery_point_retention_in_hours ~recovery_vault_id
    ~replication_interval_in_seconds __resource_id =
  let __resource_type =
    "azurerm_site_recovery_hyperv_replication_policy"
  in
  let __resource =
    {
      application_consistent_snapshot_frequency_in_hours;
      name;
      recovery_point_retention_in_hours;
      recovery_vault_id;
      replication_interval_in_seconds;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_site_recovery_hyperv_replication_policy
       __resource);
  ()
