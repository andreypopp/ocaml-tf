(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type action__response = {
  body : string prop;
  content_type : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : action__response) -> ()

let yojson_of_action__response =
  (function
   | { body = v_body; content_type = v_content_type } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_content_type in
         ("content_type", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_body in
         ("body", arg) :: bnds
       in
       `Assoc bnds
    : action__response -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_action__response

[@@@deriving.end]

type action = {
  mode : string prop;
  timeout : float prop option; [@option]
  response : action__response list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : action) -> ()

let yojson_of_action =
  (function
   | { mode = v_mode; timeout = v_timeout; response = v_response } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_action__response v_response
         in
         ("response", arg) :: bnds
       in
       let bnds =
         match v_timeout with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "timeout", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_mode in
         ("mode", arg) :: bnds
       in
       `Assoc bnds
    : action -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_action

[@@@deriving.end]

type correlate = { by : string prop option [@option] }
[@@deriving_inline yojson_of]

let _ = fun (_ : correlate) -> ()

let yojson_of_correlate =
  (function
   | { by = v_by } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_by with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "by", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : correlate -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_correlate

[@@@deriving.end]

type match__request = {
  methods : string prop list option; [@option]
  schemes : string prop list option; [@option]
  url_pattern : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : match__request) -> ()

let yojson_of_match__request =
  (function
   | {
       methods = v_methods;
       schemes = v_schemes;
       url_pattern = v_url_pattern;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_url_pattern with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "url_pattern", arg in
             bnd :: bnds
       in
       let bnds =
         match v_schemes with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "schemes", arg in
             bnd :: bnds
       in
       let bnds =
         match v_methods with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "methods", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : match__request -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_match__request

[@@@deriving.end]

type match__response = {
  headers : (string * string prop) list list option; [@option]
  origin_traffic : bool prop option; [@option]
  statuses : float prop list option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : match__response) -> ()

let yojson_of_match__response =
  (function
   | {
       headers = v_headers;
       origin_traffic = v_origin_traffic;
       statuses = v_statuses;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_statuses with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_float) v
             in
             let bnd = "statuses", arg in
             bnd :: bnds
       in
       let bnds =
         match v_origin_traffic with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "origin_traffic", arg in
             bnd :: bnds
       in
       let bnds =
         match v_headers with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list
                 (yojson_of_list (function v0, v1 ->
                      let v0 = yojson_of_string v0
                      and v1 = yojson_of_prop yojson_of_string v1 in
                      `List [ v0; v1 ]))
                 v
             in
             let bnd = "headers", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : match__response -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_match__response

[@@@deriving.end]

type match_ = {
  request : match__request list;
  response : match__response list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : match_) -> ()

let yojson_of_match_ =
  (function
   | { request = v_request; response = v_response } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_match__response v_response
         in
         ("response", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_match__request v_request
         in
         ("request", arg) :: bnds
       in
       `Assoc bnds
    : match_ -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_match_

[@@@deriving.end]

type cloudflare_rate_limit = {
  bypass_url_patterns : string prop list option; [@option]
  description : string prop option; [@option]
  disabled : bool prop option; [@option]
  id : string prop option; [@option]
  period : float prop;
  threshold : float prop;
  zone_id : string prop;
  action : action list;
  correlate : correlate list;
  match_ : match_ list; [@key "match"]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : cloudflare_rate_limit) -> ()

let yojson_of_cloudflare_rate_limit =
  (function
   | {
       bypass_url_patterns = v_bypass_url_patterns;
       description = v_description;
       disabled = v_disabled;
       id = v_id;
       period = v_period;
       threshold = v_threshold;
       zone_id = v_zone_id;
       action = v_action;
       correlate = v_correlate;
       match_ = v_match_;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_list yojson_of_match_ v_match_ in
         ("match", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_list yojson_of_correlate v_correlate in
         ("correlate", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_list yojson_of_action v_action in
         ("action", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_zone_id in
         ("zone_id", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_threshold in
         ("threshold", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_period in
         ("period", arg) :: bnds
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
         match v_disabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "disabled", arg in
             bnd :: bnds
       in
       let bnds =
         match v_description with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "description", arg in
             bnd :: bnds
       in
       let bnds =
         match v_bypass_url_patterns with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "bypass_url_patterns", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : cloudflare_rate_limit -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_cloudflare_rate_limit

[@@@deriving.end]

let action__response ~body ~content_type () : action__response =
  { body; content_type }

let action ?timeout ?(response = []) ~mode () : action =
  { mode; timeout; response }

let correlate ?by () : correlate = { by }

let match__request ?methods ?schemes ?url_pattern () : match__request
    =
  { methods; schemes; url_pattern }

let match__response ?headers ?origin_traffic ?statuses () :
    match__response =
  { headers; origin_traffic; statuses }

let match_ ?(request = []) ?(response = []) () : match_ =
  { request; response }

let cloudflare_rate_limit ?bypass_url_patterns ?description ?disabled
    ?id ?(correlate = []) ?(match_ = []) ~period ~threshold ~zone_id
    ~action () : cloudflare_rate_limit =
  {
    bypass_url_patterns;
    description;
    disabled;
    id;
    period;
    threshold;
    zone_id;
    action;
    correlate;
    match_;
  }

type t = {
  tf_name : string;
  bypass_url_patterns : string list prop;
  description : string prop;
  disabled : bool prop;
  id : string prop;
  period : float prop;
  threshold : float prop;
  zone_id : string prop;
}

let make ?bypass_url_patterns ?description ?disabled ?id
    ?(correlate = []) ?(match_ = []) ~period ~threshold ~zone_id
    ~action __id =
  let __type = "cloudflare_rate_limit" in
  let __attrs =
    ({
       tf_name = __id;
       bypass_url_patterns =
         Prop.computed __type __id "bypass_url_patterns";
       description = Prop.computed __type __id "description";
       disabled = Prop.computed __type __id "disabled";
       id = Prop.computed __type __id "id";
       period = Prop.computed __type __id "period";
       threshold = Prop.computed __type __id "threshold";
       zone_id = Prop.computed __type __id "zone_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_cloudflare_rate_limit
        (cloudflare_rate_limit ?bypass_url_patterns ?description
           ?disabled ?id ~correlate ~match_ ~period ~threshold
           ~zone_id ~action ());
    attrs = __attrs;
  }

let register ?tf_module ?bypass_url_patterns ?description ?disabled
    ?id ?(correlate = []) ?(match_ = []) ~period ~threshold ~zone_id
    ~action __id =
  let (r : _ Tf_core.resource) =
    make ?bypass_url_patterns ?description ?disabled ?id ~correlate
      ~match_ ~period ~threshold ~zone_id ~action __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
