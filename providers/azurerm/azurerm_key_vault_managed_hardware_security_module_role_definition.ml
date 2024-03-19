(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

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

let register ?tf_module ?description ?id ?role_name ?timeouts ~name
    ~vault_base_url ~permission __resource_id =
  let __resource_type =
    "azurerm_key_vault_managed_hardware_security_module_role_definition"
  in
  let __resource =
    azurerm_key_vault_managed_hardware_security_module_role_definition
      ?description ?id ?role_name ?timeouts ~name ~vault_base_url
      ~permission ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_key_vault_managed_hardware_security_module_role_definition
       __resource);
  let __resource_attributes =
    ({
       description =
         Prop.computed __resource_type __resource_id "description";
       id = Prop.computed __resource_type __resource_id "id";
       name = Prop.computed __resource_type __resource_id "name";
       resource_manager_id =
         Prop.computed __resource_type __resource_id
           "resource_manager_id";
       role_name =
         Prop.computed __resource_type __resource_id "role_name";
       role_type =
         Prop.computed __resource_type __resource_id "role_type";
       vault_base_url =
         Prop.computed __resource_type __resource_id "vault_base_url";
     }
      : t)
  in
  __resource_attributes
