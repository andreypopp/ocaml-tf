(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type serialization = {
  encoding : string prop option; [@option]  (** encoding *)
  field_delimiter : string prop option; [@option]
      (** field_delimiter *)
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

type azurerm_stream_analytics_stream_input_iothub = {
  endpoint : string prop;  (** endpoint *)
  eventhub_consumer_group_name : string prop;
      (** eventhub_consumer_group_name *)
  id : string prop option; [@option]  (** id *)
  iothub_namespace : string prop;  (** iothub_namespace *)
  name : string prop;  (** name *)
  resource_group_name : string prop;  (** resource_group_name *)
  shared_access_policy_key : string prop;
      (** shared_access_policy_key *)
  shared_access_policy_name : string prop;
      (** shared_access_policy_name *)
  stream_analytics_job_name : string prop;
      (** stream_analytics_job_name *)
  serialization : serialization list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_stream_analytics_stream_input_iothub *)

let serialization ?encoding ?field_delimiter ~type_ () :
    serialization =
  { encoding; field_delimiter; type_ }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_stream_analytics_stream_input_iothub ?id ?timeouts
    ~endpoint ~eventhub_consumer_group_name ~iothub_namespace ~name
    ~resource_group_name ~shared_access_policy_key
    ~shared_access_policy_name ~stream_analytics_job_name
    ~serialization () : azurerm_stream_analytics_stream_input_iothub
    =
  {
    endpoint;
    eventhub_consumer_group_name;
    id;
    iothub_namespace;
    name;
    resource_group_name;
    shared_access_policy_key;
    shared_access_policy_name;
    stream_analytics_job_name;
    serialization;
    timeouts;
  }

type t = {
  endpoint : string prop;
  eventhub_consumer_group_name : string prop;
  id : string prop;
  iothub_namespace : string prop;
  name : string prop;
  resource_group_name : string prop;
  shared_access_policy_key : string prop;
  shared_access_policy_name : string prop;
  stream_analytics_job_name : string prop;
}

let make ?id ?timeouts ~endpoint ~eventhub_consumer_group_name
    ~iothub_namespace ~name ~resource_group_name
    ~shared_access_policy_key ~shared_access_policy_name
    ~stream_analytics_job_name ~serialization __id =
  let __type = "azurerm_stream_analytics_stream_input_iothub" in
  let __attrs =
    ({
       endpoint = Prop.computed __type __id "endpoint";
       eventhub_consumer_group_name =
         Prop.computed __type __id "eventhub_consumer_group_name";
       id = Prop.computed __type __id "id";
       iothub_namespace =
         Prop.computed __type __id "iothub_namespace";
       name = Prop.computed __type __id "name";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
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
      yojson_of_azurerm_stream_analytics_stream_input_iothub
        (azurerm_stream_analytics_stream_input_iothub ?id ?timeouts
           ~endpoint ~eventhub_consumer_group_name ~iothub_namespace
           ~name ~resource_group_name ~shared_access_policy_key
           ~shared_access_policy_name ~stream_analytics_job_name
           ~serialization ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?timeouts ~endpoint
    ~eventhub_consumer_group_name ~iothub_namespace ~name
    ~resource_group_name ~shared_access_policy_key
    ~shared_access_policy_name ~stream_analytics_job_name
    ~serialization __id =
  let (r : _ Tf_core.resource) =
    make ?id ?timeouts ~endpoint ~eventhub_consumer_group_name
      ~iothub_namespace ~name ~resource_group_name
      ~shared_access_policy_key ~shared_access_policy_name
      ~stream_analytics_job_name ~serialization __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
