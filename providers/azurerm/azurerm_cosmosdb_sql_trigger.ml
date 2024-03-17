(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_cosmosdb_sql_trigger__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_cosmosdb_sql_trigger__timeouts *)

type azurerm_cosmosdb_sql_trigger = {
  body : string prop;  (** body *)
  container_id : string prop;  (** container_id *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  operation : string prop;  (** operation *)
  type_ : string prop; [@key "type"]  (** type *)
  timeouts : azurerm_cosmosdb_sql_trigger__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_cosmosdb_sql_trigger *)

type t = {
  body : string prop;
  container_id : string prop;
  id : string prop;
  name : string prop;
  operation : string prop;
  type_ : string prop;
}

let azurerm_cosmosdb_sql_trigger ?id ?timeouts ~body ~container_id
    ~name ~operation ~type_ __resource_id =
  let __resource_type = "azurerm_cosmosdb_sql_trigger" in
  let __resource =
    ({ body; container_id; id; name; operation; type_; timeouts }
      : azurerm_cosmosdb_sql_trigger)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_cosmosdb_sql_trigger __resource);
  let __resource_attributes =
    ({
       body = Prop.computed __resource_type __resource_id "body";
       container_id =
         Prop.computed __resource_type __resource_id "container_id";
       id = Prop.computed __resource_type __resource_id "id";
       name = Prop.computed __resource_type __resource_id "name";
       operation =
         Prop.computed __resource_type __resource_id "operation";
       type_ = Prop.computed __resource_type __resource_id "type";
     }
      : t)
  in
  __resource_attributes
