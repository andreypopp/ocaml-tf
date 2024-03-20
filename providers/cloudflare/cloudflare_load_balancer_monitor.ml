(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type header = { header : string prop; values : string prop list }
[@@deriving_inline yojson_of]

let _ = fun (_ : header) -> ()

let yojson_of_header =
  (function
   | { header = v_header; values = v_values } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list (yojson_of_prop yojson_of_string) v_values
         in
         ("values", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_header in
         ("header", arg) :: bnds
       in
       `Assoc bnds
    : header -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_header

[@@@deriving.end]

type cloudflare_load_balancer_monitor = {
  account_id : string prop;
  allow_insecure : bool prop option; [@option]
  consecutive_down : float prop option; [@option]
  consecutive_up : float prop option; [@option]
  description : string prop option; [@option]
  expected_body : string prop option; [@option]
  expected_codes : string prop option; [@option]
  follow_redirects : bool prop option; [@option]
  id : string prop option; [@option]
  interval : float prop option; [@option]
  method_ : string prop option; [@option] [@key "method"]
  path : string prop option; [@option]
  port : float prop option; [@option]
  probe_zone : string prop option; [@option]
  retries : float prop option; [@option]
  timeout : float prop option; [@option]
  type_ : string prop option; [@option] [@key "type"]
  header : header list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : cloudflare_load_balancer_monitor) -> ()

let yojson_of_cloudflare_load_balancer_monitor =
  (function
   | {
       account_id = v_account_id;
       allow_insecure = v_allow_insecure;
       consecutive_down = v_consecutive_down;
       consecutive_up = v_consecutive_up;
       description = v_description;
       expected_body = v_expected_body;
       expected_codes = v_expected_codes;
       follow_redirects = v_follow_redirects;
       id = v_id;
       interval = v_interval;
       method_ = v_method_;
       path = v_path;
       port = v_port;
       probe_zone = v_probe_zone;
       retries = v_retries;
       timeout = v_timeout;
       type_ = v_type_;
       header = v_header;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_list yojson_of_header v_header in
         ("header", arg) :: bnds
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
         match v_timeout with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "timeout", arg in
             bnd :: bnds
       in
       let bnds =
         match v_retries with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "retries", arg in
             bnd :: bnds
       in
       let bnds =
         match v_probe_zone with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "probe_zone", arg in
             bnd :: bnds
       in
       let bnds =
         match v_port with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "port", arg in
             bnd :: bnds
       in
       let bnds =
         match v_path with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "path", arg in
             bnd :: bnds
       in
       let bnds =
         match v_method_ with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "method", arg in
             bnd :: bnds
       in
       let bnds =
         match v_interval with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "interval", arg in
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
         match v_follow_redirects with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "follow_redirects", arg in
             bnd :: bnds
       in
       let bnds =
         match v_expected_codes with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "expected_codes", arg in
             bnd :: bnds
       in
       let bnds =
         match v_expected_body with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "expected_body", arg in
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
         match v_consecutive_up with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "consecutive_up", arg in
             bnd :: bnds
       in
       let bnds =
         match v_consecutive_down with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "consecutive_down", arg in
             bnd :: bnds
       in
       let bnds =
         match v_allow_insecure with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "allow_insecure", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_account_id in
         ("account_id", arg) :: bnds
       in
       `Assoc bnds
    : cloudflare_load_balancer_monitor ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_cloudflare_load_balancer_monitor

[@@@deriving.end]

let header ~header ~values () : header = { header; values }

let cloudflare_load_balancer_monitor ?allow_insecure
    ?consecutive_down ?consecutive_up ?description ?expected_body
    ?expected_codes ?follow_redirects ?id ?interval ?method_ ?path
    ?port ?probe_zone ?retries ?timeout ?type_ ~account_id ~header ()
    : cloudflare_load_balancer_monitor =
  {
    account_id;
    allow_insecure;
    consecutive_down;
    consecutive_up;
    description;
    expected_body;
    expected_codes;
    follow_redirects;
    id;
    interval;
    method_;
    path;
    port;
    probe_zone;
    retries;
    timeout;
    type_;
    header;
  }

type t = {
  account_id : string prop;
  allow_insecure : bool prop;
  consecutive_down : float prop;
  consecutive_up : float prop;
  created_on : string prop;
  description : string prop;
  expected_body : string prop;
  expected_codes : string prop;
  follow_redirects : bool prop;
  id : string prop;
  interval : float prop;
  method_ : string prop;
  modified_on : string prop;
  path : string prop;
  port : float prop;
  probe_zone : string prop;
  retries : float prop;
  timeout : float prop;
  type_ : string prop;
}

let make ?allow_insecure ?consecutive_down ?consecutive_up
    ?description ?expected_body ?expected_codes ?follow_redirects ?id
    ?interval ?method_ ?path ?port ?probe_zone ?retries ?timeout
    ?type_ ~account_id ~header __id =
  let __type = "cloudflare_load_balancer_monitor" in
  let __attrs =
    ({
       account_id = Prop.computed __type __id "account_id";
       allow_insecure = Prop.computed __type __id "allow_insecure";
       consecutive_down =
         Prop.computed __type __id "consecutive_down";
       consecutive_up = Prop.computed __type __id "consecutive_up";
       created_on = Prop.computed __type __id "created_on";
       description = Prop.computed __type __id "description";
       expected_body = Prop.computed __type __id "expected_body";
       expected_codes = Prop.computed __type __id "expected_codes";
       follow_redirects =
         Prop.computed __type __id "follow_redirects";
       id = Prop.computed __type __id "id";
       interval = Prop.computed __type __id "interval";
       method_ = Prop.computed __type __id "method";
       modified_on = Prop.computed __type __id "modified_on";
       path = Prop.computed __type __id "path";
       port = Prop.computed __type __id "port";
       probe_zone = Prop.computed __type __id "probe_zone";
       retries = Prop.computed __type __id "retries";
       timeout = Prop.computed __type __id "timeout";
       type_ = Prop.computed __type __id "type";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_cloudflare_load_balancer_monitor
        (cloudflare_load_balancer_monitor ?allow_insecure
           ?consecutive_down ?consecutive_up ?description
           ?expected_body ?expected_codes ?follow_redirects ?id
           ?interval ?method_ ?path ?port ?probe_zone ?retries
           ?timeout ?type_ ~account_id ~header ());
    attrs = __attrs;
  }

let register ?tf_module ?allow_insecure ?consecutive_down
    ?consecutive_up ?description ?expected_body ?expected_codes
    ?follow_redirects ?id ?interval ?method_ ?path ?port ?probe_zone
    ?retries ?timeout ?type_ ~account_id ~header __id =
  let (r : _ Tf_core.resource) =
    make ?allow_insecure ?consecutive_down ?consecutive_up
      ?description ?expected_body ?expected_codes ?follow_redirects
      ?id ?interval ?method_ ?path ?port ?probe_zone ?retries
      ?timeout ?type_ ~account_id ~header __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
