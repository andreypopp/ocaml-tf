(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

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

type azurerm_stream_analytics_stream_input_eventhub_v2 = {
  authentication_mode : string prop option; [@option]
      (** authentication_mode *)
  eventhub_consumer_group_name : string prop option; [@option]
      (** eventhub_consumer_group_name *)
  eventhub_name : string prop;  (** eventhub_name *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  partition_key : string prop option; [@option]  (** partition_key *)
  servicebus_namespace : string prop;  (** servicebus_namespace *)
  shared_access_policy_key : string prop option; [@option]
      (** shared_access_policy_key *)
  shared_access_policy_name : string prop option; [@option]
      (** shared_access_policy_name *)
  stream_analytics_job_id : string prop;
      (** stream_analytics_job_id *)
  serialization : serialization list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_stream_analytics_stream_input_eventhub_v2 *)

let serialization ?encoding ?field_delimiter ~type_ () :
    serialization =
  { encoding; field_delimiter; type_ }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_stream_analytics_stream_input_eventhub_v2
    ?authentication_mode ?eventhub_consumer_group_name ?id
    ?partition_key ?shared_access_policy_key
    ?shared_access_policy_name ?timeouts ~eventhub_name ~name
    ~servicebus_namespace ~stream_analytics_job_id ~serialization ()
    : azurerm_stream_analytics_stream_input_eventhub_v2 =
  {
    authentication_mode;
    eventhub_consumer_group_name;
    eventhub_name;
    id;
    name;
    partition_key;
    servicebus_namespace;
    shared_access_policy_key;
    shared_access_policy_name;
    stream_analytics_job_id;
    serialization;
    timeouts;
  }

type t = {
  authentication_mode : string prop;
  eventhub_consumer_group_name : string prop;
  eventhub_name : string prop;
  id : string prop;
  name : string prop;
  partition_key : string prop;
  servicebus_namespace : string prop;
  shared_access_policy_key : string prop;
  shared_access_policy_name : string prop;
  stream_analytics_job_id : string prop;
}

let register ?tf_module ?authentication_mode
    ?eventhub_consumer_group_name ?id ?partition_key
    ?shared_access_policy_key ?shared_access_policy_name ?timeouts
    ~eventhub_name ~name ~servicebus_namespace
    ~stream_analytics_job_id ~serialization __resource_id =
  let __resource_type =
    "azurerm_stream_analytics_stream_input_eventhub_v2"
  in
  let __resource =
    azurerm_stream_analytics_stream_input_eventhub_v2
      ?authentication_mode ?eventhub_consumer_group_name ?id
      ?partition_key ?shared_access_policy_key
      ?shared_access_policy_name ?timeouts ~eventhub_name ~name
      ~servicebus_namespace ~stream_analytics_job_id ~serialization
      ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_stream_analytics_stream_input_eventhub_v2
       __resource);
  let __resource_attributes =
    ({
       authentication_mode =
         Prop.computed __resource_type __resource_id
           "authentication_mode";
       eventhub_consumer_group_name =
         Prop.computed __resource_type __resource_id
           "eventhub_consumer_group_name";
       eventhub_name =
         Prop.computed __resource_type __resource_id "eventhub_name";
       id = Prop.computed __resource_type __resource_id "id";
       name = Prop.computed __resource_type __resource_id "name";
       partition_key =
         Prop.computed __resource_type __resource_id "partition_key";
       servicebus_namespace =
         Prop.computed __resource_type __resource_id
           "servicebus_namespace";
       shared_access_policy_key =
         Prop.computed __resource_type __resource_id
           "shared_access_policy_key";
       shared_access_policy_name =
         Prop.computed __resource_type __resource_id
           "shared_access_policy_name";
       stream_analytics_job_id =
         Prop.computed __resource_type __resource_id
           "stream_analytics_job_id";
     }
      : t)
  in
  __resource_attributes
