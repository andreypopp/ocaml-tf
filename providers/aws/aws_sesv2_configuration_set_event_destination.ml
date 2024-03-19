(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type event_destination__cloud_watch_destination__dimension_configuration = {
  default_dimension_value : string prop;
      (** default_dimension_value *)
  dimension_name : string prop;  (** dimension_name *)
  dimension_value_source : string prop;  (** dimension_value_source *)
}
[@@deriving yojson_of]
(** event_destination__cloud_watch_destination__dimension_configuration *)

type event_destination__cloud_watch_destination = {
  dimension_configuration :
    event_destination__cloud_watch_destination__dimension_configuration
    list;
}
[@@deriving yojson_of]
(** event_destination__cloud_watch_destination *)

type event_destination__kinesis_firehose_destination = {
  delivery_stream_arn : string prop;  (** delivery_stream_arn *)
  iam_role_arn : string prop;  (** iam_role_arn *)
}
[@@deriving yojson_of]
(** event_destination__kinesis_firehose_destination *)

type event_destination__pinpoint_destination = {
  application_arn : string prop;  (** application_arn *)
}
[@@deriving yojson_of]
(** event_destination__pinpoint_destination *)

type event_destination__sns_destination = {
  topic_arn : string prop;  (** topic_arn *)
}
[@@deriving yojson_of]
(** event_destination__sns_destination *)

type event_destination = {
  enabled : bool prop option; [@option]  (** enabled *)
  matching_event_types : string prop list;
      (** matching_event_types *)
  cloud_watch_destination :
    event_destination__cloud_watch_destination list;
  kinesis_firehose_destination :
    event_destination__kinesis_firehose_destination list;
  pinpoint_destination :
    event_destination__pinpoint_destination list;
  sns_destination : event_destination__sns_destination list;
}
[@@deriving yojson_of]
(** event_destination *)

type aws_sesv2_configuration_set_event_destination = {
  configuration_set_name : string prop;
      (** configuration_set_name *)
  event_destination_name : string prop;
      (** event_destination_name *)
  id : string prop option; [@option]  (** id *)
  event_destination : event_destination list;
}
[@@deriving yojson_of]
(** aws_sesv2_configuration_set_event_destination *)

let event_destination__cloud_watch_destination__dimension_configuration
    ~default_dimension_value ~dimension_name ~dimension_value_source
    () :
    event_destination__cloud_watch_destination__dimension_configuration
    =
  { default_dimension_value; dimension_name; dimension_value_source }

let event_destination__cloud_watch_destination
    ~dimension_configuration () :
    event_destination__cloud_watch_destination =
  { dimension_configuration }

let event_destination__kinesis_firehose_destination
    ~delivery_stream_arn ~iam_role_arn () :
    event_destination__kinesis_firehose_destination =
  { delivery_stream_arn; iam_role_arn }

let event_destination__pinpoint_destination ~application_arn () :
    event_destination__pinpoint_destination =
  { application_arn }

let event_destination__sns_destination ~topic_arn () :
    event_destination__sns_destination =
  { topic_arn }

let event_destination ?enabled ~matching_event_types
    ~cloud_watch_destination ~kinesis_firehose_destination
    ~pinpoint_destination ~sns_destination () : event_destination =
  {
    enabled;
    matching_event_types;
    cloud_watch_destination;
    kinesis_firehose_destination;
    pinpoint_destination;
    sns_destination;
  }

let aws_sesv2_configuration_set_event_destination ?id
    ~configuration_set_name ~event_destination_name
    ~event_destination () :
    aws_sesv2_configuration_set_event_destination =
  {
    configuration_set_name;
    event_destination_name;
    id;
    event_destination;
  }

type t = {
  configuration_set_name : string prop;
  event_destination_name : string prop;
  id : string prop;
}

let register ?tf_module ?id ~configuration_set_name
    ~event_destination_name ~event_destination __resource_id =
  let __resource_type =
    "aws_sesv2_configuration_set_event_destination"
  in
  let __resource =
    aws_sesv2_configuration_set_event_destination ?id
      ~configuration_set_name ~event_destination_name
      ~event_destination ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_sesv2_configuration_set_event_destination
       __resource);
  let __resource_attributes =
    ({
       configuration_set_name =
         Prop.computed __resource_type __resource_id
           "configuration_set_name";
       event_destination_name =
         Prop.computed __resource_type __resource_id
           "event_destination_name";
       id = Prop.computed __resource_type __resource_id "id";
     }
      : t)
  in
  __resource_attributes
