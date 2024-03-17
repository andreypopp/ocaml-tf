(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_stream_analytics_output_servicebus_topic__serialization = {
  encoding : string option; [@option]  (** encoding *)
  field_delimiter : string option; [@option]  (** field_delimiter *)
  format : string option; [@option]  (** format *)
  type_ : string; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** azurerm_stream_analytics_output_servicebus_topic__serialization *)

type azurerm_stream_analytics_output_servicebus_topic__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_stream_analytics_output_servicebus_topic__timeouts *)

type azurerm_stream_analytics_output_servicebus_topic = {
  authentication_mode : string option; [@option]
      (** authentication_mode *)
  name : string;  (** name *)
  property_columns : string list option; [@option]
      (** property_columns *)
  resource_group_name : string;  (** resource_group_name *)
  servicebus_namespace : string;  (** servicebus_namespace *)
  shared_access_policy_key : string option; [@option]
      (** shared_access_policy_key *)
  shared_access_policy_name : string option; [@option]
      (** shared_access_policy_name *)
  stream_analytics_job_name : string;
      (** stream_analytics_job_name *)
  system_property_columns : (string * string) list option; [@option]
      (** system_property_columns *)
  topic_name : string;  (** topic_name *)
  serialization :
    azurerm_stream_analytics_output_servicebus_topic__serialization
    list;
  timeouts :
    azurerm_stream_analytics_output_servicebus_topic__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_stream_analytics_output_servicebus_topic *)

let azurerm_stream_analytics_output_servicebus_topic
    ?authentication_mode ?property_columns ?shared_access_policy_key
    ?shared_access_policy_name ?system_property_columns ?timeouts
    ~name ~resource_group_name ~servicebus_namespace
    ~stream_analytics_job_name ~topic_name ~serialization
    __resource_id =
  let __resource_type =
    "azurerm_stream_analytics_output_servicebus_topic"
  in
  let __resource =
    {
      authentication_mode;
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
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_stream_analytics_output_servicebus_topic
       __resource);
  ()
