(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_sesv2_configuration_set_event_destination__event_destination__cloud_watch_destination__dimension_configuration = {
  default_dimension_value : string prop;
      (** default_dimension_value *)
  dimension_name : string prop;  (** dimension_name *)
  dimension_value_source : string prop;  (** dimension_value_source *)
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
  delivery_stream_arn : string prop;  (** delivery_stream_arn *)
  iam_role_arn : string prop;  (** iam_role_arn *)
}
[@@deriving yojson_of]
(** aws_sesv2_configuration_set_event_destination__event_destination__kinesis_firehose_destination *)

type aws_sesv2_configuration_set_event_destination__event_destination__pinpoint_destination = {
  application_arn : string prop;  (** application_arn *)
}
[@@deriving yojson_of]
(** aws_sesv2_configuration_set_event_destination__event_destination__pinpoint_destination *)

type aws_sesv2_configuration_set_event_destination__event_destination__sns_destination = {
  topic_arn : string prop;  (** topic_arn *)
}
[@@deriving yojson_of]
(** aws_sesv2_configuration_set_event_destination__event_destination__sns_destination *)

type aws_sesv2_configuration_set_event_destination__event_destination = {
  enabled : bool prop option; [@option]  (** enabled *)
  matching_event_types : string prop list;
      (** matching_event_types *)
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
  configuration_set_name : string prop;
      (** configuration_set_name *)
  event_destination_name : string prop;
      (** event_destination_name *)
  id : string prop option; [@option]  (** id *)
  event_destination :
    aws_sesv2_configuration_set_event_destination__event_destination
    list;
}
[@@deriving yojson_of]
(** aws_sesv2_configuration_set_event_destination *)

let aws_sesv2_configuration_set_event_destination ?id
    ~configuration_set_name ~event_destination_name
    ~event_destination __resource_id =
  let __resource_type =
    "aws_sesv2_configuration_set_event_destination"
  in
  let __resource =
    {
      configuration_set_name;
      event_destination_name;
      id;
      event_destination;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_sesv2_configuration_set_event_destination
       __resource);
  ()
