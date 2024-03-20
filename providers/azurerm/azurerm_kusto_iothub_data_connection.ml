(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
}
[@@deriving yojson_of]
(** timeouts *)

type azurerm_kusto_iothub_data_connection = {
  cluster_name : string prop;  (** cluster_name *)
  consumer_group : string prop;  (** consumer_group *)
  data_format : string prop option; [@option]  (** data_format *)
  database_name : string prop;  (** database_name *)
  database_routing_type : string prop option; [@option]
      (** database_routing_type *)
  event_system_properties : string prop list option; [@option]
      (** event_system_properties *)
  id : string prop option; [@option]  (** id *)
  iothub_id : string prop;  (** iothub_id *)
  location : string prop;  (** location *)
  mapping_rule_name : string prop option; [@option]
      (** mapping_rule_name *)
  name : string prop;  (** name *)
  resource_group_name : string prop;  (** resource_group_name *)
  shared_access_policy_name : string prop;
      (** shared_access_policy_name *)
  table_name : string prop option; [@option]  (** table_name *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_kusto_iothub_data_connection *)

let timeouts ?create ?delete ?read () : timeouts =
  { create; delete; read }

let azurerm_kusto_iothub_data_connection ?data_format
    ?database_routing_type ?event_system_properties ?id
    ?mapping_rule_name ?table_name ?timeouts ~cluster_name
    ~consumer_group ~database_name ~iothub_id ~location ~name
    ~resource_group_name ~shared_access_policy_name () :
    azurerm_kusto_iothub_data_connection =
  {
    cluster_name;
    consumer_group;
    data_format;
    database_name;
    database_routing_type;
    event_system_properties;
    id;
    iothub_id;
    location;
    mapping_rule_name;
    name;
    resource_group_name;
    shared_access_policy_name;
    table_name;
    timeouts;
  }

type t = {
  cluster_name : string prop;
  consumer_group : string prop;
  data_format : string prop;
  database_name : string prop;
  database_routing_type : string prop;
  event_system_properties : string list prop;
  id : string prop;
  iothub_id : string prop;
  location : string prop;
  mapping_rule_name : string prop;
  name : string prop;
  resource_group_name : string prop;
  shared_access_policy_name : string prop;
  table_name : string prop;
}

let make ?data_format ?database_routing_type ?event_system_properties
    ?id ?mapping_rule_name ?table_name ?timeouts ~cluster_name
    ~consumer_group ~database_name ~iothub_id ~location ~name
    ~resource_group_name ~shared_access_policy_name __id =
  let __type = "azurerm_kusto_iothub_data_connection" in
  let __attrs =
    ({
       cluster_name = Prop.computed __type __id "cluster_name";
       consumer_group = Prop.computed __type __id "consumer_group";
       data_format = Prop.computed __type __id "data_format";
       database_name = Prop.computed __type __id "database_name";
       database_routing_type =
         Prop.computed __type __id "database_routing_type";
       event_system_properties =
         Prop.computed __type __id "event_system_properties";
       id = Prop.computed __type __id "id";
       iothub_id = Prop.computed __type __id "iothub_id";
       location = Prop.computed __type __id "location";
       mapping_rule_name =
         Prop.computed __type __id "mapping_rule_name";
       name = Prop.computed __type __id "name";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
       shared_access_policy_name =
         Prop.computed __type __id "shared_access_policy_name";
       table_name = Prop.computed __type __id "table_name";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_kusto_iothub_data_connection
        (azurerm_kusto_iothub_data_connection ?data_format
           ?database_routing_type ?event_system_properties ?id
           ?mapping_rule_name ?table_name ?timeouts ~cluster_name
           ~consumer_group ~database_name ~iothub_id ~location ~name
           ~resource_group_name ~shared_access_policy_name ());
    attrs = __attrs;
  }

let register ?tf_module ?data_format ?database_routing_type
    ?event_system_properties ?id ?mapping_rule_name ?table_name
    ?timeouts ~cluster_name ~consumer_group ~database_name ~iothub_id
    ~location ~name ~resource_group_name ~shared_access_policy_name
    __id =
  let (r : _ Tf_core.resource) =
    make ?data_format ?database_routing_type ?event_system_properties
      ?id ?mapping_rule_name ?table_name ?timeouts ~cluster_name
      ~consumer_group ~database_name ~iothub_id ~location ~name
      ~resource_group_name ~shared_access_policy_name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
