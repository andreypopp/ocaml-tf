(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_cosmosdb_postgresql_node_configuration__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_cosmosdb_postgresql_node_configuration__timeouts *)

type azurerm_cosmosdb_postgresql_node_configuration = {
  cluster_id : string;  (** cluster_id *)
  id : string option; [@option]  (** id *)
  name : string;  (** name *)
  value : string;  (** value *)
  timeouts :
    azurerm_cosmosdb_postgresql_node_configuration__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_cosmosdb_postgresql_node_configuration *)

let azurerm_cosmosdb_postgresql_node_configuration ?id ?timeouts
    ~cluster_id ~name ~value __resource_id =
  let __resource_type =
    "azurerm_cosmosdb_postgresql_node_configuration"
  in
  let __resource = { cluster_id; id; name; value; timeouts } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_cosmosdb_postgresql_node_configuration
       __resource);
  ()
