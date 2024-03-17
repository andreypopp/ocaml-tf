(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_stream_analytics_output_servicebus_topic__serialization = {
  encoding : string prop option; [@option]  (** encoding *)
  field_delimiter : string prop option; [@option]
      (** field_delimiter *)
  format : string prop option; [@option]  (** format *)
  type_ : string prop; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** azurerm_stream_analytics_output_servicebus_topic__serialization *)

type azurerm_stream_analytics_output_servicebus_topic__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_stream_analytics_output_servicebus_topic__timeouts *)

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
  serialization :
    azurerm_stream_analytics_output_servicebus_topic__serialization
    list;
  timeouts :
    azurerm_stream_analytics_output_servicebus_topic__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_stream_analytics_output_servicebus_topic *)

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

let azurerm_stream_analytics_output_servicebus_topic
    ?authentication_mode ?id ?property_columns
    ?shared_access_policy_key ?shared_access_policy_name
    ?system_property_columns ?timeouts ~name ~resource_group_name
    ~servicebus_namespace ~stream_analytics_job_name ~topic_name
    ~serialization __resource_id =
  let __resource_type =
    "azurerm_stream_analytics_output_servicebus_topic"
  in
  let __resource =
    ({
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
      : azurerm_stream_analytics_output_servicebus_topic)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_stream_analytics_output_servicebus_topic
       __resource);
  let __resource_attributes =
    ({
       authentication_mode =
         Prop.computed __resource_type __resource_id
           "authentication_mode";
       id = Prop.computed __resource_type __resource_id "id";
       name = Prop.computed __resource_type __resource_id "name";
       property_columns =
         Prop.computed __resource_type __resource_id
           "property_columns";
       resource_group_name =
         Prop.computed __resource_type __resource_id
           "resource_group_name";
       servicebus_namespace =
         Prop.computed __resource_type __resource_id
           "servicebus_namespace";
       shared_access_policy_key =
         Prop.computed __resource_type __resource_id
           "shared_access_policy_key";
       shared_access_policy_name =
         Prop.computed __resource_type __resource_id
           "shared_access_policy_name";
       stream_analytics_job_name =
         Prop.computed __resource_type __resource_id
           "stream_analytics_job_name";
       system_property_columns =
         Prop.computed __resource_type __resource_id
           "system_property_columns";
       topic_name =
         Prop.computed __resource_type __resource_id "topic_name";
     }
      : t)
  in
  __resource_attributes
