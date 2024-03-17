(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_wafregional_web_acl__default_action = {
  type_ : string prop; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** aws_wafregional_web_acl__default_action *)

type aws_wafregional_web_acl__logging_configuration__redacted_fields__field_to_match = {
  data : string prop option; [@option]  (** data *)
  type_ : string prop; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** aws_wafregional_web_acl__logging_configuration__redacted_fields__field_to_match *)

type aws_wafregional_web_acl__logging_configuration__redacted_fields = {
  field_to_match :
    aws_wafregional_web_acl__logging_configuration__redacted_fields__field_to_match
    list;
}
[@@deriving yojson_of]
(** aws_wafregional_web_acl__logging_configuration__redacted_fields *)

type aws_wafregional_web_acl__logging_configuration = {
  log_destination : string prop;  (** log_destination *)
  redacted_fields :
    aws_wafregional_web_acl__logging_configuration__redacted_fields
    list;
}
[@@deriving yojson_of]
(** aws_wafregional_web_acl__logging_configuration *)

type aws_wafregional_web_acl__rule__action = {
  type_ : string prop; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** aws_wafregional_web_acl__rule__action *)

type aws_wafregional_web_acl__rule__override_action = {
  type_ : string prop; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** aws_wafregional_web_acl__rule__override_action *)

type aws_wafregional_web_acl__rule = {
  priority : float prop;  (** priority *)
  rule_id : string prop;  (** rule_id *)
  type_ : string prop option; [@option] [@key "type"]  (** type *)
  action : aws_wafregional_web_acl__rule__action list;
  override_action :
    aws_wafregional_web_acl__rule__override_action list;
}
[@@deriving yojson_of]
(** aws_wafregional_web_acl__rule *)

type aws_wafregional_web_acl = {
  id : string prop option; [@option]  (** id *)
  metric_name : string prop;  (** metric_name *)
  name : string prop;  (** name *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  default_action : aws_wafregional_web_acl__default_action list;
  logging_configuration :
    aws_wafregional_web_acl__logging_configuration list;
  rule : aws_wafregional_web_acl__rule list;
}
[@@deriving yojson_of]
(** aws_wafregional_web_acl *)

let aws_wafregional_web_acl ?id ?tags ?tags_all ~metric_name ~name
    ~default_action ~logging_configuration ~rule __resource_id =
  let __resource_type = "aws_wafregional_web_acl" in
  let __resource =
    {
      id;
      metric_name;
      name;
      tags;
      tags_all;
      default_action;
      logging_configuration;
      rule;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_wafregional_web_acl __resource);
  ()
