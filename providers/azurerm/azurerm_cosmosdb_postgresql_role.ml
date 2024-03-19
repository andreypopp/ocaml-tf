(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
}
[@@deriving yojson_of]
(** timeouts *)

type azurerm_cosmosdb_postgresql_role = {
  cluster_id : string prop;  (** cluster_id *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  password : string prop;  (** password *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_cosmosdb_postgresql_role *)

let timeouts ?create ?delete ?read () : timeouts =
  { create; delete; read }

let azurerm_cosmosdb_postgresql_role ?id ?timeouts ~cluster_id ~name
    ~password () : azurerm_cosmosdb_postgresql_role =
  { cluster_id; id; name; password; timeouts }

type t = {
  cluster_id : string prop;
  id : string prop;
  name : string prop;
  password : string prop;
}

let register ?tf_module ?id ?timeouts ~cluster_id ~name ~password
    __resource_id =
  let __resource_type = "azurerm_cosmosdb_postgresql_role" in
  let __resource =
    azurerm_cosmosdb_postgresql_role ?id ?timeouts ~cluster_id ~name
      ~password ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
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
