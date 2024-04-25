(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type filter = {
  id : string prop option; [@option]
  kind : string prop option; [@option]
  name : string prop option; [@option]
  phase : string prop option; [@option]
  version : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : filter) -> ()

let yojson_of_filter =
  (function
   | {
       id = v_id;
       kind = v_kind;
       name = v_name;
       phase = v_phase;
       version = v_version;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_version with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "version", arg in
             bnd :: bnds
       in
       let bnds =
         match v_phase with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "phase", arg in
             bnd :: bnds
       in
       let bnds =
         match v_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "name", arg in
             bnd :: bnds
       in
       let bnds =
         match v_kind with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "kind", arg in
             bnd :: bnds
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
    : filter -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_filter

[@@@deriving.end]

type rulesets__rules__ratelimit = {
  characteristics : string prop list;
  counting_expression : string prop;
  mitigation_timeout : float prop;
  period : float prop;
  requests_per_period : float prop;
  requests_to_origin : bool prop;
  score_per_period : float prop;
  score_response_header_name : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : rulesets__rules__ratelimit) -> ()

let yojson_of_rulesets__rules__ratelimit =
  (function
   | {
       characteristics = v_characteristics;
       counting_expression = v_counting_expression;
       mitigation_timeout = v_mitigation_timeout;
       period = v_period;
       requests_per_period = v_requests_per_period;
       requests_to_origin = v_requests_to_origin;
       score_per_period = v_score_per_period;
       score_response_header_name = v_score_response_header_name;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string
             v_score_response_header_name
         in
         ("score_response_header_name", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_float v_score_per_period
         in
         ("score_per_period", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_bool v_requests_to_origin
         in
         ("requests_to_origin", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_float v_requests_per_period
         in
         ("requests_per_period", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_period in
         ("period", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_float v_mitigation_timeout
         in
         ("mitigation_timeout", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_counting_expression
         in
         ("counting_expression", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             (yojson_of_prop yojson_of_string)
             v_characteristics
         in
         ("characteristics", arg) :: bnds
       in
       `Assoc bnds
    : rulesets__rules__ratelimit -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_rulesets__rules__ratelimit

[@@@deriving.end]

type rulesets__rules__logging = {
  enabled : bool prop;
  status : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : rulesets__rules__logging) -> ()

let yojson_of_rulesets__rules__logging =
  (function
   | { enabled = v_enabled; status = v_status } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_status in
         ("status", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_enabled in
         ("enabled", arg) :: bnds
       in
       `Assoc bnds
    : rulesets__rules__logging -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_rulesets__rules__logging

[@@@deriving.end]

type rulesets__rules__exposed_credential_check = {
  password_expression : string prop;
  username_expression : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : rulesets__rules__exposed_credential_check) -> ()

let yojson_of_rulesets__rules__exposed_credential_check =
  (function
   | {
       password_expression = v_password_expression;
       username_expression = v_username_expression;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_username_expression
         in
         ("username_expression", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_password_expression
         in
         ("password_expression", arg) :: bnds
       in
       `Assoc bnds
    : rulesets__rules__exposed_credential_check ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_rulesets__rules__exposed_credential_check

[@@@deriving.end]

type rulesets__rules__action_parameters__uri__query = {
  expression : string prop;
  value : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : rulesets__rules__action_parameters__uri__query) -> ()

let yojson_of_rulesets__rules__action_parameters__uri__query =
  (function
   | { expression = v_expression; value = v_value } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_value in
         ("value", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_expression in
         ("expression", arg) :: bnds
       in
       `Assoc bnds
    : rulesets__rules__action_parameters__uri__query ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_rulesets__rules__action_parameters__uri__query

[@@@deriving.end]

type rulesets__rules__action_parameters__uri__path = {
  expression : string prop;
  value : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : rulesets__rules__action_parameters__uri__path) -> ()

let yojson_of_rulesets__rules__action_parameters__uri__path =
  (function
   | { expression = v_expression; value = v_value } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_value in
         ("value", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_expression in
         ("expression", arg) :: bnds
       in
       `Assoc bnds
    : rulesets__rules__action_parameters__uri__path ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_rulesets__rules__action_parameters__uri__path

[@@@deriving.end]

type rulesets__rules__action_parameters__uri = {
  origin : bool prop;
  path : rulesets__rules__action_parameters__uri__path list;
  query : rulesets__rules__action_parameters__uri__query list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : rulesets__rules__action_parameters__uri) -> ()

let yojson_of_rulesets__rules__action_parameters__uri =
  (function
   | { origin = v_origin; path = v_path; query = v_query } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_rulesets__rules__action_parameters__uri__query
             v_query
         in
         ("query", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_rulesets__rules__action_parameters__uri__path
             v_path
         in
         ("path", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_origin in
         ("origin", arg) :: bnds
       in
       `Assoc bnds
    : rulesets__rules__action_parameters__uri ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_rulesets__rules__action_parameters__uri

[@@@deriving.end]

type rulesets__rules__action_parameters__sni = {
  value : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : rulesets__rules__action_parameters__sni) -> ()

let yojson_of_rulesets__rules__action_parameters__sni =
  (function
   | { value = v_value } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_value in
         ("value", arg) :: bnds
       in
       `Assoc bnds
    : rulesets__rules__action_parameters__sni ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_rulesets__rules__action_parameters__sni

[@@@deriving.end]

type rulesets__rules__action_parameters__serve_stale = {
  disable_stale_while_updating : bool prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : rulesets__rules__action_parameters__serve_stale) -> ()

let yojson_of_rulesets__rules__action_parameters__serve_stale =
  (function
   | {
       disable_stale_while_updating = v_disable_stale_while_updating;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_bool
             v_disable_stale_while_updating
         in
         ("disable_stale_while_updating", arg) :: bnds
       in
       `Assoc bnds
    : rulesets__rules__action_parameters__serve_stale ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_rulesets__rules__action_parameters__serve_stale

[@@@deriving.end]

type rulesets__rules__action_parameters__response = {
  content : string prop;
  content_type : string prop;
  status_code : float prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : rulesets__rules__action_parameters__response) -> ()

let yojson_of_rulesets__rules__action_parameters__response =
  (function
   | {
       content = v_content;
       content_type = v_content_type;
       status_code = v_status_code;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_status_code in
         ("status_code", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_content_type in
         ("content_type", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_content in
         ("content", arg) :: bnds
       in
       `Assoc bnds
    : rulesets__rules__action_parameters__response ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_rulesets__rules__action_parameters__response

[@@@deriving.end]

type rulesets__rules__action_parameters__overrides__rules = {
  action : string prop;
  enabled : bool prop;
  id : string prop;
  score_threshold : float prop;
  sensitivity_level : string prop;
  status : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : rulesets__rules__action_parameters__overrides__rules) -> ()

let yojson_of_rulesets__rules__action_parameters__overrides__rules =
  (function
   | {
       action = v_action;
       enabled = v_enabled;
       id = v_id;
       score_threshold = v_score_threshold;
       sensitivity_level = v_sensitivity_level;
       status = v_status;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_status in
         ("status", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_sensitivity_level
         in
         ("sensitivity_level", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_float v_score_threshold
         in
         ("score_threshold", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_id in
         ("id", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_enabled in
         ("enabled", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_action in
         ("action", arg) :: bnds
       in
       `Assoc bnds
    : rulesets__rules__action_parameters__overrides__rules ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_rulesets__rules__action_parameters__overrides__rules

[@@@deriving.end]

type rulesets__rules__action_parameters__overrides__categories = {
  action : string prop;
  category : string prop;
  enabled : bool prop;
  status : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : rulesets__rules__action_parameters__overrides__categories) ->
  ()

let yojson_of_rulesets__rules__action_parameters__overrides__categories
    =
  (function
   | {
       action = v_action;
       category = v_category;
       enabled = v_enabled;
       status = v_status;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_status in
         ("status", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_enabled in
         ("enabled", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_category in
         ("category", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_action in
         ("action", arg) :: bnds
       in
       `Assoc bnds
    : rulesets__rules__action_parameters__overrides__categories ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_rulesets__rules__action_parameters__overrides__categories

[@@@deriving.end]

type rulesets__rules__action_parameters__overrides = {
  action : string prop;
  categories :
    rulesets__rules__action_parameters__overrides__categories list;
  enabled : bool prop;
  rules : rulesets__rules__action_parameters__overrides__rules list;
  sensitivity_level : string prop;
  status : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : rulesets__rules__action_parameters__overrides) -> ()

let yojson_of_rulesets__rules__action_parameters__overrides =
  (function
   | {
       action = v_action;
       categories = v_categories;
       enabled = v_enabled;
       rules = v_rules;
       sensitivity_level = v_sensitivity_level;
       status = v_status;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_status in
         ("status", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_sensitivity_level
         in
         ("sensitivity_level", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_rulesets__rules__action_parameters__overrides__rules
             v_rules
         in
         ("rules", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_enabled in
         ("enabled", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_rulesets__rules__action_parameters__overrides__categories
             v_categories
         in
         ("categories", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_action in
         ("action", arg) :: bnds
       in
       `Assoc bnds
    : rulesets__rules__action_parameters__overrides ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_rulesets__rules__action_parameters__overrides

[@@@deriving.end]

type rulesets__rules__action_parameters__origin = {
  host : string prop;
  port : float prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : rulesets__rules__action_parameters__origin) -> ()

let yojson_of_rulesets__rules__action_parameters__origin =
  (function
   | { host = v_host; port = v_port } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_port in
         ("port", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_host in
         ("host", arg) :: bnds
       in
       `Assoc bnds
    : rulesets__rules__action_parameters__origin ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_rulesets__rules__action_parameters__origin

[@@@deriving.end]

type rulesets__rules__action_parameters__matched_data = {
  public_key : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : rulesets__rules__action_parameters__matched_data) -> ()

let yojson_of_rulesets__rules__action_parameters__matched_data =
  (function
   | { public_key = v_public_key } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_public_key in
         ("public_key", arg) :: bnds
       in
       `Assoc bnds
    : rulesets__rules__action_parameters__matched_data ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_rulesets__rules__action_parameters__matched_data

[@@@deriving.end]

type rulesets__rules__action_parameters__headers = {
  expression : string prop;
  name : string prop;
  operation : string prop;
  value : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : rulesets__rules__action_parameters__headers) -> ()

let yojson_of_rulesets__rules__action_parameters__headers =
  (function
   | {
       expression = v_expression;
       name = v_name;
       operation = v_operation;
       value = v_value;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_value in
         ("value", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_operation in
         ("operation", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_expression in
         ("expression", arg) :: bnds
       in
       `Assoc bnds
    : rulesets__rules__action_parameters__headers ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_rulesets__rules__action_parameters__headers

[@@@deriving.end]

type rulesets__rules__action_parameters__from_value__target_url = {
  expression : string prop;
  value : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : rulesets__rules__action_parameters__from_value__target_url) ->
  ()

let yojson_of_rulesets__rules__action_parameters__from_value__target_url
    =
  (function
   | { expression = v_expression; value = v_value } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_value in
         ("value", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_expression in
         ("expression", arg) :: bnds
       in
       `Assoc bnds
    : rulesets__rules__action_parameters__from_value__target_url ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_rulesets__rules__action_parameters__from_value__target_url

[@@@deriving.end]

type rulesets__rules__action_parameters__from_value = {
  preserve_query_string : bool prop;
  status_code : float prop;
  target_url :
    rulesets__rules__action_parameters__from_value__target_url list;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : rulesets__rules__action_parameters__from_value) -> ()

let yojson_of_rulesets__rules__action_parameters__from_value =
  (function
   | {
       preserve_query_string = v_preserve_query_string;
       status_code = v_status_code;
       target_url = v_target_url;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_rulesets__rules__action_parameters__from_value__target_url
             v_target_url
         in
         ("target_url", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_status_code in
         ("status_code", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_bool v_preserve_query_string
         in
         ("preserve_query_string", arg) :: bnds
       in
       `Assoc bnds
    : rulesets__rules__action_parameters__from_value ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_rulesets__rules__action_parameters__from_value

[@@@deriving.end]

type rulesets__rules__action_parameters__from_list = {
  key : string prop;
  name : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : rulesets__rules__action_parameters__from_list) -> ()

let yojson_of_rulesets__rules__action_parameters__from_list =
  (function
   | { key = v_key; name = v_name } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_key in
         ("key", arg) :: bnds
       in
       `Assoc bnds
    : rulesets__rules__action_parameters__from_list ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_rulesets__rules__action_parameters__from_list

[@@@deriving.end]

type rulesets__rules__action_parameters__edge_ttl__status_code_ttl__status_code_range = {
  from : float prop;
  to_ : float prop; [@key "to"]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       rulesets__rules__action_parameters__edge_ttl__status_code_ttl__status_code_range) ->
  ()

let yojson_of_rulesets__rules__action_parameters__edge_ttl__status_code_ttl__status_code_range
    =
  (function
   | { from = v_from; to_ = v_to_ } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_to_ in
         ("to", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_from in
         ("from", arg) :: bnds
       in
       `Assoc bnds
    : rulesets__rules__action_parameters__edge_ttl__status_code_ttl__status_code_range ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_rulesets__rules__action_parameters__edge_ttl__status_code_ttl__status_code_range

[@@@deriving.end]

type rulesets__rules__action_parameters__edge_ttl__status_code_ttl = {
  status_code : float prop;
  status_code_range :
    rulesets__rules__action_parameters__edge_ttl__status_code_ttl__status_code_range
    list;
  value : float prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       rulesets__rules__action_parameters__edge_ttl__status_code_ttl) ->
  ()

let yojson_of_rulesets__rules__action_parameters__edge_ttl__status_code_ttl
    =
  (function
   | {
       status_code = v_status_code;
       status_code_range = v_status_code_range;
       value = v_value;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_value in
         ("value", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_rulesets__rules__action_parameters__edge_ttl__status_code_ttl__status_code_range
             v_status_code_range
         in
         ("status_code_range", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_status_code in
         ("status_code", arg) :: bnds
       in
       `Assoc bnds
    : rulesets__rules__action_parameters__edge_ttl__status_code_ttl ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_rulesets__rules__action_parameters__edge_ttl__status_code_ttl

[@@@deriving.end]

type rulesets__rules__action_parameters__edge_ttl = {
  default : float prop;
  mode : string prop;
  status_code_ttl :
    rulesets__rules__action_parameters__edge_ttl__status_code_ttl
    list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : rulesets__rules__action_parameters__edge_ttl) -> ()

let yojson_of_rulesets__rules__action_parameters__edge_ttl =
  (function
   | {
       default = v_default;
       mode = v_mode;
       status_code_ttl = v_status_code_ttl;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_rulesets__rules__action_parameters__edge_ttl__status_code_ttl
             v_status_code_ttl
         in
         ("status_code_ttl", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_mode in
         ("mode", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_default in
         ("default", arg) :: bnds
       in
       `Assoc bnds
    : rulesets__rules__action_parameters__edge_ttl ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_rulesets__rules__action_parameters__edge_ttl

[@@@deriving.end]

type rulesets__rules__action_parameters__cache_key__custom_key__user = {
  device_type : bool prop;
  geo : bool prop;
  lang : bool prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       rulesets__rules__action_parameters__cache_key__custom_key__user) ->
  ()

let yojson_of_rulesets__rules__action_parameters__cache_key__custom_key__user
    =
  (function
   | { device_type = v_device_type; geo = v_geo; lang = v_lang } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_lang in
         ("lang", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_geo in
         ("geo", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_device_type in
         ("device_type", arg) :: bnds
       in
       `Assoc bnds
    : rulesets__rules__action_parameters__cache_key__custom_key__user ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_rulesets__rules__action_parameters__cache_key__custom_key__user

[@@@deriving.end]

type rulesets__rules__action_parameters__cache_key__custom_key__query_string = {
  exclude : string prop list;
  include_ : string prop list; [@key "include"]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       rulesets__rules__action_parameters__cache_key__custom_key__query_string) ->
  ()

let yojson_of_rulesets__rules__action_parameters__cache_key__custom_key__query_string
    =
  (function
   | { exclude = v_exclude; include_ = v_include_ } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             (yojson_of_prop yojson_of_string)
             v_include_
         in
         ("include", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list (yojson_of_prop yojson_of_string) v_exclude
         in
         ("exclude", arg) :: bnds
       in
       `Assoc bnds
    : rulesets__rules__action_parameters__cache_key__custom_key__query_string ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_rulesets__rules__action_parameters__cache_key__custom_key__query_string

[@@@deriving.end]

type rulesets__rules__action_parameters__cache_key__custom_key__host = {
  resolved : bool prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       rulesets__rules__action_parameters__cache_key__custom_key__host) ->
  ()

let yojson_of_rulesets__rules__action_parameters__cache_key__custom_key__host
    =
  (function
   | { resolved = v_resolved } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_resolved in
         ("resolved", arg) :: bnds
       in
       `Assoc bnds
    : rulesets__rules__action_parameters__cache_key__custom_key__host ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_rulesets__rules__action_parameters__cache_key__custom_key__host

[@@@deriving.end]

type rulesets__rules__action_parameters__cache_key__custom_key__header = {
  check_presence : string prop list;
  exclude_origin : bool prop;
  include_ : string prop list; [@key "include"]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       rulesets__rules__action_parameters__cache_key__custom_key__header) ->
  ()

let yojson_of_rulesets__rules__action_parameters__cache_key__custom_key__header
    =
  (function
   | {
       check_presence = v_check_presence;
       exclude_origin = v_exclude_origin;
       include_ = v_include_;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             (yojson_of_prop yojson_of_string)
             v_include_
         in
         ("include", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_exclude_origin in
         ("exclude_origin", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             (yojson_of_prop yojson_of_string)
             v_check_presence
         in
         ("check_presence", arg) :: bnds
       in
       `Assoc bnds
    : rulesets__rules__action_parameters__cache_key__custom_key__header ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_rulesets__rules__action_parameters__cache_key__custom_key__header

[@@@deriving.end]

type rulesets__rules__action_parameters__cache_key__custom_key__cookie = {
  check_presence : string prop list;
  include_ : string prop list; [@key "include"]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       rulesets__rules__action_parameters__cache_key__custom_key__cookie) ->
  ()

let yojson_of_rulesets__rules__action_parameters__cache_key__custom_key__cookie
    =
  (function
   | { check_presence = v_check_presence; include_ = v_include_ } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             (yojson_of_prop yojson_of_string)
             v_include_
         in
         ("include", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             (yojson_of_prop yojson_of_string)
             v_check_presence
         in
         ("check_presence", arg) :: bnds
       in
       `Assoc bnds
    : rulesets__rules__action_parameters__cache_key__custom_key__cookie ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_rulesets__rules__action_parameters__cache_key__custom_key__cookie

[@@@deriving.end]

type rulesets__rules__action_parameters__cache_key__custom_key = {
  cookie :
    rulesets__rules__action_parameters__cache_key__custom_key__cookie
    list;
  header :
    rulesets__rules__action_parameters__cache_key__custom_key__header
    list;
  host :
    rulesets__rules__action_parameters__cache_key__custom_key__host
    list;
  query_string :
    rulesets__rules__action_parameters__cache_key__custom_key__query_string
    list;
  user :
    rulesets__rules__action_parameters__cache_key__custom_key__user
    list;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : rulesets__rules__action_parameters__cache_key__custom_key) ->
  ()

let yojson_of_rulesets__rules__action_parameters__cache_key__custom_key
    =
  (function
   | {
       cookie = v_cookie;
       header = v_header;
       host = v_host;
       query_string = v_query_string;
       user = v_user;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_rulesets__rules__action_parameters__cache_key__custom_key__user
             v_user
         in
         ("user", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_rulesets__rules__action_parameters__cache_key__custom_key__query_string
             v_query_string
         in
         ("query_string", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_rulesets__rules__action_parameters__cache_key__custom_key__host
             v_host
         in
         ("host", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_rulesets__rules__action_parameters__cache_key__custom_key__header
             v_header
         in
         ("header", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_rulesets__rules__action_parameters__cache_key__custom_key__cookie
             v_cookie
         in
         ("cookie", arg) :: bnds
       in
       `Assoc bnds
    : rulesets__rules__action_parameters__cache_key__custom_key ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_rulesets__rules__action_parameters__cache_key__custom_key

[@@@deriving.end]

type rulesets__rules__action_parameters__cache_key = {
  cache_by_device_type : bool prop;
  cache_deception_armor : bool prop;
  custom_key :
    rulesets__rules__action_parameters__cache_key__custom_key list;
  ignore_query_strings_order : bool prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : rulesets__rules__action_parameters__cache_key) -> ()

let yojson_of_rulesets__rules__action_parameters__cache_key =
  (function
   | {
       cache_by_device_type = v_cache_by_device_type;
       cache_deception_armor = v_cache_deception_armor;
       custom_key = v_custom_key;
       ignore_query_strings_order = v_ignore_query_strings_order;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_bool v_ignore_query_strings_order
         in
         ("ignore_query_strings_order", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_rulesets__rules__action_parameters__cache_key__custom_key
             v_custom_key
         in
         ("custom_key", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_bool v_cache_deception_armor
         in
         ("cache_deception_armor", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_bool v_cache_by_device_type
         in
         ("cache_by_device_type", arg) :: bnds
       in
       `Assoc bnds
    : rulesets__rules__action_parameters__cache_key ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_rulesets__rules__action_parameters__cache_key

[@@@deriving.end]

type rulesets__rules__action_parameters__browser_ttl = {
  default : float prop;
  mode : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : rulesets__rules__action_parameters__browser_ttl) -> ()

let yojson_of_rulesets__rules__action_parameters__browser_ttl =
  (function
   | { default = v_default; mode = v_mode } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_mode in
         ("mode", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_default in
         ("default", arg) :: bnds
       in
       `Assoc bnds
    : rulesets__rules__action_parameters__browser_ttl ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_rulesets__rules__action_parameters__browser_ttl

[@@@deriving.end]

type rulesets__rules__action_parameters__autominify = {
  css : bool prop;
  html : bool prop;
  js : bool prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : rulesets__rules__action_parameters__autominify) -> ()

let yojson_of_rulesets__rules__action_parameters__autominify =
  (function
   | { css = v_css; html = v_html; js = v_js } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_js in
         ("js", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_html in
         ("html", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_css in
         ("css", arg) :: bnds
       in
       `Assoc bnds
    : rulesets__rules__action_parameters__autominify ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_rulesets__rules__action_parameters__autominify

[@@@deriving.end]

type rulesets__rules__action_parameters = {
  additional_cacheable_ports : float prop list;
  automatic_https_rewrites : bool prop;
  autominify : rulesets__rules__action_parameters__autominify list;
  bic : bool prop;
  browser_ttl : rulesets__rules__action_parameters__browser_ttl list;
  cache : bool prop;
  cache_key : rulesets__rules__action_parameters__cache_key list;
  content : string prop;
  content_type : string prop;
  cookie_fields : string prop list;
  disable_apps : bool prop;
  disable_railgun : bool prop;
  disable_zaraz : bool prop;
  edge_ttl : rulesets__rules__action_parameters__edge_ttl list;
  email_obfuscation : bool prop;
  from_list : rulesets__rules__action_parameters__from_list list;
  from_value : rulesets__rules__action_parameters__from_value list;
  headers : rulesets__rules__action_parameters__headers list;
  host_header : string prop;
  hotlink_protection : bool prop;
  id : string prop;
  increment : float prop;
  matched_data :
    rulesets__rules__action_parameters__matched_data list;
  mirage : bool prop;
  opportunistic_encryption : bool prop;
  origin : rulesets__rules__action_parameters__origin list;
  origin_cache_control : bool prop;
  origin_error_page_passthru : bool prop;
  overrides : rulesets__rules__action_parameters__overrides list;
  phases : string prop list;
  polish : string prop;
  products : string prop list;
  read_timeout : float prop;
  request_fields : string prop list;
  respect_strong_etags : bool prop;
  response : rulesets__rules__action_parameters__response list;
  response_fields : string prop list;
  rocket_loader : bool prop;
  rules : (string * string prop) list;
  ruleset : string prop;
  rulesets : string prop list;
  security_level : string prop;
  serve_stale : rulesets__rules__action_parameters__serve_stale list;
  server_side_excludes : bool prop;
  sni : rulesets__rules__action_parameters__sni list;
  ssl : string prop;
  status_code : float prop;
  sxg : bool prop;
  uri : rulesets__rules__action_parameters__uri list;
  version : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : rulesets__rules__action_parameters) -> ()

let yojson_of_rulesets__rules__action_parameters =
  (function
   | {
       additional_cacheable_ports = v_additional_cacheable_ports;
       automatic_https_rewrites = v_automatic_https_rewrites;
       autominify = v_autominify;
       bic = v_bic;
       browser_ttl = v_browser_ttl;
       cache = v_cache;
       cache_key = v_cache_key;
       content = v_content;
       content_type = v_content_type;
       cookie_fields = v_cookie_fields;
       disable_apps = v_disable_apps;
       disable_railgun = v_disable_railgun;
       disable_zaraz = v_disable_zaraz;
       edge_ttl = v_edge_ttl;
       email_obfuscation = v_email_obfuscation;
       from_list = v_from_list;
       from_value = v_from_value;
       headers = v_headers;
       host_header = v_host_header;
       hotlink_protection = v_hotlink_protection;
       id = v_id;
       increment = v_increment;
       matched_data = v_matched_data;
       mirage = v_mirage;
       opportunistic_encryption = v_opportunistic_encryption;
       origin = v_origin;
       origin_cache_control = v_origin_cache_control;
       origin_error_page_passthru = v_origin_error_page_passthru;
       overrides = v_overrides;
       phases = v_phases;
       polish = v_polish;
       products = v_products;
       read_timeout = v_read_timeout;
       request_fields = v_request_fields;
       respect_strong_etags = v_respect_strong_etags;
       response = v_response;
       response_fields = v_response_fields;
       rocket_loader = v_rocket_loader;
       rules = v_rules;
       ruleset = v_ruleset;
       rulesets = v_rulesets;
       security_level = v_security_level;
       serve_stale = v_serve_stale;
       server_side_excludes = v_server_side_excludes;
       sni = v_sni;
       ssl = v_ssl;
       status_code = v_status_code;
       sxg = v_sxg;
       uri = v_uri;
       version = v_version;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_version in
         ("version", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_rulesets__rules__action_parameters__uri v_uri
         in
         ("uri", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_sxg in
         ("sxg", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_status_code in
         ("status_code", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_ssl in
         ("ssl", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_rulesets__rules__action_parameters__sni v_sni
         in
         ("sni", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_bool v_server_side_excludes
         in
         ("server_side_excludes", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_rulesets__rules__action_parameters__serve_stale
             v_serve_stale
         in
         ("serve_stale", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_security_level
         in
         ("security_level", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             (yojson_of_prop yojson_of_string)
             v_rulesets
         in
         ("rulesets", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_ruleset in
         ("ruleset", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             (function
               | v0, v1 ->
                   let v0 = yojson_of_string v0
                   and v1 = yojson_of_prop yojson_of_string v1 in
                   `List [ v0; v1 ])
             v_rules
         in
         ("rules", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_rocket_loader in
         ("rocket_loader", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             (yojson_of_prop yojson_of_string)
             v_response_fields
         in
         ("response_fields", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_rulesets__rules__action_parameters__response
             v_response
         in
         ("response", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_bool v_respect_strong_etags
         in
         ("respect_strong_etags", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             (yojson_of_prop yojson_of_string)
             v_request_fields
         in
         ("request_fields", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_read_timeout in
         ("read_timeout", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             (yojson_of_prop yojson_of_string)
             v_products
         in
         ("products", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_polish in
         ("polish", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list (yojson_of_prop yojson_of_string) v_phases
         in
         ("phases", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_rulesets__rules__action_parameters__overrides
             v_overrides
         in
         ("overrides", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_bool v_origin_error_page_passthru
         in
         ("origin_error_page_passthru", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_bool v_origin_cache_control
         in
         ("origin_cache_control", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_rulesets__rules__action_parameters__origin
             v_origin
         in
         ("origin", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_bool v_opportunistic_encryption
         in
         ("opportunistic_encryption", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_mirage in
         ("mirage", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_rulesets__rules__action_parameters__matched_data
             v_matched_data
         in
         ("matched_data", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_increment in
         ("increment", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_id in
         ("id", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_bool v_hotlink_protection
         in
         ("hotlink_protection", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_host_header in
         ("host_header", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_rulesets__rules__action_parameters__headers
             v_headers
         in
         ("headers", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_rulesets__rules__action_parameters__from_value
             v_from_value
         in
         ("from_value", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_rulesets__rules__action_parameters__from_list
             v_from_list
         in
         ("from_list", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_bool v_email_obfuscation
         in
         ("email_obfuscation", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_rulesets__rules__action_parameters__edge_ttl
             v_edge_ttl
         in
         ("edge_ttl", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_disable_zaraz in
         ("disable_zaraz", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_disable_railgun in
         ("disable_railgun", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_disable_apps in
         ("disable_apps", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             (yojson_of_prop yojson_of_string)
             v_cookie_fields
         in
         ("cookie_fields", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_content_type in
         ("content_type", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_content in
         ("content", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_rulesets__rules__action_parameters__cache_key
             v_cache_key
         in
         ("cache_key", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_cache in
         ("cache", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_rulesets__rules__action_parameters__browser_ttl
             v_browser_ttl
         in
         ("browser_ttl", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_bic in
         ("bic", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_rulesets__rules__action_parameters__autominify
             v_autominify
         in
         ("autominify", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_bool v_automatic_https_rewrites
         in
         ("automatic_https_rewrites", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             (yojson_of_prop yojson_of_float)
             v_additional_cacheable_ports
         in
         ("additional_cacheable_ports", arg) :: bnds
       in
       `Assoc bnds
    : rulesets__rules__action_parameters ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_rulesets__rules__action_parameters

[@@@deriving.end]

type rulesets__rules = {
  action : string prop;
  action_parameters : rulesets__rules__action_parameters list;
  description : string prop;
  enabled : bool prop;
  exposed_credential_check :
    rulesets__rules__exposed_credential_check list;
  expression : string prop;
  id : string prop;
  last_updated : string prop;
  logging : rulesets__rules__logging list;
  ratelimit : rulesets__rules__ratelimit list;
  ref : string prop;
  version : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : rulesets__rules) -> ()

let yojson_of_rulesets__rules =
  (function
   | {
       action = v_action;
       action_parameters = v_action_parameters;
       description = v_description;
       enabled = v_enabled;
       exposed_credential_check = v_exposed_credential_check;
       expression = v_expression;
       id = v_id;
       last_updated = v_last_updated;
       logging = v_logging;
       ratelimit = v_ratelimit;
       ref = v_ref;
       version = v_version;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_version in
         ("version", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_ref in
         ("ref", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_rulesets__rules__ratelimit
             v_ratelimit
         in
         ("ratelimit", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_rulesets__rules__logging
             v_logging
         in
         ("logging", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_last_updated in
         ("last_updated", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_id in
         ("id", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_expression in
         ("expression", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_rulesets__rules__exposed_credential_check
             v_exposed_credential_check
         in
         ("exposed_credential_check", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_enabled in
         ("enabled", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_description in
         ("description", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_rulesets__rules__action_parameters
             v_action_parameters
         in
         ("action_parameters", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_action in
         ("action", arg) :: bnds
       in
       `Assoc bnds
    : rulesets__rules -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_rulesets__rules

[@@@deriving.end]

type rulesets = {
  description : string prop;
  id : string prop;
  kind : string prop;
  name : string prop;
  phase : string prop;
  rules : rulesets__rules list;
  version : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : rulesets) -> ()

let yojson_of_rulesets =
  (function
   | {
       description = v_description;
       id = v_id;
       kind = v_kind;
       name = v_name;
       phase = v_phase;
       rules = v_rules;
       version = v_version;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_version in
         ("version", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_rulesets__rules v_rules
         in
         ("rules", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_phase in
         ("phase", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_kind in
         ("kind", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_id in
         ("id", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_description in
         ("description", arg) :: bnds
       in
       `Assoc bnds
    : rulesets -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_rulesets

[@@@deriving.end]

type cloudflare_rulesets = {
  account_id : string prop option; [@option]
  id : string prop option; [@option]
  include_rules : bool prop option; [@option]
  zone_id : string prop option; [@option]
  filter : filter list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : cloudflare_rulesets) -> ()

let yojson_of_cloudflare_rulesets =
  (function
   | {
       account_id = v_account_id;
       id = v_id;
       include_rules = v_include_rules;
       zone_id = v_zone_id;
       filter = v_filter;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_list yojson_of_filter v_filter in
         ("filter", arg) :: bnds
       in
       let bnds =
         match v_zone_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "zone_id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_include_rules with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "include_rules", arg in
             bnd :: bnds
       in
       let bnds =
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_account_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "account_id", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : cloudflare_rulesets -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_cloudflare_rulesets

[@@@deriving.end]

let filter ?id ?kind ?name ?phase ?version () : filter =
  { id; kind; name; phase; version }

let cloudflare_rulesets ?account_id ?id ?include_rules ?zone_id
    ?(filter = []) () : cloudflare_rulesets =
  { account_id; id; include_rules; zone_id; filter }

type t = {
  account_id : string prop;
  id : string prop;
  include_rules : bool prop;
  rulesets : rulesets list prop;
  zone_id : string prop;
}

let make ?account_id ?id ?include_rules ?zone_id ?(filter = []) __id
    =
  let __type = "cloudflare_rulesets" in
  let __attrs =
    ({
       account_id = Prop.computed __type __id "account_id";
       id = Prop.computed __type __id "id";
       include_rules = Prop.computed __type __id "include_rules";
       rulesets = Prop.computed __type __id "rulesets";
       zone_id = Prop.computed __type __id "zone_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_cloudflare_rulesets
        (cloudflare_rulesets ?account_id ?id ?include_rules ?zone_id
           ~filter ());
    attrs = __attrs;
  }

let register ?tf_module ?account_id ?id ?include_rules ?zone_id
    ?(filter = []) __id =
  let (r : _ Tf_core.resource) =
    make ?account_id ?id ?include_rules ?zone_id ~filter __id
  in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
