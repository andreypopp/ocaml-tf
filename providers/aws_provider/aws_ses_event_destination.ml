(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type aws_ses_event_destination__cloudwatch_destination = {
  default_value : string;  (** default_value *)
  dimension_name : string;  (** dimension_name *)
  value_source : string;  (** value_source *)
}
[@@deriving yojson_of]
(** aws_ses_event_destination__cloudwatch_destination *)

type aws_ses_event_destination__kinesis_destination = {
  role_arn : string;  (** role_arn *)
  stream_arn : string;  (** stream_arn *)
}
[@@deriving yojson_of]
(** aws_ses_event_destination__kinesis_destination *)

type aws_ses_event_destination__sns_destination = {
  topic_arn : string;  (** topic_arn *)
}
[@@deriving yojson_of]
(** aws_ses_event_destination__sns_destination *)

type aws_ses_event_destination = {
  configuration_set_name : string;  (** configuration_set_name *)
  enabled : bool option; [@option]  (** enabled *)
  matching_types : string list;  (** matching_types *)
  name : string;  (** name *)
  cloudwatch_destination :
    aws_ses_event_destination__cloudwatch_destination list;
  kinesis_destination :
    aws_ses_event_destination__kinesis_destination list;
  sns_destination : aws_ses_event_destination__sns_destination list;
}
[@@deriving yojson_of]
(** aws_ses_event_destination *)

let aws_ses_event_destination ?enabled ~configuration_set_name
    ~matching_types ~name ~cloudwatch_destination
    ~kinesis_destination ~sns_destination __resource_id =
  let __resource_type = "aws_ses_event_destination" in
  let __resource =
    {
      configuration_set_name;
      enabled;
      matching_types;
      name;
      cloudwatch_destination;
      kinesis_destination;
      sns_destination;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_ses_event_destination __resource);
  ()
