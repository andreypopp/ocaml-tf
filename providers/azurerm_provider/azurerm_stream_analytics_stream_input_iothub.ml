(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_stream_analytics_stream_input_iothub__serialization = {
  encoding : string option; [@option]  (** encoding *)
  field_delimiter : string option; [@option]  (** field_delimiter *)
  type_ : string; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** azurerm_stream_analytics_stream_input_iothub__serialization *)

type azurerm_stream_analytics_stream_input_iothub__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_stream_analytics_stream_input_iothub__timeouts *)

type azurerm_stream_analytics_stream_input_iothub = {
  endpoint : string;  (** endpoint *)
  eventhub_consumer_group_name : string;
      (** eventhub_consumer_group_name *)
  id : string option; [@option]  (** id *)
  iothub_namespace : string;  (** iothub_namespace *)
  name : string;  (** name *)
  resource_group_name : string;  (** resource_group_name *)
  shared_access_policy_key : string;  (** shared_access_policy_key *)
  shared_access_policy_name : string;
      (** shared_access_policy_name *)
  stream_analytics_job_name : string;
      (** stream_analytics_job_name *)
  serialization :
    azurerm_stream_analytics_stream_input_iothub__serialization list;
  timeouts :
    azurerm_stream_analytics_stream_input_iothub__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_stream_analytics_stream_input_iothub *)

let azurerm_stream_analytics_stream_input_iothub ?id ?timeouts
    ~endpoint ~eventhub_consumer_group_name ~iothub_namespace ~name
    ~resource_group_name ~shared_access_policy_key
    ~shared_access_policy_name ~stream_analytics_job_name
    ~serialization __resource_id =
  let __resource_type =
    "azurerm_stream_analytics_stream_input_iothub"
  in
  let __resource =
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
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_stream_analytics_stream_input_iothub
       __resource);
  ()
