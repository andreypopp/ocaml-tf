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

type azurerm_cognitive_account_customer_managed_key = {
  cognitive_account_id : string prop;  (** cognitive_account_id *)
  id : string prop option; [@option]  (** id *)
  identity_client_id : string prop option; [@option]
      (** identity_client_id *)
  key_vault_key_id : string prop;  (** key_vault_key_id *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_cognitive_account_customer_managed_key *)

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_cognitive_account_customer_managed_key ?id
    ?identity_client_id ?timeouts ~cognitive_account_id
    ~key_vault_key_id () :
    azurerm_cognitive_account_customer_managed_key =
  {
    cognitive_account_id;
    id;
    identity_client_id;
    key_vault_key_id;
    timeouts;
  }

type t = {
  cognitive_account_id : string prop;
  id : string prop;
  identity_client_id : string prop;
  key_vault_key_id : string prop;
}

let make ?id ?identity_client_id ?timeouts ~cognitive_account_id
    ~key_vault_key_id __id =
  let __type = "azurerm_cognitive_account_customer_managed_key" in
  let __attrs =
    ({
       cognitive_account_id =
         Prop.computed __type __id "cognitive_account_id";
       id = Prop.computed __type __id "id";
       identity_client_id =
         Prop.computed __type __id "identity_client_id";
       key_vault_key_id =
         Prop.computed __type __id "key_vault_key_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_cognitive_account_customer_managed_key
        (azurerm_cognitive_account_customer_managed_key ?id
           ?identity_client_id ?timeouts ~cognitive_account_id
           ~key_vault_key_id ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?identity_client_id ?timeouts
    ~cognitive_account_id ~key_vault_key_id __id =
  let (r : _ Tf_core.resource) =
    make ?id ?identity_client_id ?timeouts ~cognitive_account_id
      ~key_vault_key_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
