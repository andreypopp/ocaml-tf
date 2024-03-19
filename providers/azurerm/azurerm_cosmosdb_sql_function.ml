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

type azurerm_cosmosdb_sql_function = {
  body : string prop;  (** body *)
  container_id : string prop;  (** container_id *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_cosmosdb_sql_function *)

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_cosmosdb_sql_function ?id ?timeouts ~body ~container_id
    ~name () : azurerm_cosmosdb_sql_function =
  { body; container_id; id; name; timeouts }

type t = {
  body : string prop;
  container_id : string prop;
  id : string prop;
  name : string prop;
}

let register ?tf_module ?id ?timeouts ~body ~container_id ~name
    __resource_id =
  let __resource_type = "azurerm_cosmosdb_sql_function" in
  let __resource =
    azurerm_cosmosdb_sql_function ?id ?timeouts ~body ~container_id
      ~name ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
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
