(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_eventhub_namespace_customer_managed_key__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_eventhub_namespace_customer_managed_key__timeouts *)

type azurerm_eventhub_namespace_customer_managed_key = {
  eventhub_namespace_id : string;  (** eventhub_namespace_id *)
  id : string option; [@option]  (** id *)
  infrastructure_encryption_enabled : bool option; [@option]
      (** infrastructure_encryption_enabled *)
  key_vault_key_ids : string list;  (** key_vault_key_ids *)
  user_assigned_identity_id : string option; [@option]
      (** user_assigned_identity_id *)
  timeouts :
    azurerm_eventhub_namespace_customer_managed_key__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_eventhub_namespace_customer_managed_key *)

let azurerm_eventhub_namespace_customer_managed_key ?id
    ?infrastructure_encryption_enabled ?user_assigned_identity_id
    ?timeouts ~eventhub_namespace_id ~key_vault_key_ids __resource_id
    =
  let __resource_type =
    "azurerm_eventhub_namespace_customer_managed_key"
  in
  let __resource =
    {
      eventhub_namespace_id;
      id;
      infrastructure_encryption_enabled;
      key_vault_key_ids;
      user_assigned_identity_id;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_eventhub_namespace_customer_managed_key
       __resource);
  ()
