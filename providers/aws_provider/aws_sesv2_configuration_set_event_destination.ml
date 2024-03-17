(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type aws_sesv2_configuration_set_event_destination__event_destination__cloud_watch_destination__dimension_configuration = {
  default_dimension_value : string;  (** default_dimension_value *)
  dimension_name : string;  (** dimension_name *)
  dimension_value_source : string;  (** dimension_value_source *)
}
[@@deriving yojson_of]
(** aws_sesv2_configuration_set_event_destination__event_destination__cloud_watch_destination__dimension_configuration *)

type aws_sesv2_configuration_set_event_destination__event_destination__cloud_watch_destination = {
  dimension_configuration :
    aws_sesv2_configuration_set_event_destination__event_destination__cloud_watch_destination__dimension_configuration
    list;
}
[@@deriving yojson_of]
(** aws_sesv2_configuration_set_event_destination__event_destination__cloud_watch_destination *)

type aws_sesv2_configuration_set_event_destination__event_destination__kinesis_firehose_destination = {
  delivery_stream_arn : string;  (** delivery_stream_arn *)
  iam_role_arn : string;  (** iam_role_arn *)
}
[@@deriving yojson_of]
(** aws_sesv2_configuration_set_event_destination__event_destination__kinesis_firehose_destination *)

type aws_sesv2_configuration_set_event_destination__event_destination__pinpoint_destination = {
  application_arn : string;  (** application_arn *)
}
[@@deriving yojson_of]
(** aws_sesv2_configuration_set_event_destination__event_destination__pinpoint_destination *)

type aws_sesv2_configuration_set_event_destination__event_destination__sns_destination = {
  topic_arn : string;  (** topic_arn *)
}
[@@deriving yojson_of]
(** aws_sesv2_configuration_set_event_destination__event_destination__sns_destination *)

type aws_sesv2_configuration_set_event_destination__event_destination = {
  enabled : bool option; [@option]  (** enabled *)
  matching_event_types : string list;  (** matching_event_types *)
  cloud_watch_destination :
    aws_sesv2_configuration_set_event_destination__event_destination__cloud_watch_destination
    list;
  kinesis_firehose_destination :
    aws_sesv2_configuration_set_event_destination__event_destination__kinesis_firehose_destination
    list;
  pinpoint_destination :
    aws_sesv2_configuration_set_event_destination__event_destination__pinpoint_destination
    list;
  sns_destination :
    aws_sesv2_configuration_set_event_destination__event_destination__sns_destination
    list;
}
[@@deriving yojson_of]
(** aws_sesv2_configuration_set_event_destination__event_destination *)

type aws_sesv2_configuration_set_event_destination = {
  configuration_set_name : string;  (** configuration_set_name *)
  event_destination_name : string;  (** event_destination_name *)
  event_destination :
    aws_sesv2_configuration_set_event_destination__event_destination
    list;
}
[@@deriving yojson_of]
(** aws_sesv2_configuration_set_event_destination *)

let aws_sesv2_configuration_set_event_destination
    ~configuration_set_name ~event_destination_name
    ~event_destination __resource_id =
  let __resource_type =
    "aws_sesv2_configuration_set_event_destination"
  in
  let __resource =
    {
      configuration_set_name;
      event_destination_name;
      event_destination;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_sesv2_configuration_set_event_destination
       __resource);
  ()
