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

type azurerm_eventhub_namespace_customer_managed_key = {
  eventhub_namespace_id : string prop;  (** eventhub_namespace_id *)
  id : string prop option; [@option]  (** id *)
  infrastructure_encryption_enabled : bool prop option; [@option]
      (** infrastructure_encryption_enabled *)
  key_vault_key_ids : string prop list;  (** key_vault_key_ids *)
  user_assigned_identity_id : string prop option; [@option]
      (** user_assigned_identity_id *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_eventhub_namespace_customer_managed_key *)

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_eventhub_namespace_customer_managed_key ?id
    ?infrastructure_encryption_enabled ?user_assigned_identity_id
    ?timeouts ~eventhub_namespace_id ~key_vault_key_ids () :
    azurerm_eventhub_namespace_customer_managed_key =
  {
    eventhub_namespace_id;
    id;
    infrastructure_encryption_enabled;
    key_vault_key_ids;
    user_assigned_identity_id;
    timeouts;
  }

type t = {
  eventhub_namespace_id : string prop;
  id : string prop;
  infrastructure_encryption_enabled : bool prop;
  key_vault_key_ids : string list prop;
  user_assigned_identity_id : string prop;
}

let make ?id ?infrastructure_encryption_enabled
    ?user_assigned_identity_id ?timeouts ~eventhub_namespace_id
    ~key_vault_key_ids __id =
  let __type = "azurerm_eventhub_namespace_customer_managed_key" in
  let __attrs =
    ({
       eventhub_namespace_id =
         Prop.computed __type __id "eventhub_namespace_id";
       id = Prop.computed __type __id "id";
       infrastructure_encryption_enabled =
         Prop.computed __type __id
           "infrastructure_encryption_enabled";
       key_vault_key_ids =
         Prop.computed __type __id "key_vault_key_ids";
       user_assigned_identity_id =
         Prop.computed __type __id "user_assigned_identity_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_eventhub_namespace_customer_managed_key
        (azurerm_eventhub_namespace_customer_managed_key ?id
           ?infrastructure_encryption_enabled
           ?user_assigned_identity_id ?timeouts
           ~eventhub_namespace_id ~key_vault_key_ids ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?infrastructure_encryption_enabled
    ?user_assigned_identity_id ?timeouts ~eventhub_namespace_id
    ~key_vault_key_ids __id =
  let (r : _ Tf_core.resource) =
    make ?id ?infrastructure_encryption_enabled
      ?user_assigned_identity_id ?timeouts ~eventhub_namespace_id
      ~key_vault_key_ids __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
