(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_waf_web_acl__default_action = {
  type_ : string prop; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** aws_waf_web_acl__default_action *)

type aws_waf_web_acl__logging_configuration__redacted_fields__field_to_match = {
  data : string prop option; [@option]  (** data *)
  type_ : string prop; [@key "type"]  (** type *)
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
  log_destination : string prop;  (** log_destination *)
  redacted_fields :
    aws_waf_web_acl__logging_configuration__redacted_fields list;
}
[@@deriving yojson_of]
(** aws_waf_web_acl__logging_configuration *)

type aws_waf_web_acl__rules__action = {
  type_ : string prop; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** aws_waf_web_acl__rules__action *)

type aws_waf_web_acl__rules__override_action = {
  type_ : string prop; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** aws_waf_web_acl__rules__override_action *)

type aws_waf_web_acl__rules = {
  priority : float prop;  (** priority *)
  rule_id : string prop;  (** rule_id *)
  type_ : string prop option; [@option] [@key "type"]  (** type *)
  action : aws_waf_web_acl__rules__action list;
  override_action : aws_waf_web_acl__rules__override_action list;
}
[@@deriving yojson_of]
(** aws_waf_web_acl__rules *)

type aws_waf_web_acl = {
  id : string prop option; [@option]  (** id *)
  metric_name : string prop;  (** metric_name *)
  name : string prop;  (** name *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  default_action : aws_waf_web_acl__default_action list;
  logging_configuration :
    aws_waf_web_acl__logging_configuration list;
  rules : aws_waf_web_acl__rules list;
}
[@@deriving yojson_of]
(** aws_waf_web_acl *)

type t = {
  arn : string prop;
  id : string prop;
  metric_name : string prop;
  name : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

let aws_waf_web_acl ?id ?tags ?tags_all ~metric_name ~name
    ~default_action ~logging_configuration ~rules __resource_id =
  let __resource_type = "aws_waf_web_acl" in
  let __resource =
    ({
       id;
       metric_name;
       name;
       tags;
       tags_all;
       default_action;
       logging_configuration;
       rules;
     }
      : aws_waf_web_acl)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_waf_web_acl __resource);
  let __resource_attributes =
    ({
       arn = Prop.computed __resource_type __resource_id "arn";
       id = Prop.computed __resource_type __resource_id "id";
       metric_name =
         Prop.computed __resource_type __resource_id "metric_name";
       name = Prop.computed __resource_type __resource_id "name";
       tags = Prop.computed __resource_type __resource_id "tags";
       tags_all =
         Prop.computed __resource_type __resource_id "tags_all";
     }
      : t)
  in
  __resource_attributes
