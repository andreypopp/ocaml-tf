(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_eventhub_namespace_customer_managed_key__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_eventhub_namespace_customer_managed_key__timeouts *)

type azurerm_eventhub_namespace_customer_managed_key = {
  eventhub_namespace_id : string prop;  (** eventhub_namespace_id *)
  id : string prop option; [@option]  (** id *)
  infrastructure_encryption_enabled : bool prop option; [@option]
      (** infrastructure_encryption_enabled *)
  key_vault_key_ids : string prop list;  (** key_vault_key_ids *)
  user_assigned_identity_id : string prop option; [@option]
      (** user_assigned_identity_id *)
  timeouts :
    azurerm_eventhub_namespace_customer_managed_key__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_eventhub_namespace_customer_managed_key *)

type t = {
  eventhub_namespace_id : string prop;
  id : string prop;
  infrastructure_encryption_enabled : bool prop;
  key_vault_key_ids : string list prop;
  user_assigned_identity_id : string prop;
}

let azurerm_eventhub_namespace_customer_managed_key ?id
    ?infrastructure_encryption_enabled ?user_assigned_identity_id
    ?timeouts ~eventhub_namespace_id ~key_vault_key_ids __resource_id
    =
  let __resource_type =
    "azurerm_eventhub_namespace_customer_managed_key"
  in
  let __resource =
    ({
       eventhub_namespace_id;
       id;
       infrastructure_encryption_enabled;
       key_vault_key_ids;
       user_assigned_identity_id;
       timeouts;
     }
      : azurerm_eventhub_namespace_customer_managed_key)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_eventhub_namespace_customer_managed_key
       __resource);
  let __resource_attributes =
    ({
       eventhub_namespace_id =
         Prop.computed __resource_type __resource_id
           "eventhub_namespace_id";
       id = Prop.computed __resource_type __resource_id "id";
       infrastructure_encryption_enabled =
         Prop.computed __resource_type __resource_id
           "infrastructure_encryption_enabled";
       key_vault_key_ids =
         Prop.computed __resource_type __resource_id
           "key_vault_key_ids";
       user_assigned_identity_id =
         Prop.computed __resource_type __resource_id
           "user_assigned_identity_id";
     }
      : t)
  in
  __resource_attributes
