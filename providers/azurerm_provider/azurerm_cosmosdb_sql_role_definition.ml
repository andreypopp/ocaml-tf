(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type azurerm_cosmosdb_sql_role_definition__permissions = {
  data_actions : string list;  (** data_actions *)
}
[@@deriving yojson_of]
(** azurerm_cosmosdb_sql_role_definition__permissions *)

type azurerm_cosmosdb_sql_role_definition__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_cosmosdb_sql_role_definition__timeouts *)

type azurerm_cosmosdb_sql_role_definition = {
  account_name : string;  (** account_name *)
  assignable_scopes : string list;  (** assignable_scopes *)
  name : string;  (** name *)
  resource_group_name : string;  (** resource_group_name *)
  type_ : string option; [@option] [@key "type"]  (** type *)
  permissions :
    azurerm_cosmosdb_sql_role_definition__permissions list;
  timeouts : azurerm_cosmosdb_sql_role_definition__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_cosmosdb_sql_role_definition *)

let azurerm_cosmosdb_sql_role_definition ?type_ ?timeouts
    ~account_name ~assignable_scopes ~name ~resource_group_name
    ~permissions __resource_id =
  let __resource_type = "azurerm_cosmosdb_sql_role_definition" in
  let __resource =
    {
      account_name;
      assignable_scopes;
      name;
      resource_group_name;
      type_;
      permissions;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_cosmosdb_sql_role_definition __resource);
  ()
