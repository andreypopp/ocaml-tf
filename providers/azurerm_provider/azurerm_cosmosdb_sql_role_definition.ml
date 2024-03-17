(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_cosmosdb_sql_role_definition__permissions = {
  data_actions : string prop list;  (** data_actions *)
}
[@@deriving yojson_of]
(** azurerm_cosmosdb_sql_role_definition__permissions *)

type azurerm_cosmosdb_sql_role_definition__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_cosmosdb_sql_role_definition__timeouts *)

type azurerm_cosmosdb_sql_role_definition = {
  account_name : string prop;  (** account_name *)
  assignable_scopes : string prop list;  (** assignable_scopes *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  resource_group_name : string prop;  (** resource_group_name *)
  role_definition_id : string prop option; [@option]
      (** role_definition_id *)
  type_ : string prop option; [@option] [@key "type"]  (** type *)
  permissions :
    azurerm_cosmosdb_sql_role_definition__permissions list;
  timeouts : azurerm_cosmosdb_sql_role_definition__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_cosmosdb_sql_role_definition *)

type t = {
  account_name : string prop;
  assignable_scopes : string list prop;
  id : string prop;
  name : string prop;
  resource_group_name : string prop;
  role_definition_id : string prop;
  type_ : string prop;
}

let azurerm_cosmosdb_sql_role_definition ?id ?role_definition_id
    ?type_ ?timeouts ~account_name ~assignable_scopes ~name
    ~resource_group_name ~permissions __resource_id =
  let __resource_type = "azurerm_cosmosdb_sql_role_definition" in
  let __resource =
    ({
       account_name;
       assignable_scopes;
       id;
       name;
       resource_group_name;
       role_definition_id;
       type_;
       permissions;
       timeouts;
     }
      : azurerm_cosmosdb_sql_role_definition)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_cosmosdb_sql_role_definition __resource);
  let __resource_attributes =
    ({
       account_name =
         Prop.computed __resource_type __resource_id "account_name";
       assignable_scopes =
         Prop.computed __resource_type __resource_id
           "assignable_scopes";
       id = Prop.computed __resource_type __resource_id "id";
       name = Prop.computed __resource_type __resource_id "name";
       resource_group_name =
         Prop.computed __resource_type __resource_id
           "resource_group_name";
       role_definition_id =
         Prop.computed __resource_type __resource_id
           "role_definition_id";
       type_ = Prop.computed __resource_type __resource_id "type";
     }
      : t)
  in
  __resource_attributes
