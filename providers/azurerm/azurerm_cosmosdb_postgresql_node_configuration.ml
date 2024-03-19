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

type azurerm_cosmosdb_postgresql_node_configuration = {
  cluster_id : string prop;  (** cluster_id *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  value : string prop;  (** value *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_cosmosdb_postgresql_node_configuration *)

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_cosmosdb_postgresql_node_configuration ?id ?timeouts
    ~cluster_id ~name ~value () :
    azurerm_cosmosdb_postgresql_node_configuration =
  { cluster_id; id; name; value; timeouts }

type t = {
  cluster_id : string prop;
  id : string prop;
  name : string prop;
  value : string prop;
}

let register ?tf_module ?id ?timeouts ~cluster_id ~name ~value
    __resource_id =
  let __resource_type =
    "azurerm_cosmosdb_postgresql_node_configuration"
  in
  let __resource =
    azurerm_cosmosdb_postgresql_node_configuration ?id ?timeouts
      ~cluster_id ~name ~value ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_cosmosdb_postgresql_node_configuration
       __resource);
  let __resource_attributes =
    ({
       cluster_id =
         Prop.computed __resource_type __resource_id "cluster_id";
       id = Prop.computed __resource_type __resource_id "id";
       name = Prop.computed __resource_type __resource_id "name";
       value = Prop.computed __resource_type __resource_id "value";
     }
      : t)
  in
  __resource_attributes
