(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type logging_filter__filter__condition__action_condition = {
  action: string prop;  (** action *)
} [@@deriving yojson_of]
(** logging_filter__filter__condition__action_condition *)

type logging_filter__filter__condition__label_name_condition = {
  label_name: string prop;  (** label_name *)
} [@@deriving yojson_of]
(** logging_filter__filter__condition__label_name_condition *)

type logging_filter__filter__condition = {
  action_condition: logging_filter__filter__condition__action_condition list;
  label_name_condition: logging_filter__filter__condition__label_name_condition list;
} [@@deriving yojson_of]
(** logging_filter__filter__condition *)

type logging_filter__filter = {
  behavior: string prop;  (** behavior *)
  requirement: string prop;  (** requirement *)
  condition: logging_filter__filter__condition list;
} [@@deriving yojson_of]
(** logging_filter__filter *)

type logging_filter = {
  default_behavior: string prop;  (** default_behavior *)
  filter: logging_filter__filter list;
} [@@deriving yojson_of]
(** logging_filter *)

type redacted_fields__method = unit [@@deriving yojson_of]

type redacted_fields__query_string = unit [@@deriving yojson_of]

type redacted_fields__single_header = {
  name: string prop;  (** name *)
} [@@deriving yojson_of]
(** redacted_fields__single_header *)

type redacted_fields__uri_path = unit [@@deriving yojson_of]

type redacted_fields = {
  method_: redacted_fields__method list;
  query_string: redacted_fields__query_string list;
  single_header: redacted_fields__single_header list;
  uri_path: redacted_fields__uri_path list;
} [@@deriving yojson_of]
(** Parts of the request to exclude from logs *)

type aws_wafv2_web_acl_logging_configuration = {
  id: string  prop option; [@option] (** id *)
  log_destination_configs: string  prop list;  (** AWS Kinesis Firehose Delivery Stream ARNs *)
  resource_arn: string prop;  (** AWS WebACL ARN *)
  logging_filter: logging_filter list;
  redacted_fields: redacted_fields list;
} [@@deriving yojson_of]
(** aws_wafv2_web_acl_logging_configuration *)

let logging_filter__filter__condition__action_condition ~action () =
  ({
    action;
  } : logging_filter__filter__condition__action_condition);;

let logging_filter__filter__condition__label_name_condition ~label_name () =
  ({
    label_name;
  } : logging_filter__filter__condition__label_name_condition);;

let logging_filter__filter__condition ~action_condition ~label_name_condition () =
  ({
    action_condition;
    label_name_condition;
  } : logging_filter__filter__condition);;

let logging_filter__filter ~behavior ~requirement ~condition () =
  ({
    behavior;
    requirement;
    condition;
  } : logging_filter__filter);;

let logging_filter ~default_behavior ~filter () =
  ({
    default_behavior;
    filter;
  } : logging_filter);;

let redacted_fields__method  () =
  ();;

let redacted_fields__query_string  () =
  ();;

let redacted_fields__single_header ~name () =
  ({
    name;
  } : redacted_fields__single_header);;

let redacted_fields__uri_path  () =
  ();;

let redacted_fields ~method_ ~query_string ~single_header ~uri_path () =
  ({
    method_;
    query_string;
    single_header;
    uri_path;
  } : redacted_fields);;

let aws_wafv2_web_acl_logging_configuration ?id ~log_destination_configs ~resource_arn ~logging_filter ~redacted_fields () =
  ({
    id;
    log_destination_configs;
    resource_arn;
    logging_filter;
    redacted_fields;
  } : aws_wafv2_web_acl_logging_configuration);;

type t = {
  id: string prop;
  log_destination_configs: string list prop;
  resource_arn: string prop;
}

let register ?tf_module ?id ~log_destination_configs ~resource_arn ~logging_filter ~redacted_fields __resource_id =
  let __resource_type = "aws_wafv2_web_acl_logging_configuration" in
  let __resource = aws_wafv2_web_acl_logging_configuration ?id ~log_destination_configs ~resource_arn ~logging_filter ~redacted_fields () in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_wafv2_web_acl_logging_configuration __resource);
  let __resource_attributes = ({
    id = Prop.computed __resource_type __resource_id "id";
    log_destination_configs = Prop.computed __resource_type __resource_id "log_destination_configs";
    resource_arn = Prop.computed __resource_type __resource_id "resource_arn";
  } : t) in
  __resource_attributes;;

