(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type logging_filter__filter__condition__action_condition = {
  action: string prop; 
} [@@deriving_inline yojson_of]
[@@@deriving.end]

type logging_filter__filter__condition__label_name_condition = {
  label_name: string prop; 
} [@@deriving_inline yojson_of]
[@@@deriving.end]

type logging_filter__filter__condition = {
  action_condition: logging_filter__filter__condition__action_condition list; [@default []] [@yojson_drop_default ( = )]
  label_name_condition: logging_filter__filter__condition__label_name_condition list; [@default []] [@yojson_drop_default ( = )]
} [@@deriving_inline yojson_of]
[@@@deriving.end]

type logging_filter__filter = {
  behavior: string prop; 
  requirement: string prop; 
  condition: logging_filter__filter__condition list; [@default []] [@yojson_drop_default ( = )]
} [@@deriving_inline yojson_of]
[@@@deriving.end]

type logging_filter = {
  default_behavior: string prop; 
  filter: logging_filter__filter list; [@default []] [@yojson_drop_default ( = )]
} [@@deriving_inline yojson_of]
[@@@deriving.end]

type redacted_fields__method = unit [@@deriving_inline yojson_of]
[@@@deriving.end]

type redacted_fields__query_string = unit [@@deriving_inline yojson_of]
[@@@deriving.end]

type redacted_fields__single_header = {
  name: string prop; 
} [@@deriving_inline yojson_of]
[@@@deriving.end]

type redacted_fields__uri_path = unit [@@deriving_inline yojson_of]
[@@@deriving.end]

type redacted_fields = {
  method_: redacted_fields__method list; [@key "method"] [@default []] [@yojson_drop_default ( = )]
  query_string: redacted_fields__query_string list; [@default []] [@yojson_drop_default ( = )]
  single_header: redacted_fields__single_header list; [@default []] [@yojson_drop_default ( = )]
  uri_path: redacted_fields__uri_path list; [@default []] [@yojson_drop_default ( = )]
} [@@deriving_inline yojson_of]
[@@@deriving.end]

type aws_wafv2_web_acl_logging_configuration = {
  id: string  prop option; [@option]
  log_destination_configs: string  prop list; [@default []] [@yojson_drop_default ( = )]
  resource_arn: string prop; 
  logging_filter: logging_filter list; [@default []] [@yojson_drop_default ( = )]
  redacted_fields: redacted_fields list; [@default []] [@yojson_drop_default ( = )]
} [@@deriving_inline yojson_of]
[@@@deriving.end]

let logging_filter__filter__condition__action_condition ~action () =
  ({
    action;
  } : logging_filter__filter__condition__action_condition);;

let logging_filter__filter__condition__label_name_condition ~label_name () =
  ({
    label_name;
  } : logging_filter__filter__condition__label_name_condition);;

let logging_filter__filter__condition ?(action_condition=[]) ?(label_name_condition=[]) () =
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

let redacted_fields ?(method_=[]) ?(query_string=[]) ?(single_header=[]) ?(uri_path=[]) () =
  ({
    method_;
    query_string;
    single_header;
    uri_path;
  } : redacted_fields);;

let aws_wafv2_web_acl_logging_configuration ?id ?(logging_filter=[]) ?(redacted_fields=[]) ~log_destination_configs ~resource_arn () =
  ({
    id;
    log_destination_configs;
    resource_arn;
    logging_filter;
    redacted_fields;
  } : aws_wafv2_web_acl_logging_configuration);;

type t = {
  tf_name: string;
  id: string prop;
  log_destination_configs: string list prop;
  resource_arn: string prop;
}

let make ?id ?(logging_filter=[]) ?(redacted_fields=[]) ~log_destination_configs ~resource_arn __id =
  let __type = "aws_wafv2_web_acl_logging_configuration" in
  let __attrs = ({
    tf_name = __id;
    id = Prop.computed __type __id "id";
    log_destination_configs = Prop.computed __type __id "log_destination_configs";
    resource_arn = Prop.computed __type __id "resource_arn";
  } : t) in
  {Tf_core.
    id=__id;
    type_=__type;
    json=yojson_of_aws_wafv2_web_acl_logging_configuration (aws_wafv2_web_acl_logging_configuration ?id ~logging_filter ~redacted_fields ~log_destination_configs ~resource_arn ());
    attrs=__attrs;
  };;

let register ?tf_module ?id ?(logging_filter=[]) ?(redacted_fields=[]) ~log_destination_configs ~resource_arn __id =
  let (r : _ Tf_core.resource) = make ?id ~logging_filter ~redacted_fields ~log_destination_configs ~resource_arn __id in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs;;

