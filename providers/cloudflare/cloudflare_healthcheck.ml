(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type header = {
  header : string prop;
  values : string prop list;
      [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : header) -> ()

let yojson_of_header =
  (function
   | { header = v_header; values = v_values } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_values then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_values
           in
           let bnd = "values", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_header in
         ("header", arg) :: bnds
       in
       `Assoc bnds
    : header -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_header

[@@@deriving.end]

type timeouts = { create : string prop option [@option] }
[@@deriving_inline yojson_of]

let _ = fun (_ : timeouts) -> ()

let yojson_of_timeouts =
  (function
   | { create = v_create } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_create with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "create", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : timeouts -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_timeouts

[@@@deriving.end]

type cloudflare_healthcheck = {
  address : string prop;
  allow_insecure : bool prop option; [@option]
  check_regions : string prop list option; [@option]
  consecutive_fails : float prop option; [@option]
  consecutive_successes : float prop option; [@option]
  description : string prop option; [@option]
  expected_body : string prop option; [@option]
  expected_codes : string prop list option; [@option]
  follow_redirects : bool prop option; [@option]
  id : string prop option; [@option]
  interval : float prop option; [@option]
  method_ : string prop option; [@option] [@key "method"]
  name : string prop;
  path : string prop option; [@option]
  port : float prop option; [@option]
  retries : float prop option; [@option]
  suspended : bool prop option; [@option]
  timeout : float prop option; [@option]
  type_ : string prop; [@key "type"]
  zone_id : string prop;
  header : header list; [@default []] [@yojson_drop_default ( = )]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : cloudflare_healthcheck) -> ()

let yojson_of_cloudflare_healthcheck =
  (function
   | {
       address = v_address;
       allow_insecure = v_allow_insecure;
       check_regions = v_check_regions;
       consecutive_fails = v_consecutive_fails;
       consecutive_successes = v_consecutive_successes;
       description = v_description;
       expected_body = v_expected_body;
       expected_codes = v_expected_codes;
       follow_redirects = v_follow_redirects;
       id = v_id;
       interval = v_interval;
       method_ = v_method_;
       name = v_name;
       path = v_path;
       port = v_port;
       retries = v_retries;
       suspended = v_suspended;
       timeout = v_timeout;
       type_ = v_type_;
       zone_id = v_zone_id;
       header = v_header;
       timeouts = v_timeouts;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_option yojson_of_timeouts v_timeouts in
         ("timeouts", arg) :: bnds
       in
       let bnds =
         if [] = v_header then bnds
         else
           let arg = (yojson_of_list yojson_of_header) v_header in
           let bnd = "header", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_zone_id in
         ("zone_id", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_type_ in
         ("type", arg) :: bnds
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
         match v_suspended with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "suspended", arg in
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
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
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
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
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
         match v_consecutive_successes with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "consecutive_successes", arg in
             bnd :: bnds
       in
       let bnds =
         match v_consecutive_fails with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "consecutive_fails", arg in
             bnd :: bnds
       in
       let bnds =
         match v_check_regions with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "check_regions", arg in
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
         let arg = yojson_of_prop yojson_of_string v_address in
         ("address", arg) :: bnds
       in
       `Assoc bnds
    : cloudflare_healthcheck -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_cloudflare_healthcheck

[@@@deriving.end]

let header ~header ~values () : header = { header; values }
let timeouts ?create () : timeouts = { create }

let cloudflare_healthcheck ?allow_insecure ?check_regions
    ?consecutive_fails ?consecutive_successes ?description
    ?expected_body ?expected_codes ?follow_redirects ?id ?interval
    ?method_ ?path ?port ?retries ?suspended ?timeout ?timeouts
    ~address ~name ~type_ ~zone_id ~header () :
    cloudflare_healthcheck =
  {
    address;
    allow_insecure;
    check_regions;
    consecutive_fails;
    consecutive_successes;
    description;
    expected_body;
    expected_codes;
    follow_redirects;
    id;
    interval;
    method_;
    name;
    path;
    port;
    retries;
    suspended;
    timeout;
    type_;
    zone_id;
    header;
    timeouts;
  }

type t = {
  tf_name : string;
  address : string prop;
  allow_insecure : bool prop;
  check_regions : string list prop;
  consecutive_fails : float prop;
  consecutive_successes : float prop;
  created_on : string prop;
  description : string prop;
  expected_body : string prop;
  expected_codes : string list prop;
  follow_redirects : bool prop;
  id : string prop;
  interval : float prop;
  method_ : string prop;
  modified_on : string prop;
  name : string prop;
  path : string prop;
  port : float prop;
  retries : float prop;
  suspended : bool prop;
  timeout : float prop;
  type_ : string prop;
  zone_id : string prop;
}

let make ?allow_insecure ?check_regions ?consecutive_fails
    ?consecutive_successes ?description ?expected_body
    ?expected_codes ?follow_redirects ?id ?interval ?method_ ?path
    ?port ?retries ?suspended ?timeout ?timeouts ~address ~name
    ~type_ ~zone_id ~header __id =
  let __type = "cloudflare_healthcheck" in
  let __attrs =
    ({
       tf_name = __id;
       address = Prop.computed __type __id "address";
       allow_insecure = Prop.computed __type __id "allow_insecure";
       check_regions = Prop.computed __type __id "check_regions";
       consecutive_fails =
         Prop.computed __type __id "consecutive_fails";
       consecutive_successes =
         Prop.computed __type __id "consecutive_successes";
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
       name = Prop.computed __type __id "name";
       path = Prop.computed __type __id "path";
       port = Prop.computed __type __id "port";
       retries = Prop.computed __type __id "retries";
       suspended = Prop.computed __type __id "suspended";
       timeout = Prop.computed __type __id "timeout";
       type_ = Prop.computed __type __id "type";
       zone_id = Prop.computed __type __id "zone_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_cloudflare_healthcheck
        (cloudflare_healthcheck ?allow_insecure ?check_regions
           ?consecutive_fails ?consecutive_successes ?description
           ?expected_body ?expected_codes ?follow_redirects ?id
           ?interval ?method_ ?path ?port ?retries ?suspended
           ?timeout ?timeouts ~address ~name ~type_ ~zone_id ~header
           ());
    attrs = __attrs;
  }

let register ?tf_module ?allow_insecure ?check_regions
    ?consecutive_fails ?consecutive_successes ?description
    ?expected_body ?expected_codes ?follow_redirects ?id ?interval
    ?method_ ?path ?port ?retries ?suspended ?timeout ?timeouts
    ~address ~name ~type_ ~zone_id ~header __id =
  let (r : _ Tf_core.resource) =
    make ?allow_insecure ?check_regions ?consecutive_fails
      ?consecutive_successes ?description ?expected_body
      ?expected_codes ?follow_redirects ?id ?interval ?method_ ?path
      ?port ?retries ?suspended ?timeout ?timeouts ~address ~name
      ~type_ ~zone_id ~header __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
