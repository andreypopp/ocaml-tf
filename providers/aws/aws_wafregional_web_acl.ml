(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type default_action = {
  type_ : string prop; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** default_action *)

type logging_configuration__redacted_fields__field_to_match = {
  data : string prop option; [@option]  (** data *)
  type_ : string prop; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** logging_configuration__redacted_fields__field_to_match *)

type logging_configuration__redacted_fields = {
  field_to_match :
    logging_configuration__redacted_fields__field_to_match list;
}
[@@deriving yojson_of]
(** logging_configuration__redacted_fields *)

type logging_configuration = {
  log_destination : string prop;  (** log_destination *)
  redacted_fields : logging_configuration__redacted_fields list;
}
[@@deriving yojson_of]
(** logging_configuration *)

type rule__action = {
  type_ : string prop; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** rule__action *)

type rule__override_action = {
  type_ : string prop; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** rule__override_action *)

type rule = {
  priority : float prop;  (** priority *)
  rule_id : string prop;  (** rule_id *)
  type_ : string prop option; [@option] [@key "type"]  (** type *)
  action : rule__action list;
  override_action : rule__override_action list;
}
[@@deriving yojson_of]
(** rule *)

type aws_wafregional_web_acl = {
  id : string prop option; [@option]  (** id *)
  metric_name : string prop;  (** metric_name *)
  name : string prop;  (** name *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  default_action : default_action list;
  logging_configuration : logging_configuration list;
  rule : rule list;
}
[@@deriving yojson_of]
(** aws_wafregional_web_acl *)

let default_action ~type_ () : default_action = { type_ }

let logging_configuration__redacted_fields__field_to_match ?data
    ~type_ () :
    logging_configuration__redacted_fields__field_to_match =
  { data; type_ }

let logging_configuration__redacted_fields ~field_to_match () :
    logging_configuration__redacted_fields =
  { field_to_match }

let logging_configuration ~log_destination ~redacted_fields () :
    logging_configuration =
  { log_destination; redacted_fields }

let rule__action ~type_ () : rule__action = { type_ }

let rule__override_action ~type_ () : rule__override_action =
  { type_ }

let rule ?type_ ~priority ~rule_id ~action ~override_action () : rule
    =
  { priority; rule_id; type_; action; override_action }

let aws_wafregional_web_acl ?id ?tags ?tags_all ~metric_name ~name
    ~default_action ~logging_configuration ~rule () :
    aws_wafregional_web_acl =
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

type t = {
  arn : string prop;
  id : string prop;
  metric_name : string prop;
  name : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

let register ?tf_module ?id ?tags ?tags_all ~metric_name ~name
    ~default_action ~logging_configuration ~rule __resource_id =
  let __resource_type = "aws_wafregional_web_acl" in
  let __resource =
    aws_wafregional_web_acl ?id ?tags ?tags_all ~metric_name ~name
      ~default_action ~logging_configuration ~rule ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_wafregional_web_acl __resource);
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
