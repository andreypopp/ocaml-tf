(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

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

let make ?id ?timeouts ~cluster_id ~name ~value __id =
  let __type = "azurerm_cosmosdb_postgresql_node_configuration" in
  let __attrs =
    ({
       cluster_id = Prop.computed __type __id "cluster_id";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       value = Prop.computed __type __id "value";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_cosmosdb_postgresql_node_configuration
        (azurerm_cosmosdb_postgresql_node_configuration ?id ?timeouts
           ~cluster_id ~name ~value ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?timeouts ~cluster_id ~name ~value __id =
  let (r : _ Tf_core.resource) =
    make ?id ?timeouts ~cluster_id ~name ~value __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
