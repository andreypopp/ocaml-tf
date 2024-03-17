(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_cosmosdb_sql_function__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_cosmosdb_sql_function__timeouts *)

type azurerm_cosmosdb_sql_function = {
  body : string;  (** body *)
  container_id : string;  (** container_id *)
  id : string option; [@option]  (** id *)
  name : string;  (** name *)
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
