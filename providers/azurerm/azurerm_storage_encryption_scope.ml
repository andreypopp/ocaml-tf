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

type azurerm_storage_encryption_scope = {
  id : string prop option; [@option]  (** id *)
  infrastructure_encryption_required : bool prop option; [@option]
      (** infrastructure_encryption_required *)
  key_vault_key_id : string prop option; [@option]
      (** key_vault_key_id *)
  name : string prop;  (** name *)
  source : string prop;  (** source *)
  storage_account_id : string prop;  (** storage_account_id *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_storage_encryption_scope *)

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_storage_encryption_scope ?id
    ?infrastructure_encryption_required ?key_vault_key_id ?timeouts
    ~name ~source ~storage_account_id () :
    azurerm_storage_encryption_scope =
  {
    id;
    infrastructure_encryption_required;
    key_vault_key_id;
    name;
    source;
    storage_account_id;
    timeouts;
  }

type t = {
  id : string prop;
  infrastructure_encryption_required : bool prop;
  key_vault_key_id : string prop;
  name : string prop;
  source : string prop;
  storage_account_id : string prop;
}

let make ?id ?infrastructure_encryption_required ?key_vault_key_id
    ?timeouts ~name ~source ~storage_account_id __id =
  let __type = "azurerm_storage_encryption_scope" in
  let __attrs =
    ({
       id = Prop.computed __type __id "id";
       infrastructure_encryption_required =
         Prop.computed __type __id
           "infrastructure_encryption_required";
       key_vault_key_id =
         Prop.computed __type __id "key_vault_key_id";
       name = Prop.computed __type __id "name";
       source = Prop.computed __type __id "source";
       storage_account_id =
         Prop.computed __type __id "storage_account_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_storage_encryption_scope
        (azurerm_storage_encryption_scope ?id
           ?infrastructure_encryption_required ?key_vault_key_id
           ?timeouts ~name ~source ~storage_account_id ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?infrastructure_encryption_required
    ?key_vault_key_id ?timeouts ~name ~source ~storage_account_id
    __id =
  let (r : _ Tf_core.resource) =
    make ?id ?infrastructure_encryption_required ?key_vault_key_id
      ?timeouts ~name ~source ~storage_account_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
