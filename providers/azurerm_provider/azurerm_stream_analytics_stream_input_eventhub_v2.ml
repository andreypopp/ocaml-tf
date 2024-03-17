(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type azurerm_stream_analytics_stream_input_eventhub_v2__serialization = {
  encoding : string option; [@option]  (** encoding *)
  field_delimiter : string option; [@option]  (** field_delimiter *)
  type_ : string; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** azurerm_stream_analytics_stream_input_eventhub_v2__serialization *)

type azurerm_stream_analytics_stream_input_eventhub_v2__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_stream_analytics_stream_input_eventhub_v2__timeouts *)

type azurerm_stream_analytics_stream_input_eventhub_v2 = {
  authentication_mode : string option; [@option]
      (** authentication_mode *)
  eventhub_consumer_group_name : string option; [@option]
      (** eventhub_consumer_group_name *)
  eventhub_name : string;  (** eventhub_name *)
  name : string;  (** name *)
  partition_key : string option; [@option]  (** partition_key *)
  servicebus_namespace : string;  (** servicebus_namespace *)
  shared_access_policy_key : string option; [@option]
      (** shared_access_policy_key *)
  shared_access_policy_name : string option; [@option]
      (** shared_access_policy_name *)
  stream_analytics_job_id : string;  (** stream_analytics_job_id *)
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
    ?authentication_mode ?eventhub_consumer_group_name ?partition_key
    ?shared_access_policy_key ?shared_access_policy_name ?timeouts
    ~eventhub_name ~name ~servicebus_namespace
    ~stream_analytics_job_id ~serialization __resource_id =
  let __resource_type =
    "azurerm_stream_analytics_stream_input_eventhub_v2"
  in
  let __resource =
    {
      authentication_mode;
      eventhub_consumer_group_name;
      eventhub_name;
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
