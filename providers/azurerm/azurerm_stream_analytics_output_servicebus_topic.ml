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

type azurerm_stream_analytics_output_servicebus_topic = {
  authentication_mode : string prop option; [@option]
      (** authentication_mode *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
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
  system_property_columns : (string * string prop) list option;
      [@option]
      (** system_property_columns *)
  topic_name : string prop;  (** topic_name *)
  serialization : serialization list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_stream_analytics_output_servicebus_topic *)

let serialization ?encoding ?field_delimiter ?format ~type_ () :
    serialization =
  { encoding; field_delimiter; format; type_ }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_stream_analytics_output_servicebus_topic
    ?authentication_mode ?id ?property_columns
    ?shared_access_policy_key ?shared_access_policy_name
    ?system_property_columns ?timeouts ~name ~resource_group_name
    ~servicebus_namespace ~stream_analytics_job_name ~topic_name
    ~serialization () :
    azurerm_stream_analytics_output_servicebus_topic =
  {
    authentication_mode;
    id;
    name;
    property_columns;
    resource_group_name;
    servicebus_namespace;
    shared_access_policy_key;
    shared_access_policy_name;
    stream_analytics_job_name;
    system_property_columns;
    topic_name;
    serialization;
    timeouts;
  }

type t = {
  authentication_mode : string prop;
  id : string prop;
  name : string prop;
  property_columns : string list prop;
  resource_group_name : string prop;
  servicebus_namespace : string prop;
  shared_access_policy_key : string prop;
  shared_access_policy_name : string prop;
  stream_analytics_job_name : string prop;
  system_property_columns : (string * string) list prop;
  topic_name : string prop;
}

let make ?authentication_mode ?id ?property_columns
    ?shared_access_policy_key ?shared_access_policy_name
    ?system_property_columns ?timeouts ~name ~resource_group_name
    ~servicebus_namespace ~stream_analytics_job_name ~topic_name
    ~serialization __id =
  let __type = "azurerm_stream_analytics_output_servicebus_topic" in
  let __attrs =
    ({
       authentication_mode =
         Prop.computed __type __id "authentication_mode";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
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
       system_property_columns =
         Prop.computed __type __id "system_property_columns";
       topic_name = Prop.computed __type __id "topic_name";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_stream_analytics_output_servicebus_topic
        (azurerm_stream_analytics_output_servicebus_topic
           ?authentication_mode ?id ?property_columns
           ?shared_access_policy_key ?shared_access_policy_name
           ?system_property_columns ?timeouts ~name
           ~resource_group_name ~servicebus_namespace
           ~stream_analytics_job_name ~topic_name ~serialization ());
    attrs = __attrs;
  }

let register ?tf_module ?authentication_mode ?id ?property_columns
    ?shared_access_policy_key ?shared_access_policy_name
    ?system_property_columns ?timeouts ~name ~resource_group_name
    ~servicebus_namespace ~stream_analytics_job_name ~topic_name
    ~serialization __id =
  let (r : _ Tf_core.resource) =
    make ?authentication_mode ?id ?property_columns
      ?shared_access_policy_key ?shared_access_policy_name
      ?system_property_columns ?timeouts ~name ~resource_group_name
      ~servicebus_namespace ~stream_analytics_job_name ~topic_name
      ~serialization __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
