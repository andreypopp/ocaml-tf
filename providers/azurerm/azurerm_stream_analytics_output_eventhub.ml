(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_stream_analytics_output_eventhub__serialization = {
  encoding : string prop option; [@option]  (** encoding *)
  field_delimiter : string prop option; [@option]
      (** field_delimiter *)
  format : string prop option; [@option]  (** format *)
  type_ : string prop; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** azurerm_stream_analytics_output_eventhub__serialization *)

type azurerm_stream_analytics_output_eventhub__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_stream_analytics_output_eventhub__timeouts *)

type azurerm_stream_analytics_output_eventhub = {
  authentication_mode : string prop option; [@option]
      (** authentication_mode *)
  eventhub_name : string prop;  (** eventhub_name *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  partition_key : string prop option; [@option]  (** partition_key *)
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
  serialization :
    azurerm_stream_analytics_output_eventhub__serialization list;
  timeouts :
    azurerm_stream_analytics_output_eventhub__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_stream_analytics_output_eventhub *)

type t = {
  authentication_mode : string prop;
  eventhub_name : string prop;
  id : string prop;
  name : string prop;
  partition_key : string prop;
  property_columns : string list prop;
  resource_group_name : string prop;
  servicebus_namespace : string prop;
  shared_access_policy_key : string prop;
  shared_access_policy_name : string prop;
  stream_analytics_job_name : string prop;
}

let azurerm_stream_analytics_output_eventhub ?authentication_mode ?id
    ?partition_key ?property_columns ?shared_access_policy_key
    ?shared_access_policy_name ?timeouts ~eventhub_name ~name
    ~resource_group_name ~servicebus_namespace
    ~stream_analytics_job_name ~serialization __resource_id =
  let __resource_type = "azurerm_stream_analytics_output_eventhub" in
  let __resource =
    ({
       authentication_mode;
       eventhub_name;
       id;
       name;
       partition_key;
       property_columns;
       resource_group_name;
       servicebus_namespace;
       shared_access_policy_key;
       shared_access_policy_name;
       stream_analytics_job_name;
       serialization;
       timeouts;
     }
      : azurerm_stream_analytics_output_eventhub)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_stream_analytics_output_eventhub __resource);
  let __resource_attributes =
    ({
       authentication_mode =
         Prop.computed __resource_type __resource_id
           "authentication_mode";
       eventhub_name =
         Prop.computed __resource_type __resource_id "eventhub_name";
       id = Prop.computed __resource_type __resource_id "id";
       name = Prop.computed __resource_type __resource_id "name";
       partition_key =
         Prop.computed __resource_type __resource_id "partition_key";
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
     }
      : t)
  in
  __resource_attributes
