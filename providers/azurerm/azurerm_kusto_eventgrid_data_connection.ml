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

type azurerm_kusto_eventgrid_data_connection = {
  blob_storage_event_type : string prop option; [@option]
      (** blob_storage_event_type *)
  cluster_name : string prop;  (** cluster_name *)
  data_format : string prop option; [@option]  (** data_format *)
  database_name : string prop;  (** database_name *)
  database_routing_type : string prop option; [@option]
      (** database_routing_type *)
  eventgrid_resource_id : string prop option; [@option]
      (** eventgrid_resource_id *)
  eventhub_consumer_group_name : string prop;
      (** eventhub_consumer_group_name *)
  eventhub_id : string prop;  (** eventhub_id *)
  id : string prop option; [@option]  (** id *)
  location : string prop;  (** location *)
  managed_identity_resource_id : string prop option; [@option]
      (** managed_identity_resource_id *)
  mapping_rule_name : string prop option; [@option]
      (** mapping_rule_name *)
  name : string prop;  (** name *)
  resource_group_name : string prop;  (** resource_group_name *)
  skip_first_record : bool prop option; [@option]
      (** skip_first_record *)
  storage_account_id : string prop;  (** storage_account_id *)
  table_name : string prop option; [@option]  (** table_name *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_kusto_eventgrid_data_connection *)

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_kusto_eventgrid_data_connection ?blob_storage_event_type
    ?data_format ?database_routing_type ?eventgrid_resource_id ?id
    ?managed_identity_resource_id ?mapping_rule_name
    ?skip_first_record ?table_name ?timeouts ~cluster_name
    ~database_name ~eventhub_consumer_group_name ~eventhub_id
    ~location ~name ~resource_group_name ~storage_account_id () :
    azurerm_kusto_eventgrid_data_connection =
  {
    blob_storage_event_type;
    cluster_name;
    data_format;
    database_name;
    database_routing_type;
    eventgrid_resource_id;
    eventhub_consumer_group_name;
    eventhub_id;
    id;
    location;
    managed_identity_resource_id;
    mapping_rule_name;
    name;
    resource_group_name;
    skip_first_record;
    storage_account_id;
    table_name;
    timeouts;
  }

type t = {
  blob_storage_event_type : string prop;
  cluster_name : string prop;
  data_format : string prop;
  database_name : string prop;
  database_routing_type : string prop;
  eventgrid_resource_id : string prop;
  eventhub_consumer_group_name : string prop;
  eventhub_id : string prop;
  id : string prop;
  location : string prop;
  managed_identity_resource_id : string prop;
  mapping_rule_name : string prop;
  name : string prop;
  resource_group_name : string prop;
  skip_first_record : bool prop;
  storage_account_id : string prop;
  table_name : string prop;
}

let make ?blob_storage_event_type ?data_format ?database_routing_type
    ?eventgrid_resource_id ?id ?managed_identity_resource_id
    ?mapping_rule_name ?skip_first_record ?table_name ?timeouts
    ~cluster_name ~database_name ~eventhub_consumer_group_name
    ~eventhub_id ~location ~name ~resource_group_name
    ~storage_account_id __id =
  let __type = "azurerm_kusto_eventgrid_data_connection" in
  let __attrs =
    ({
       blob_storage_event_type =
         Prop.computed __type __id "blob_storage_event_type";
       cluster_name = Prop.computed __type __id "cluster_name";
       data_format = Prop.computed __type __id "data_format";
       database_name = Prop.computed __type __id "database_name";
       database_routing_type =
         Prop.computed __type __id "database_routing_type";
       eventgrid_resource_id =
         Prop.computed __type __id "eventgrid_resource_id";
       eventhub_consumer_group_name =
         Prop.computed __type __id "eventhub_consumer_group_name";
       eventhub_id = Prop.computed __type __id "eventhub_id";
       id = Prop.computed __type __id "id";
       location = Prop.computed __type __id "location";
       managed_identity_resource_id =
         Prop.computed __type __id "managed_identity_resource_id";
       mapping_rule_name =
         Prop.computed __type __id "mapping_rule_name";
       name = Prop.computed __type __id "name";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
       skip_first_record =
         Prop.computed __type __id "skip_first_record";
       storage_account_id =
         Prop.computed __type __id "storage_account_id";
       table_name = Prop.computed __type __id "table_name";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_kusto_eventgrid_data_connection
        (azurerm_kusto_eventgrid_data_connection
           ?blob_storage_event_type ?data_format
           ?database_routing_type ?eventgrid_resource_id ?id
           ?managed_identity_resource_id ?mapping_rule_name
           ?skip_first_record ?table_name ?timeouts ~cluster_name
           ~database_name ~eventhub_consumer_group_name ~eventhub_id
           ~location ~name ~resource_group_name ~storage_account_id
           ());
    attrs = __attrs;
  }

let register ?tf_module ?blob_storage_event_type ?data_format
    ?database_routing_type ?eventgrid_resource_id ?id
    ?managed_identity_resource_id ?mapping_rule_name
    ?skip_first_record ?table_name ?timeouts ~cluster_name
    ~database_name ~eventhub_consumer_group_name ~eventhub_id
    ~location ~name ~resource_group_name ~storage_account_id __id =
  let (r : _ Tf_core.resource) =
    make ?blob_storage_event_type ?data_format ?database_routing_type
      ?eventgrid_resource_id ?id ?managed_identity_resource_id
      ?mapping_rule_name ?skip_first_record ?table_name ?timeouts
      ~cluster_name ~database_name ~eventhub_consumer_group_name
      ~eventhub_id ~location ~name ~resource_group_name
      ~storage_account_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
