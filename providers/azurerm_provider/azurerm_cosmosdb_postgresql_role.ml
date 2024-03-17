(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type azurerm_cosmosdb_postgresql_role__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
}
[@@deriving yojson_of]
(** azurerm_cosmosdb_postgresql_role__timeouts *)

type azurerm_cosmosdb_postgresql_role = {
  cluster_id : string;  (** cluster_id *)
  name : string;  (** name *)
  password : string;  (** password *)
  timeouts : azurerm_cosmosdb_postgresql_role__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_cosmosdb_postgresql_role *)

let azurerm_cosmosdb_postgresql_role ?timeouts ~cluster_id ~name
    ~password __resource_id =
  let __resource_type = "azurerm_cosmosdb_postgresql_role" in
  let __resource = { cluster_id; name; password; timeouts } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_cosmosdb_postgresql_role __resource);
  ()
