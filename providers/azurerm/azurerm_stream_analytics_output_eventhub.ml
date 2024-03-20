(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type serialization = {
  encoding : string prop option; [@option]  (** encoding *)
  field_delimiter : string prop option; [@option]
      (** field_delimiter *)
  format : string prop option; [@option]  (** format *)
  type_ : string prop; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** serialization *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type azurerm_stream_analytics_output_eventhub = {
  authentication_mode : string prop option; [@option]
      (** authentication_mode *)
  eventhub_name : string prop;  (** eventhub_name *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  partition_key : string prop option; [@option]  (** partition_key *)
  property_columns : string prop list option; [@option]
      (** property_columns *)
  resource_group_name : string prop;  (** resource_group_name *)
  servicebus_namespace : string prop;  (** servicebus_namespace *)
  shared_access_policy_key : string prop option; [@option]
      (** shared_access_policy_key *)
  shared_access_policy_name : string prop option; [@option]
      (** shared_access_policy_name *)
  stream_analytics_job_name : string prop;
      (** stream_analytics_job_name *)
  serialization : serialization list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_stream_analytics_output_eventhub *)

let serialization ?encoding ?field_delimiter ?format ~type_ () :
    serialization =
  { encoding; field_delimiter; format; type_ }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_stream_analytics_output_eventhub ?authentication_mode ?id
    ?partition_key ?property_columns ?shared_access_policy_key
    ?shared_access_policy_name ?timeouts ~eventhub_name ~name
    ~resource_group_name ~servicebus_namespace
    ~stream_analytics_job_name ~serialization () :
    azurerm_stream_analytics_output_eventhub =
  {
    authentication_mode;
    eventhub_name;
    id;
    name;
    partition_key;
    property_columns;
    resource_group_name;
    servicebus_namespace;
    shared_access_policy_key;
    shared_access_policy_name;
    stream_analytics_job_name;
    serialization;
    timeouts;
  }

type t = {
  authentication_mode : string prop;
  eventhub_name : string prop;
  id : string prop;
  name : string prop;
  partition_key : string prop;
  property_columns : string list prop;
  resource_group_name : string prop;
  servicebus_namespace : string prop;
  shared_access_policy_key : string prop;
  shared_access_policy_name : string prop;
  stream_analytics_job_name : string prop;
}

let make ?authentication_mode ?id ?partition_key ?property_columns
    ?shared_access_policy_key ?shared_access_policy_name ?timeouts
    ~eventhub_name ~name ~resource_group_name ~servicebus_namespace
    ~stream_analytics_job_name ~serialization __id =
  let __type = "azurerm_stream_analytics_output_eventhub" in
  let __attrs =
    ({
       authentication_mode =
         Prop.computed __type __id "authentication_mode";
       eventhub_name = Prop.computed __type __id "eventhub_name";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       partition_key = Prop.computed __type __id "partition_key";
       property_columns =
         Prop.computed __type __id "property_columns";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
       servicebus_namespace =
         Prop.computed __type __id "servicebus_namespace";
       shared_access_policy_key =
         Prop.computed __type __id "shared_access_policy_key";
       shared_access_policy_name =
         Prop.computed __type __id "shared_access_policy_name";
       stream_analytics_job_name =
         Prop.computed __type __id "stream_analytics_job_name";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_stream_analytics_output_eventhub
        (azurerm_stream_analytics_output_eventhub
           ?authentication_mode ?id ?partition_key ?property_columns
           ?shared_access_policy_key ?shared_access_policy_name
           ?timeouts ~eventhub_name ~name ~resource_group_name
           ~servicebus_namespace ~stream_analytics_job_name
           ~serialization ());
    attrs = __attrs;
  }

let register ?tf_module ?authentication_mode ?id ?partition_key
    ?property_columns ?shared_access_policy_key
    ?shared_access_policy_name ?timeouts ~eventhub_name ~name
    ~resource_group_name ~servicebus_namespace
    ~stream_analytics_job_name ~serialization __id =
  let (r : _ Tf_core.resource) =
    make ?authentication_mode ?id ?partition_key ?property_columns
      ?shared_access_policy_key ?shared_access_policy_name ?timeouts
      ~eventhub_name ~name ~resource_group_name ~servicebus_namespace
      ~stream_analytics_job_name ~serialization __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
