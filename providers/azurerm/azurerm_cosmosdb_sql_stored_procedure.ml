(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type azurerm_cosmosdb_sql_stored_procedure = {
  account_name : string prop;  (** account_name *)
  body : string prop;  (** body *)
  container_name : string prop;  (** container_name *)
  database_name : string prop;  (** database_name *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  resource_group_name : string prop;  (** resource_group_name *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_cosmosdb_sql_stored_procedure *)

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_cosmosdb_sql_stored_procedure ?id ?timeouts ~account_name
    ~body ~container_name ~database_name ~name ~resource_group_name
    () : azurerm_cosmosdb_sql_stored_procedure =
  {
    account_name;
    body;
    container_name;
    database_name;
    id;
    name;
    resource_group_name;
    timeouts;
  }

type t = {
  account_name : string prop;
  body : string prop;
  container_name : string prop;
  database_name : string prop;
  id : string prop;
  name : string prop;
  resource_group_name : string prop;
}

let register ?tf_module ?id ?timeouts ~account_name ~body
    ~container_name ~database_name ~name ~resource_group_name
    __resource_id =
  let __resource_type = "azurerm_cosmosdb_sql_stored_procedure" in
  let __resource =
    azurerm_cosmosdb_sql_stored_procedure ?id ?timeouts ~account_name
      ~body ~container_name ~database_name ~name ~resource_group_name
      ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_cosmosdb_sql_stored_procedure __resource);
  let __resource_attributes =
    ({
       account_name =
         Prop.computed __resource_type __resource_id "account_name";
       body = Prop.computed __resource_type __resource_id "body";
       container_name =
         Prop.computed __resource_type __resource_id "container_name";
       database_name =
         Prop.computed __resource_type __resource_id "database_name";
       id = Prop.computed __resource_type __resource_id "id";
       name = Prop.computed __resource_type __resource_id "name";
       resource_group_name =
         Prop.computed __resource_type __resource_id
           "resource_group_name";
     }
      : t)
  in
  __resource_attributes
