(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type permissions = {
  actions : string prop list option; [@option]  (** actions *)
  data_actions : string prop list option; [@option]
      (** data_actions *)
  not_actions : string prop list option; [@option]
      (** not_actions *)
  not_data_actions : string prop list option; [@option]
      (** not_data_actions *)
}
[@@deriving yojson_of]
(** permissions *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type azurerm_role_definition = {
  assignable_scopes : string prop list option; [@option]
      (** assignable_scopes *)
  description : string prop option; [@option]  (** description *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  role_definition_id : string prop option; [@option]
      (** role_definition_id *)
  scope : string prop;  (** scope *)
  permissions : permissions list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_role_definition *)

let permissions ?actions ?data_actions ?not_actions ?not_data_actions
    () : permissions =
  { actions; data_actions; not_actions; not_data_actions }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_role_definition ?assignable_scopes ?description ?id
    ?role_definition_id ?timeouts ~name ~scope ~permissions () :
    azurerm_role_definition =
  {
    assignable_scopes;
    description;
    id;
    name;
    role_definition_id;
    scope;
    permissions;
    timeouts;
  }

type t = {
  assignable_scopes : string list prop;
  description : string prop;
  id : string prop;
  name : string prop;
  role_definition_id : string prop;
  role_definition_resource_id : string prop;
  scope : string prop;
}

let register ?tf_module ?assignable_scopes ?description ?id
    ?role_definition_id ?timeouts ~name ~scope ~permissions
    __resource_id =
  let __resource_type = "azurerm_role_definition" in
  let __resource =
    azurerm_role_definition ?assignable_scopes ?description ?id
      ?role_definition_id ?timeouts ~name ~scope ~permissions ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_role_definition __resource);
  let __resource_attributes =
    ({
       assignable_scopes =
         Prop.computed __resource_type __resource_id
           "assignable_scopes";
       description =
         Prop.computed __resource_type __resource_id "description";
       id = Prop.computed __resource_type __resource_id "id";
       name = Prop.computed __resource_type __resource_id "name";
       role_definition_id =
         Prop.computed __resource_type __resource_id
           "role_definition_id";
       role_definition_resource_id =
         Prop.computed __resource_type __resource_id
           "role_definition_resource_id";
       scope = Prop.computed __resource_type __resource_id "scope";
     }
      : t)
  in
  __resource_attributes
