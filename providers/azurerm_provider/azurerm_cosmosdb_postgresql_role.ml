(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_cosmosdb_postgresql_role__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
}
[@@deriving yojson_of]
(** azurerm_cosmosdb_postgresql_role__timeouts *)

type azurerm_cosmosdb_postgresql_role = {
  cluster_id : string prop;  (** cluster_id *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  password : string prop;  (** password *)
  timeouts : azurerm_cosmosdb_postgresql_role__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_cosmosdb_postgresql_role *)

type t = {
  cluster_id : string prop;
  id : string prop;
  name : string prop;
  password : string prop;
}

let azurerm_cosmosdb_postgresql_role ?id ?timeouts ~cluster_id ~name
    ~password __resource_id =
  let __resource_type = "azurerm_cosmosdb_postgresql_role" in
  let __resource =
    ({ cluster_id; id; name; password; timeouts }
      : azurerm_cosmosdb_postgresql_role)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_cosmosdb_postgresql_role __resource);
  let __resource_attributes =
    ({
       cluster_id =
         Prop.computed __resource_type __resource_id "cluster_id";
       id = Prop.computed __resource_type __resource_id "id";
       name = Prop.computed __resource_type __resource_id "name";
       password =
         Prop.computed __resource_type __resource_id "password";
     }
      : t)
  in
  __resource_attributes
