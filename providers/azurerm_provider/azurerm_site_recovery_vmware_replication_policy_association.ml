(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_site_recovery_vmware_replication_policy_association__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
}
[@@deriving yojson_of]
(** azurerm_site_recovery_vmware_replication_policy_association__timeouts *)

type azurerm_site_recovery_vmware_replication_policy_association = {
  id : string option; [@option]  (** id *)
  name : string;  (** name *)
  policy_id : string;  (** policy_id *)
  recovery_vault_id : string;  (** recovery_vault_id *)
  timeouts :
    azurerm_site_recovery_vmware_replication_policy_association__timeouts
    option;
}
[@@deriving yojson_of]
(** azurerm_site_recovery_vmware_replication_policy_association *)

let azurerm_site_recovery_vmware_replication_policy_association ?id
    ?timeouts ~name ~policy_id ~recovery_vault_id __resource_id =
  let __resource_type =
    "azurerm_site_recovery_vmware_replication_policy_association"
  in
  let __resource =
    { id; name; policy_id; recovery_vault_id; timeouts }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_site_recovery_vmware_replication_policy_association
       __resource);
  ()
