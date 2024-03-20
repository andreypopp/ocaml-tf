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

type azurerm_key_vault_managed_storage_account = {
  id : string prop option; [@option]  (** id *)
  key_vault_id : string prop;  (** key_vault_id *)
  name : string prop;  (** name *)
  regenerate_key_automatically : bool prop option; [@option]
      (** regenerate_key_automatically *)
  regeneration_period : string prop option; [@option]
      (** regeneration_period *)
  storage_account_id : string prop;  (** storage_account_id *)
  storage_account_key : string prop;  (** storage_account_key *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_key_vault_managed_storage_account *)

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_key_vault_managed_storage_account ?id
    ?regenerate_key_automatically ?regeneration_period ?tags
    ?timeouts ~key_vault_id ~name ~storage_account_id
    ~storage_account_key () :
    azurerm_key_vault_managed_storage_account =
  {
    id;
    key_vault_id;
    name;
    regenerate_key_automatically;
    regeneration_period;
    storage_account_id;
    storage_account_key;
    tags;
    timeouts;
  }

type t = {
  id : string prop;
  key_vault_id : string prop;
  name : string prop;
  regenerate_key_automatically : bool prop;
  regeneration_period : string prop;
  storage_account_id : string prop;
  storage_account_key : string prop;
  tags : (string * string) list prop;
}

let make ?id ?regenerate_key_automatically ?regeneration_period ?tags
    ?timeouts ~key_vault_id ~name ~storage_account_id
    ~storage_account_key __id =
  let __type = "azurerm_key_vault_managed_storage_account" in
  let __attrs =
    ({
       id = Prop.computed __type __id "id";
       key_vault_id = Prop.computed __type __id "key_vault_id";
       name = Prop.computed __type __id "name";
       regenerate_key_automatically =
         Prop.computed __type __id "regenerate_key_automatically";
       regeneration_period =
         Prop.computed __type __id "regeneration_period";
       storage_account_id =
         Prop.computed __type __id "storage_account_id";
       storage_account_key =
         Prop.computed __type __id "storage_account_key";
       tags = Prop.computed __type __id "tags";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_key_vault_managed_storage_account
        (azurerm_key_vault_managed_storage_account ?id
           ?regenerate_key_automatically ?regeneration_period ?tags
           ?timeouts ~key_vault_id ~name ~storage_account_id
           ~storage_account_key ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?regenerate_key_automatically
    ?regeneration_period ?tags ?timeouts ~key_vault_id ~name
    ~storage_account_id ~storage_account_key __id =
  let (r : _ Tf_core.resource) =
    make ?id ?regenerate_key_automatically ?regeneration_period ?tags
      ?timeouts ~key_vault_id ~name ~storage_account_id
      ~storage_account_key __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
