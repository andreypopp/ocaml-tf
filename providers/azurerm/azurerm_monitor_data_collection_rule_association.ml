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

type azurerm_monitor_data_collection_rule_association = {
  data_collection_endpoint_id : string prop option; [@option]
      (** data_collection_endpoint_id *)
  data_collection_rule_id : string prop option; [@option]
      (** data_collection_rule_id *)
  description : string prop option; [@option]  (** description *)
  id : string prop option; [@option]  (** id *)
  name : string prop option; [@option]  (** name *)
  target_resource_id : string prop;  (** target_resource_id *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_monitor_data_collection_rule_association *)

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_monitor_data_collection_rule_association
    ?data_collection_endpoint_id ?data_collection_rule_id
    ?description ?id ?name ?timeouts ~target_resource_id () :
    azurerm_monitor_data_collection_rule_association =
  {
    data_collection_endpoint_id;
    data_collection_rule_id;
    description;
    id;
    name;
    target_resource_id;
    timeouts;
  }

type t = {
  data_collection_endpoint_id : string prop;
  data_collection_rule_id : string prop;
  description : string prop;
  id : string prop;
  name : string prop;
  target_resource_id : string prop;
}

let make ?data_collection_endpoint_id ?data_collection_rule_id
    ?description ?id ?name ?timeouts ~target_resource_id __id =
  let __type = "azurerm_monitor_data_collection_rule_association" in
  let __attrs =
    ({
       data_collection_endpoint_id =
         Prop.computed __type __id "data_collection_endpoint_id";
       data_collection_rule_id =
         Prop.computed __type __id "data_collection_rule_id";
       description = Prop.computed __type __id "description";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       target_resource_id =
         Prop.computed __type __id "target_resource_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_monitor_data_collection_rule_association
        (azurerm_monitor_data_collection_rule_association
           ?data_collection_endpoint_id ?data_collection_rule_id
           ?description ?id ?name ?timeouts ~target_resource_id ());
    attrs = __attrs;
  }

let register ?tf_module ?data_collection_endpoint_id
    ?data_collection_rule_id ?description ?id ?name ?timeouts
    ~target_resource_id __id =
  let (r : _ Tf_core.resource) =
    make ?data_collection_endpoint_id ?data_collection_rule_id
      ?description ?id ?name ?timeouts ~target_resource_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
