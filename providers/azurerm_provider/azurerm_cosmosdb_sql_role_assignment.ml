(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_cosmosdb_sql_role_assignment__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_cosmosdb_sql_role_assignment__timeouts *)

type azurerm_cosmosdb_sql_role_assignment = {
  account_name : string;  (** account_name *)
  id : string option; [@option]  (** id *)
  name : string option; [@option]  (** name *)
  principal_id : string;  (** principal_id *)
  resource_group_name : string;  (** resource_group_name *)
  role_definition_id : string;  (** role_definition_id *)
  scope : string;  (** scope *)
  timeouts : azurerm_cosmosdb_sql_role_assignment__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_cosmosdb_sql_role_assignment *)

let azurerm_cosmosdb_sql_role_assignment ?id ?name ?timeouts
    ~account_name ~principal_id ~resource_group_name
    ~role_definition_id ~scope __resource_id =
  let __resource_type = "azurerm_cosmosdb_sql_role_assignment" in
  let __resource =
    {
      account_name;
      id;
      name;
      principal_id;
      resource_group_name;
      role_definition_id;
      scope;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_cosmosdb_sql_role_assignment __resource);
  ()
