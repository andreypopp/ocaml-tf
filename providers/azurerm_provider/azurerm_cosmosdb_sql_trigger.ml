(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_cosmosdb_sql_trigger__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_cosmosdb_sql_trigger__timeouts *)

type azurerm_cosmosdb_sql_trigger = {
  body : string;  (** body *)
  container_id : string;  (** container_id *)
  id : string option; [@option]  (** id *)
  name : string;  (** name *)
  operation : string;  (** operation *)
  type_ : string; [@key "type"]  (** type *)
  timeouts : azurerm_cosmosdb_sql_trigger__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_cosmosdb_sql_trigger *)

let azurerm_cosmosdb_sql_trigger ?id ?timeouts ~body ~container_id
    ~name ~operation ~type_ __resource_id =
  let __resource_type = "azurerm_cosmosdb_sql_trigger" in
  let __resource =
    { body; container_id; id; name; operation; type_; timeouts }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_cosmosdb_sql_trigger __resource);
  ()
