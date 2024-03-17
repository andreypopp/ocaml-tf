(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_site_recovery_vmware_replication_policy__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_site_recovery_vmware_replication_policy__timeouts *)

type azurerm_site_recovery_vmware_replication_policy = {
  application_consistent_snapshot_frequency_in_minutes : float prop;
      (** application_consistent_snapshot_frequency_in_minutes *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  recovery_point_retention_in_minutes : float prop;
      (** recovery_point_retention_in_minutes *)
  recovery_vault_id : string prop;  (** recovery_vault_id *)
  timeouts :
    azurerm_site_recovery_vmware_replication_policy__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_site_recovery_vmware_replication_policy *)

let azurerm_site_recovery_vmware_replication_policy ?id ?timeouts
    ~application_consistent_snapshot_frequency_in_minutes ~name
    ~recovery_point_retention_in_minutes ~recovery_vault_id
    __resource_id =
  let __resource_type =
    "azurerm_site_recovery_vmware_replication_policy"
  in
  let __resource =
    {
      application_consistent_snapshot_frequency_in_minutes;
      id;
      name;
      recovery_point_retention_in_minutes;
      recovery_vault_id;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_site_recovery_vmware_replication_policy
       __resource);
  ()
