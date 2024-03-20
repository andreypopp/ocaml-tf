(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type key_vault_key = {
  key_name : string prop;  (** key_name *)
  key_vault_id : string prop;  (** key_vault_id *)
  key_version : string prop option; [@option]  (** key_version *)
}
[@@deriving yojson_of]
(** key_vault_key *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type azurerm_logic_app_integration_account_certificate = {
  id : string prop option; [@option]  (** id *)
  integration_account_name : string prop;
      (** integration_account_name *)
  metadata : string prop option; [@option]  (** metadata *)
  name : string prop;  (** name *)
  public_certificate : string prop option; [@option]
      (** public_certificate *)
  resource_group_name : string prop;  (** resource_group_name *)
  key_vault_key : key_vault_key list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_logic_app_integration_account_certificate *)

let key_vault_key ?key_version ~key_name ~key_vault_id () :
    key_vault_key =
  { key_name; key_vault_id; key_version }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_logic_app_integration_account_certificate ?id ?metadata
    ?public_certificate ?timeouts ~integration_account_name ~name
    ~resource_group_name ~key_vault_key () :
    azurerm_logic_app_integration_account_certificate =
  {
    id;
    integration_account_name;
    metadata;
    name;
    public_certificate;
    resource_group_name;
    key_vault_key;
    timeouts;
  }

type t = {
  id : string prop;
  integration_account_name : string prop;
  metadata : string prop;
  name : string prop;
  public_certificate : string prop;
  resource_group_name : string prop;
}

let make ?id ?metadata ?public_certificate ?timeouts
    ~integration_account_name ~name ~resource_group_name
    ~key_vault_key __id =
  let __type = "azurerm_logic_app_integration_account_certificate" in
  let __attrs =
    ({
       id = Prop.computed __type __id "id";
       integration_account_name =
         Prop.computed __type __id "integration_account_name";
       metadata = Prop.computed __type __id "metadata";
       name = Prop.computed __type __id "name";
       public_certificate =
         Prop.computed __type __id "public_certificate";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_logic_app_integration_account_certificate
        (azurerm_logic_app_integration_account_certificate ?id
           ?metadata ?public_certificate ?timeouts
           ~integration_account_name ~name ~resource_group_name
           ~key_vault_key ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?metadata ?public_certificate ?timeouts
    ~integration_account_name ~name ~resource_group_name
    ~key_vault_key __id =
  let (r : _ Tf_core.resource) =
    make ?id ?metadata ?public_certificate ?timeouts
      ~integration_account_name ~name ~resource_group_name
      ~key_vault_key __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
