(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type azurerm_site_recovery_replication_policy__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_site_recovery_replication_policy__timeouts *)

type azurerm_site_recovery_replication_policy = {
  application_consistent_snapshot_frequency_in_minutes : float;
      (** application_consistent_snapshot_frequency_in_minutes *)
  name : string;  (** name *)
  recovery_point_retention_in_minutes : float;
      (** recovery_point_retention_in_minutes *)
  recovery_vault_name : string;  (** recovery_vault_name *)
  resource_group_name : string;  (** resource_group_name *)
  timeouts :
    azurerm_site_recovery_replication_policy__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_site_recovery_replication_policy *)

let azurerm_site_recovery_replication_policy ?timeouts
    ~application_consistent_snapshot_frequency_in_minutes ~name
    ~recovery_point_retention_in_minutes ~recovery_vault_name
    ~resource_group_name __resource_id =
  let __resource_type = "azurerm_site_recovery_replication_policy" in
  let __resource =
    {
      application_consistent_snapshot_frequency_in_minutes;
      name;
      recovery_point_retention_in_minutes;
      recovery_vault_name;
      resource_group_name;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_site_recovery_replication_policy __resource);
  ()