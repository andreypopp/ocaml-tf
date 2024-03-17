(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_stream_analytics_stream_input_eventhub__serialization = {
  encoding : string option; [@option]  (** encoding *)
  field_delimiter : string option; [@option]  (** field_delimiter *)
  type_ : string; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** azurerm_stream_analytics_stream_input_eventhub__serialization *)

type azurerm_stream_analytics_stream_input_eventhub__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_stream_analytics_stream_input_eventhub__timeouts *)

type azurerm_stream_analytics_stream_input_eventhub = {
  authentication_mode : string option; [@option]
      (** authentication_mode *)
  eventhub_consumer_group_name : string option; [@option]
      (** eventhub_consumer_group_name *)
  eventhub_name : string;  (** eventhub_name *)
  id : string option; [@option]  (** id *)
  name : string;  (** name *)
  partition_key : string option; [@option]  (** partition_key *)
  resource_group_name : string;  (** resource_group_name *)
  servicebus_namespace : string;  (** servicebus_namespace *)
  shared_access_policy_key : string option; [@option]
      (** shared_access_policy_key *)
  shared_access_policy_name : string option; [@option]
      (** shared_access_policy_name *)
  stream_analytics_job_name : string;
      (** stream_analytics_job_name *)
  serialization :
    azurerm_stream_analytics_stream_input_eventhub__serialization
    list;
  timeouts :
    azurerm_stream_analytics_stream_input_eventhub__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_stream_analytics_stream_input_eventhub *)

let azurerm_stream_analytics_stream_input_eventhub
    ?authentication_mode ?eventhub_consumer_group_name ?id
    ?partition_key ?shared_access_policy_key
    ?shared_access_policy_name ?timeouts ~eventhub_name ~name
    ~resource_group_name ~servicebus_namespace
    ~stream_analytics_job_name ~serialization __resource_id =
  let __resource_type =
    "azurerm_stream_analytics_stream_input_eventhub"
  in
  let __resource =
    {
      authentication_mode;
      eventhub_consumer_group_name;
      eventhub_name;
      id;
      name;
      partition_key;
      resource_group_name;
      servicebus_namespace;
      shared_access_policy_key;
      shared_access_policy_name;
      stream_analytics_job_name;
      serialization;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_stream_analytics_stream_input_eventhub
       __resource);
  ()
