(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type permission = {
  actions : string prop list option; [@option]  (** actions *)
  data_actions : string prop list option; [@option]
      (** data_actions *)
  not_actions : string prop list option; [@option]
      (** not_actions *)
  not_data_actions : string prop list option; [@option]
      (** not_data_actions *)
}
[@@deriving yojson_of]
(** permission *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type azurerm_key_vault_managed_hardware_security_module_role_definition = {
  description : string prop option; [@option]  (** description *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  role_name : string prop option; [@option]  (** role_name *)
  vault_base_url : string prop;  (** vault_base_url *)
  permission : permission list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_key_vault_managed_hardware_security_module_role_definition *)

let permission ?actions ?data_actions ?not_actions ?not_data_actions
    () : permission =
  { actions; data_actions; not_actions; not_data_actions }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_key_vault_managed_hardware_security_module_role_definition
    ?description ?id ?role_name ?timeouts ~name ~vault_base_url
    ~permission () :
    azurerm_key_vault_managed_hardware_security_module_role_definition
    =
  {
    description;
    id;
    name;
    role_name;
    vault_base_url;
    permission;
    timeouts;
  }

type t = {
  description : string prop;
  id : string prop;
  name : string prop;
  resource_manager_id : string prop;
  role_name : string prop;
  role_type : string prop;
  vault_base_url : string prop;
}

let make ?description ?id ?role_name ?timeouts ~name ~vault_base_url
    ~permission __id =
  let __type =
    "azurerm_key_vault_managed_hardware_security_module_role_definition"
  in
  let __attrs =
    ({
       description = Prop.computed __type __id "description";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       resource_manager_id =
         Prop.computed __type __id "resource_manager_id";
       role_name = Prop.computed __type __id "role_name";
       role_type = Prop.computed __type __id "role_type";
       vault_base_url = Prop.computed __type __id "vault_base_url";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_key_vault_managed_hardware_security_module_role_definition
        (azurerm_key_vault_managed_hardware_security_module_role_definition
           ?description ?id ?role_name ?timeouts ~name
           ~vault_base_url ~permission ());
    attrs = __attrs;
  }

let register ?tf_module ?description ?id ?role_name ?timeouts ~name
    ~vault_base_url ~permission __id =
  let (r : _ Tf_core.resource) =
    make ?description ?id ?role_name ?timeouts ~name ~vault_base_url
      ~permission __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
