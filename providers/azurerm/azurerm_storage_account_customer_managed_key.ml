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

let make ?federated_identity_client_id ?id ?key_vault_id
    ?key_vault_uri ?key_version ?user_assigned_identity_id ?timeouts
    ~key_name ~storage_account_id __id =
  let __type = "azurerm_storage_account_customer_managed_key" in
  let __attrs =
    ({
       federated_identity_client_id =
         Prop.computed __type __id "federated_identity_client_id";
       id = Prop.computed __type __id "id";
       key_name = Prop.computed __type __id "key_name";
       key_vault_id = Prop.computed __type __id "key_vault_id";
       key_vault_uri = Prop.computed __type __id "key_vault_uri";
       key_version = Prop.computed __type __id "key_version";
       storage_account_id =
         Prop.computed __type __id "storage_account_id";
       user_assigned_identity_id =
         Prop.computed __type __id "user_assigned_identity_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_storage_account_customer_managed_key
        (azurerm_storage_account_customer_managed_key
           ?federated_identity_client_id ?id ?key_vault_id
           ?key_vault_uri ?key_version ?user_assigned_identity_id
           ?timeouts ~key_name ~storage_account_id ());
    attrs = __attrs;
  }

let register ?tf_module ?federated_identity_client_id ?id
    ?key_vault_id ?key_vault_uri ?key_version
    ?user_assigned_identity_id ?timeouts ~key_name
    ~storage_account_id __id =
  let (r : _ Tf_core.resource) =
    make ?federated_identity_client_id ?id ?key_vault_id
      ?key_vault_uri ?key_version ?user_assigned_identity_id
      ?timeouts ~key_name ~storage_account_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
