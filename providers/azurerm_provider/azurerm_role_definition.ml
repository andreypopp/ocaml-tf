(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_role_definition__permissions = {
  actions : string prop list option; [@option]  (** actions *)
  data_actions : string prop list option; [@option]
      (** data_actions *)
  not_actions : string prop list option; [@option]
      (** not_actions *)
  not_data_actions : string prop list option; [@option]
      (** not_data_actions *)
}
[@@deriving yojson_of]
(** azurerm_role_definition__permissions *)

type azurerm_role_definition__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_role_definition__timeouts *)

type azurerm_role_definition = {
  assignable_scopes : string prop list option; [@option]
      (** assignable_scopes *)
  description : string prop option; [@option]  (** description *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  role_definition_id : string prop option; [@option]
      (** role_definition_id *)
  scope : string prop;  (** scope *)
  permissions : azurerm_role_definition__permissions list;
  timeouts : azurerm_role_definition__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_role_definition *)

let azurerm_role_definition ?assignable_scopes ?description ?id
    ?role_definition_id ?timeouts ~name ~scope ~permissions
    __resource_id =
  let __resource_type = "azurerm_role_definition" in
  let __resource =
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
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_role_definition __resource);
  ()
