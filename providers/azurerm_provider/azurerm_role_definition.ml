(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_role_definition__permissions = {
  actions : string list option; [@option]  (** actions *)
  data_actions : string list option; [@option]  (** data_actions *)
  not_actions : string list option; [@option]  (** not_actions *)
  not_data_actions : string list option; [@option]
      (** not_data_actions *)
}
[@@deriving yojson_of]
(** azurerm_role_definition__permissions *)

type azurerm_role_definition__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_role_definition__timeouts *)

type azurerm_role_definition = {
  assignable_scopes : string list option; [@option]
      (** assignable_scopes *)
  description : string option; [@option]  (** description *)
  id : string option; [@option]  (** id *)
  name : string;  (** name *)
  role_definition_id : string option; [@option]
      (** role_definition_id *)
  scope : string;  (** scope *)
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
