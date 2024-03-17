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

let azurerm_cosmosdb_sql_function ?id ?timeouts ~body ~container_id
    ~name __resource_id =
  let __resource_type = "azurerm_cosmosdb_sql_function" in
  let __resource = { body; container_id; id; name; timeouts } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_cosmosdb_sql_function __resource);
  ()
