(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type default_action = { type_ : string prop [@key "type"] }
[@@deriving_inline yojson_of]

let _ = fun (_ : default_action) -> ()

let yojson_of_default_action =
  (function
   | { type_ = v_type_ } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_type_ in
         ("type", arg) :: bnds
       in
       `Assoc bnds
    : default_action -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_default_action

[@@@deriving.end]

type logging_configuration__redacted_fields__field_to_match = {
  data : string prop option; [@option]
  type_ : string prop; [@key "type"]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : logging_configuration__redacted_fields__field_to_match) ->
  ()

let yojson_of_logging_configuration__redacted_fields__field_to_match
    =
  (function
   | { data = v_data; type_ = v_type_ } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_type_ in
         ("type", arg) :: bnds
       in
       let bnds =
         match v_data with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "data", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : logging_configuration__redacted_fields__field_to_match ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_logging_configuration__redacted_fields__field_to_match

[@@@deriving.end]

type logging_configuration__redacted_fields = {
  field_to_match :
    logging_configuration__redacted_fields__field_to_match list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : logging_configuration__redacted_fields) -> ()

let yojson_of_logging_configuration__redacted_fields =
  (function
   | { field_to_match = v_field_to_match } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_logging_configuration__redacted_fields__field_to_match
             v_field_to_match
         in
         ("field_to_match", arg) :: bnds
       in
       `Assoc bnds
    : logging_configuration__redacted_fields ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_logging_configuration__redacted_fields

[@@@deriving.end]

type logging_configuration = {
  log_destination : string prop;
  redacted_fields : logging_configuration__redacted_fields list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : logging_configuration) -> ()

let yojson_of_logging_configuration =
  (function
   | {
       log_destination = v_log_destination;
       redacted_fields = v_redacted_fields;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_logging_configuration__redacted_fields
             v_redacted_fields
         in
         ("redacted_fields", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_log_destination
         in
         ("log_destination", arg) :: bnds
       in
       `Assoc bnds
    : logging_configuration -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_logging_configuration

[@@@deriving.end]

type rules__action = { type_ : string prop [@key "type"] }
[@@deriving_inline yojson_of]

let _ = fun (_ : rules__action) -> ()

let yojson_of_rules__action =
  (function
   | { type_ = v_type_ } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_type_ in
         ("type", arg) :: bnds
       in
       `Assoc bnds
    : rules__action -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_rules__action

[@@@deriving.end]

type rules__override_action = { type_ : string prop [@key "type"] }
[@@deriving_inline yojson_of]

let _ = fun (_ : rules__override_action) -> ()

let yojson_of_rules__override_action =
  (function
   | { type_ = v_type_ } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_type_ in
         ("type", arg) :: bnds
       in
       `Assoc bnds
    : rules__override_action -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_rules__override_action

[@@@deriving.end]

type rules = {
  priority : float prop;
  rule_id : string prop;
  type_ : string prop option; [@option] [@key "type"]
  action : rules__action list;
  override_action : rules__override_action list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : rules) -> ()

let yojson_of_rules =
  (function
   | {
       priority = v_priority;
       rule_id = v_rule_id;
       type_ = v_type_;
       action = v_action;
       override_action = v_override_action;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_rules__override_action
             v_override_action
         in
         ("override_action", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_list yojson_of_rules__action v_action in
         ("action", arg) :: bnds
       in
       let bnds =
         match v_type_ with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "type", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_rule_id in
         ("rule_id", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_priority in
         ("priority", arg) :: bnds
       in
       `Assoc bnds
    : rules -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_rules

[@@@deriving.end]

type aws_waf_web_acl = {
  id : string prop option; [@option]
  metric_name : string prop;
  name : string prop;
  tags : (string * string prop) list option; [@option]
  tags_all : (string * string prop) list option; [@option]
  default_action : default_action list;
  logging_configuration : logging_configuration list;
  rules : rules list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_waf_web_acl) -> ()

let yojson_of_aws_waf_web_acl =
  (function
   | {
       id = v_id;
       metric_name = v_metric_name;
       name = v_name;
       tags = v_tags;
       tags_all = v_tags_all;
       default_action = v_default_action;
       logging_configuration = v_logging_configuration;
       rules = v_rules;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_list yojson_of_rules v_rules in
         ("rules", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_logging_configuration
             v_logging_configuration
         in
         ("logging_configuration", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_default_action v_default_action
         in
         ("default_action", arg) :: bnds
       in
       let bnds =
         match v_tags_all with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list
                 (function
                   | v0, v1 ->
                       let v0 = yojson_of_string v0
                       and v1 = yojson_of_prop yojson_of_string v1 in
                       `List [ v0; v1 ])
                 v
             in
             let bnd = "tags_all", arg in
             bnd :: bnds
       in
       let bnds =
         match v_tags with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list
                 (function
                   | v0, v1 ->
                       let v0 = yojson_of_string v0
                       and v1 = yojson_of_prop yojson_of_string v1 in
                       `List [ v0; v1 ])
                 v
             in
             let bnd = "tags", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_metric_name in
         ("metric_name", arg) :: bnds
       in
       let bnds =
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : aws_waf_web_acl -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_waf_web_acl

[@@@deriving.end]

let default_action ~type_ () : default_action = { type_ }

let logging_configuration__redacted_fields__field_to_match ?data
    ~type_ () :
    logging_configuration__redacted_fields__field_to_match =
  { data; type_ }

let logging_configuration__redacted_fields ~field_to_match () :
    logging_configuration__redacted_fields =
  { field_to_match }

let logging_configuration ?(redacted_fields = []) ~log_destination ()
    : logging_configuration =
  { log_destination; redacted_fields }

let rules__action ~type_ () : rules__action = { type_ }

let rules__override_action ~type_ () : rules__override_action =
  { type_ }

let rules ?type_ ?(action = []) ?(override_action = []) ~priority
    ~rule_id () : rules =
  { priority; rule_id; type_; action; override_action }

let aws_waf_web_acl ?id ?tags ?tags_all ?(logging_configuration = [])
    ~metric_name ~name ~default_action ~rules () : aws_waf_web_acl =
  {
    id;
    metric_name;
    name;
    tags;
    tags_all;
    default_action;
    logging_configuration;
    rules;
  }

type t = {
  tf_name : string;
  arn : string prop;
  id : string prop;
  metric_name : string prop;
  name : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

let make ?id ?tags ?tags_all ?(logging_configuration = [])
    ~metric_name ~name ~default_action ~rules __id =
  let __type = "aws_waf_web_acl" in
  let __attrs =
    ({
       tf_name = __id;
       arn = Prop.computed __type __id "arn";
       id = Prop.computed __type __id "id";
       metric_name = Prop.computed __type __id "metric_name";
       name = Prop.computed __type __id "name";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_waf_web_acl
        (aws_waf_web_acl ?id ?tags ?tags_all ~logging_configuration
           ~metric_name ~name ~default_action ~rules ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?tags ?tags_all
    ?(logging_configuration = []) ~metric_name ~name ~default_action
    ~rules __id =
  let (r : _ Tf_core.resource) =
    make ?id ?tags ?tags_all ~logging_configuration ~metric_name
      ~name ~default_action ~rules __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
