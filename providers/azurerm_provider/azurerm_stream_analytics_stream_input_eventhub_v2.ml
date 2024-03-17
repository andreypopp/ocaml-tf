(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_stream_analytics_stream_input_eventhub_v2__serialization = {
  encoding : string prop option; [@option]  (** encoding *)
  field_delimiter : string prop option; [@option]
      (** field_delimiter *)
  type_ : string prop; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** azurerm_stream_analytics_stream_input_eventhub_v2__serialization *)

type azurerm_stream_analytics_stream_input_eventhub_v2__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_stream_analytics_stream_input_eventhub_v2__timeouts *)

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
  serialization :
    azurerm_stream_analytics_stream_input_eventhub_v2__serialization
    list;
  timeouts :
    azurerm_stream_analytics_stream_input_eventhub_v2__timeouts
    option;
}
[@@deriving yojson_of]
(** azurerm_stream_analytics_stream_input_eventhub_v2 *)

let azurerm_stream_analytics_stream_input_eventhub_v2
    ?authentication_mode ?eventhub_consumer_group_name ?id
    ?partition_key ?shared_access_policy_key
    ?shared_access_policy_name ?timeouts ~eventhub_name ~name
    ~servicebus_namespace ~stream_analytics_job_id ~serialization
    __resource_id =
  let __resource_type =
    "azurerm_stream_analytics_stream_input_eventhub_v2"
  in
  let __resource =
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
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_stream_analytics_stream_input_eventhub_v2
       __resource);
  ()
