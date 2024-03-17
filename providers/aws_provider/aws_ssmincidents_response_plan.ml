(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type aws_ssmincidents_response_plan__action__ssm_automation__parameter = {
  name : string;  (** name *)
  values : string list;  (** values *)
}
[@@deriving yojson_of]
(** aws_ssmincidents_response_plan__action__ssm_automation__parameter *)

type aws_ssmincidents_response_plan__action__ssm_automation = {
  document_name : string;  (** document_name *)
  document_version : string option; [@option]
      (** document_version *)
  dynamic_parameters : (string * string) list option; [@option]
      (** dynamic_parameters *)
  role_arn : string;  (** role_arn *)
  target_account : string option; [@option]  (** target_account *)
  parameter :
    aws_ssmincidents_response_plan__action__ssm_automation__parameter
    list;
}
[@@deriving yojson_of]
(** aws_ssmincidents_response_plan__action__ssm_automation *)

type aws_ssmincidents_response_plan__action = {
  ssm_automation :
    aws_ssmincidents_response_plan__action__ssm_automation list;
}
[@@deriving yojson_of]
(** aws_ssmincidents_response_plan__action *)

type aws_ssmincidents_response_plan__incident_template__notification_target = {
  sns_topic_arn : string;  (** sns_topic_arn *)
}
[@@deriving yojson_of]
(** aws_ssmincidents_response_plan__incident_template__notification_target *)

type aws_ssmincidents_response_plan__incident_template = {
  dedupe_string : string option; [@option]  (** dedupe_string *)
  impact : float;  (** impact *)
  incident_tags : (string * string) list option; [@option]
      (** incident_tags *)
  summary : string option; [@option]  (** summary *)
  title : string;  (** title *)
  notification_target :
    aws_ssmincidents_response_plan__incident_template__notification_target
    list;
}
[@@deriving yojson_of]
(** aws_ssmincidents_response_plan__incident_template *)

type aws_ssmincidents_response_plan__integration__pagerduty = {
  name : string;  (** name *)
  secret_id : string;  (** secret_id *)
  service_id : string;  (** service_id *)
}
[@@deriving yojson_of]
(** aws_ssmincidents_response_plan__integration__pagerduty *)

type aws_ssmincidents_response_plan__integration = {
  pagerduty :
    aws_ssmincidents_response_plan__integration__pagerduty list;
}
[@@deriving yojson_of]
(** aws_ssmincidents_response_plan__integration *)

type aws_ssmincidents_response_plan = {
  chat_channel : string list option; [@option]  (** chat_channel *)
  display_name : string option; [@option]  (** display_name *)
  engagements : string list option; [@option]  (** engagements *)
  name : string;  (** name *)
  tags : (string * string) list option; [@option]  (** tags *)
  action : aws_ssmincidents_response_plan__action list;
  incident_template :
    aws_ssmincidents_response_plan__incident_template list;
  integration : aws_ssmincidents_response_plan__integration list;
}
[@@deriving yojson_of]
(** aws_ssmincidents_response_plan *)

let aws_ssmincidents_response_plan ?chat_channel ?display_name
    ?engagements ?tags ~name ~action ~incident_template ~integration
    __resource_id =
  let __resource_type = "aws_ssmincidents_response_plan" in
  let __resource =
    {
      chat_channel;
      display_name;
      engagements;
      name;
      tags;
      action;
      incident_template;
      integration;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_ssmincidents_response_plan __resource);
  ()
