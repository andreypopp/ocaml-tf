(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_ses_event_destination__cloudwatch_destination = {
  default_value : string prop;  (** default_value *)
  dimension_name : string prop;  (** dimension_name *)
  value_source : string prop;  (** value_source *)
}
[@@deriving yojson_of]
(** aws_ses_event_destination__cloudwatch_destination *)

type aws_ses_event_destination__kinesis_destination = {
  role_arn : string prop;  (** role_arn *)
  stream_arn : string prop;  (** stream_arn *)
}
[@@deriving yojson_of]
(** aws_ses_event_destination__kinesis_destination *)

type aws_ses_event_destination__sns_destination = {
  topic_arn : string prop;  (** topic_arn *)
}
[@@deriving yojson_of]
(** aws_ses_event_destination__sns_destination *)

type aws_ses_event_destination = {
  configuration_set_name : string prop;
      (** configuration_set_name *)
  enabled : bool prop option; [@option]  (** enabled *)
  id : string prop option; [@option]  (** id *)
  matching_types : string prop list;  (** matching_types *)
  name : string prop;  (** name *)
  cloudwatch_destination :
    aws_ses_event_destination__cloudwatch_destination list;
  kinesis_destination :
    aws_ses_event_destination__kinesis_destination list;
  sns_destination : aws_ses_event_destination__sns_destination list;
}
[@@deriving yojson_of]
(** aws_ses_event_destination *)

type t = {
  arn : string prop;
  configuration_set_name : string prop;
  enabled : bool prop;
  id : string prop;
  matching_types : string list prop;
  name : string prop;
}

let aws_ses_event_destination ?enabled ?id ~configuration_set_name
    ~matching_types ~name ~cloudwatch_destination
    ~kinesis_destination ~sns_destination __resource_id =
  let __resource_type = "aws_ses_event_destination" in
  let __resource =
    ({
       configuration_set_name;
       enabled;
       id;
       matching_types;
       name;
       cloudwatch_destination;
       kinesis_destination;
       sns_destination;
     }
      : aws_ses_event_destination)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_ses_event_destination __resource);
  let __resource_attributes =
    ({
       arn = Prop.computed __resource_type __resource_id "arn";
       configuration_set_name =
         Prop.computed __resource_type __resource_id
           "configuration_set_name";
       enabled =
         Prop.computed __resource_type __resource_id "enabled";
       id = Prop.computed __resource_type __resource_id "id";
       matching_types =
         Prop.computed __resource_type __resource_id "matching_types";
       name = Prop.computed __resource_type __resource_id "name";
     }
      : t)
  in
  __resource_attributes
