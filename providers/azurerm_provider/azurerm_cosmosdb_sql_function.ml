(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_cosmosdb_sql_function__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_cosmosdb_sql_function__timeouts *)

type azurerm_cosmosdb_sql_function = {
  body : string prop;  (** body *)
  container_id : string prop;  (** container_id *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  timeouts : azurerm_cosmosdb_sql_function__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_cosmosdb_sql_function *)

type t = {
  body : string prop;
  container_id : string prop;
  id : string prop;
  name : string prop;
}

let azurerm_cosmosdb_sql_function ?id ?timeouts ~body ~container_id
    ~name __resource_id =
  let __resource_type = "azurerm_cosmosdb_sql_function" in
  let __resource =
    ({ body; container_id; id; name; timeouts }
      : azurerm_cosmosdb_sql_function)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_cosmosdb_sql_function __resource);
  let __resource_attributes =
    ({
       body = Prop.computed __resource_type __resource_id "body";
       container_id =
         Prop.computed __resource_type __resource_id "container_id";
       id = Prop.computed __resource_type __resource_id "id";
       name = Prop.computed __resource_type __resource_id "name";
     }
      : t)
  in
  __resource_attributes
