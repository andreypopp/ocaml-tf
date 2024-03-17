(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_stream_analytics_stream_input_iothub__serialization = {
  encoding : string prop option; [@option]  (** encoding *)
  field_delimiter : string prop option; [@option]
      (** field_delimiter *)
  type_ : string prop; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** azurerm_stream_analytics_stream_input_iothub__serialization *)

type azurerm_stream_analytics_stream_input_iothub__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_stream_analytics_stream_input_iothub__timeouts *)

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
  serialization :
    azurerm_stream_analytics_stream_input_iothub__serialization list;
  timeouts :
    azurerm_stream_analytics_stream_input_iothub__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_stream_analytics_stream_input_iothub *)

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

let azurerm_stream_analytics_stream_input_iothub ?id ?timeouts
    ~endpoint ~eventhub_consumer_group_name ~iothub_namespace ~name
    ~resource_group_name ~shared_access_policy_key
    ~shared_access_policy_name ~stream_analytics_job_name
    ~serialization __resource_id =
  let __resource_type =
    "azurerm_stream_analytics_stream_input_iothub"
  in
  let __resource =
    ({
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
      : azurerm_stream_analytics_stream_input_iothub)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_stream_analytics_stream_input_iothub
       __resource);
  let __resource_attributes =
    ({
       endpoint =
         Prop.computed __resource_type __resource_id "endpoint";
       eventhub_consumer_group_name =
         Prop.computed __resource_type __resource_id
           "eventhub_consumer_group_name";
       id = Prop.computed __resource_type __resource_id "id";
       iothub_namespace =
         Prop.computed __resource_type __resource_id
           "iothub_namespace";
       name = Prop.computed __resource_type __resource_id "name";
       resource_group_name =
         Prop.computed __resource_type __resource_id
           "resource_group_name";
       shared_access_policy_key =
         Prop.computed __resource_type __resource_id
           "shared_access_policy_key";
       shared_access_policy_name =
         Prop.computed __resource_type __resource_id
           "shared_access_policy_name";
       stream_analytics_job_name =
         Prop.computed __resource_type __resource_id
           "stream_analytics_job_name";
     }
      : t)
  in
  __resource_attributes
