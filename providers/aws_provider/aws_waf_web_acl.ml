(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type aws_waf_web_acl__default_action = {
  type_ : string; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** aws_waf_web_acl__default_action *)

type aws_waf_web_acl__logging_configuration__redacted_fields__field_to_match = {
  data : string option; [@option]  (** data *)
  type_ : string; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** aws_waf_web_acl__logging_configuration__redacted_fields__field_to_match *)

type aws_waf_web_acl__logging_configuration__redacted_fields = {
  field_to_match :
    aws_waf_web_acl__logging_configuration__redacted_fields__field_to_match
    list;
}
[@@deriving yojson_of]
(** aws_waf_web_acl__logging_configuration__redacted_fields *)

type aws_waf_web_acl__logging_configuration = {
  log_destination : string;  (** log_destination *)
  redacted_fields :
    aws_waf_web_acl__logging_configuration__redacted_fields list;
}
[@@deriving yojson_of]
(** aws_waf_web_acl__logging_configuration *)

type aws_waf_web_acl__rules__action = {
  type_ : string; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** aws_waf_web_acl__rules__action *)

type aws_waf_web_acl__rules__override_action = {
  type_ : string; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** aws_waf_web_acl__rules__override_action *)

type aws_waf_web_acl__rules = {
  priority : float;  (** priority *)
  rule_id : string;  (** rule_id *)
  type_ : string option; [@option] [@key "type"]  (** type *)
  action : aws_waf_web_acl__rules__action list;
  override_action : aws_waf_web_acl__rules__override_action list;
}
[@@deriving yojson_of]
(** aws_waf_web_acl__rules *)

type aws_waf_web_acl = {
  metric_name : string;  (** metric_name *)
  name : string;  (** name *)
  tags : (string * string) list option; [@option]  (** tags *)
  default_action : aws_waf_web_acl__default_action list;
  logging_configuration :
    aws_waf_web_acl__logging_configuration list;
  rules : aws_waf_web_acl__rules list;
}
[@@deriving yojson_of]
(** aws_waf_web_acl *)

let aws_waf_web_acl ?tags ~metric_name ~name ~default_action
    ~logging_configuration ~rules __resource_id =
  let __resource_type = "aws_waf_web_acl" in
  let __resource =
    {
      metric_name;
      name;
      tags;
      default_action;
      logging_configuration;
      rules;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_waf_web_acl __resource);
  ()
