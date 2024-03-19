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

type azurerm_storage_account_customer_managed_key = {
  federated_identity_client_id : string prop option; [@option]
      (** federated_identity_client_id *)
  id : string prop option; [@option]  (** id *)
  key_name : string prop;  (** key_name *)
  key_vault_id : string prop option; [@option]  (** key_vault_id *)
  key_vault_uri : string prop option; [@option]  (** key_vault_uri *)
  key_version : string prop option; [@option]  (** key_version *)
  storage_account_id : string prop;  (** storage_account_id *)
  user_assigned_identity_id : string prop option; [@option]
      (** user_assigned_identity_id *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_storage_account_customer_managed_key *)

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_storage_account_customer_managed_key
    ?federated_identity_client_id ?id ?key_vault_id ?key_vault_uri
    ?key_version ?user_assigned_identity_id ?timeouts ~key_name
    ~storage_account_id () :
    azurerm_storage_account_customer_managed_key =
  {
    federated_identity_client_id;
    id;
    key_name;
    key_vault_id;
    key_vault_uri;
    key_version;
    storage_account_id;
    user_assigned_identity_id;
    timeouts;
  }

type t = {
  federated_identity_client_id : string prop;
  id : string prop;
  key_name : string prop;
  key_vault_id : string prop;
  key_vault_uri : string prop;
  key_version : string prop;
  storage_account_id : string prop;
  user_assigned_identity_id : string prop;
}

let register ?tf_module ?federated_identity_client_id ?id
    ?key_vault_id ?key_vault_uri ?key_version
    ?user_assigned_identity_id ?timeouts ~key_name
    ~storage_account_id __resource_id =
  let __resource_type =
    "azurerm_storage_account_customer_managed_key"
  in
  let __resource =
    azurerm_storage_account_customer_managed_key
      ?federated_identity_client_id ?id ?key_vault_id ?key_vault_uri
      ?key_version ?user_assigned_identity_id ?timeouts ~key_name
      ~storage_account_id ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_storage_account_customer_managed_key
       __resource);
  let __resource_attributes =
    ({
       federated_identity_client_id =
         Prop.computed __resource_type __resource_id
           "federated_identity_client_id";
       id = Prop.computed __resource_type __resource_id "id";
       key_name =
         Prop.computed __resource_type __resource_id "key_name";
       key_vault_id =
         Prop.computed __resource_type __resource_id "key_vault_id";
       key_vault_uri =
         Prop.computed __resource_type __resource_id "key_vault_uri";
       key_version =
         Prop.computed __resource_type __resource_id "key_version";
       storage_account_id =
         Prop.computed __resource_type __resource_id
           "storage_account_id";
       user_assigned_identity_id =
         Prop.computed __resource_type __resource_id
           "user_assigned_identity_id";
     }
      : t)
  in
  __resource_attributes
