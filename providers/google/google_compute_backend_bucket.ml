(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type cdn_policy__bypass_cache_on_request_headers = {
  header_name : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : cdn_policy__bypass_cache_on_request_headers) -> ()

let yojson_of_cdn_policy__bypass_cache_on_request_headers =
  (function
   | { header_name = v_header_name } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_header_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "header_name", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : cdn_policy__bypass_cache_on_request_headers ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_cdn_policy__bypass_cache_on_request_headers

[@@@deriving.end]

type cdn_policy__cache_key_policy = {
  include_http_headers : string prop list option; [@option]
  query_string_whitelist : string prop list option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : cdn_policy__cache_key_policy) -> ()

let yojson_of_cdn_policy__cache_key_policy =
  (function
   | {
       include_http_headers = v_include_http_headers;
       query_string_whitelist = v_query_string_whitelist;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_query_string_whitelist with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "query_string_whitelist", arg in
             bnd :: bnds
       in
       let bnds =
         match v_include_http_headers with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "include_http_headers", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : cdn_policy__cache_key_policy ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_cdn_policy__cache_key_policy

[@@@deriving.end]

type cdn_policy__negative_caching_policy = {
  code : float prop option; [@option]
  ttl : float prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : cdn_policy__negative_caching_policy) -> ()

let yojson_of_cdn_policy__negative_caching_policy =
  (function
   | { code = v_code; ttl = v_ttl } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_ttl with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "ttl", arg in
             bnd :: bnds
       in
       let bnds =
         match v_code with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "code", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : cdn_policy__negative_caching_policy ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_cdn_policy__negative_caching_policy

[@@@deriving.end]

type cdn_policy = {
  cache_mode : string prop option; [@option]
  client_ttl : float prop option; [@option]
  default_ttl : float prop option; [@option]
  max_ttl : float prop option; [@option]
  negative_caching : bool prop option; [@option]
  request_coalescing : bool prop option; [@option]
  serve_while_stale : float prop option; [@option]
  signed_url_cache_max_age_sec : float prop option; [@option]
  bypass_cache_on_request_headers :
    cdn_policy__bypass_cache_on_request_headers list;
  cache_key_policy : cdn_policy__cache_key_policy list;
  negative_caching_policy : cdn_policy__negative_caching_policy list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : cdn_policy) -> ()

let yojson_of_cdn_policy =
  (function
   | {
       cache_mode = v_cache_mode;
       client_ttl = v_client_ttl;
       default_ttl = v_default_ttl;
       max_ttl = v_max_ttl;
       negative_caching = v_negative_caching;
       request_coalescing = v_request_coalescing;
       serve_while_stale = v_serve_while_stale;
       signed_url_cache_max_age_sec = v_signed_url_cache_max_age_sec;
       bypass_cache_on_request_headers =
         v_bypass_cache_on_request_headers;
       cache_key_policy = v_cache_key_policy;
       negative_caching_policy = v_negative_caching_policy;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_cdn_policy__negative_caching_policy
             v_negative_caching_policy
         in
         ("negative_caching_policy", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_cdn_policy__cache_key_policy
             v_cache_key_policy
         in
         ("cache_key_policy", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_cdn_policy__bypass_cache_on_request_headers
             v_bypass_cache_on_request_headers
         in
         ("bypass_cache_on_request_headers", arg) :: bnds
       in
       let bnds =
         match v_signed_url_cache_max_age_sec with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "signed_url_cache_max_age_sec", arg in
             bnd :: bnds
       in
       let bnds =
         match v_serve_while_stale with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "serve_while_stale", arg in
             bnd :: bnds
       in
       let bnds =
         match v_request_coalescing with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "request_coalescing", arg in
             bnd :: bnds
       in
       let bnds =
         match v_negative_caching with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "negative_caching", arg in
             bnd :: bnds
       in
       let bnds =
         match v_max_ttl with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "max_ttl", arg in
             bnd :: bnds
       in
       let bnds =
         match v_default_ttl with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "default_ttl", arg in
             bnd :: bnds
       in
       let bnds =
         match v_client_ttl with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "client_ttl", arg in
             bnd :: bnds
       in
       let bnds =
         match v_cache_mode with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "cache_mode", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : cdn_policy -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_cdn_policy

[@@@deriving.end]

type timeouts = {
  create : string prop option; [@option]
  delete : string prop option; [@option]
  update : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : timeouts) -> ()

let yojson_of_timeouts =
  (function
   | { create = v_create; delete = v_delete; update = v_update } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_update with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "update", arg in
             bnd :: bnds
       in
       let bnds =
         match v_delete with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "delete", arg in
             bnd :: bnds
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

type google_compute_backend_bucket = {
  bucket_name : string prop;
  compression_mode : string prop option; [@option]
  custom_response_headers : string prop list option; [@option]
  description : string prop option; [@option]
  edge_security_policy : string prop option; [@option]
  enable_cdn : bool prop option; [@option]
  id : string prop option; [@option]
  name : string prop;
  project : string prop option; [@option]
  cdn_policy : cdn_policy list;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : google_compute_backend_bucket) -> ()

let yojson_of_google_compute_backend_bucket =
  (function
   | {
       bucket_name = v_bucket_name;
       compression_mode = v_compression_mode;
       custom_response_headers = v_custom_response_headers;
       description = v_description;
       edge_security_policy = v_edge_security_policy;
       enable_cdn = v_enable_cdn;
       id = v_id;
       name = v_name;
       project = v_project;
       cdn_policy = v_cdn_policy;
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
         let arg =
           yojson_of_list yojson_of_cdn_policy v_cdn_policy
         in
         ("cdn_policy", arg) :: bnds
       in
       let bnds =
         match v_project with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "project", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
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
         match v_enable_cdn with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "enable_cdn", arg in
             bnd :: bnds
       in
       let bnds =
         match v_edge_security_policy with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "edge_security_policy", arg in
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
         match v_custom_response_headers with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "custom_response_headers", arg in
             bnd :: bnds
       in
       let bnds =
         match v_compression_mode with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "compression_mode", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_bucket_name in
         ("bucket_name", arg) :: bnds
       in
       `Assoc bnds
    : google_compute_backend_bucket ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_compute_backend_bucket

[@@@deriving.end]

let cdn_policy__bypass_cache_on_request_headers ?header_name () :
    cdn_policy__bypass_cache_on_request_headers =
  { header_name }

let cdn_policy__cache_key_policy ?include_http_headers
    ?query_string_whitelist () : cdn_policy__cache_key_policy =
  { include_http_headers; query_string_whitelist }

let cdn_policy__negative_caching_policy ?code ?ttl () :
    cdn_policy__negative_caching_policy =
  { code; ttl }

let cdn_policy ?cache_mode ?client_ttl ?default_ttl ?max_ttl
    ?negative_caching ?request_coalescing ?serve_while_stale
    ?signed_url_cache_max_age_sec
    ?(bypass_cache_on_request_headers = []) ?(cache_key_policy = [])
    ?(negative_caching_policy = []) () : cdn_policy =
  {
    cache_mode;
    client_ttl;
    default_ttl;
    max_ttl;
    negative_caching;
    request_coalescing;
    serve_while_stale;
    signed_url_cache_max_age_sec;
    bypass_cache_on_request_headers;
    cache_key_policy;
    negative_caching_policy;
  }

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let google_compute_backend_bucket ?compression_mode
    ?custom_response_headers ?description ?edge_security_policy
    ?enable_cdn ?id ?project ?(cdn_policy = []) ?timeouts
    ~bucket_name ~name () : google_compute_backend_bucket =
  {
    bucket_name;
    compression_mode;
    custom_response_headers;
    description;
    edge_security_policy;
    enable_cdn;
    id;
    name;
    project;
    cdn_policy;
    timeouts;
  }

type t = {
  tf_name : string;
  bucket_name : string prop;
  compression_mode : string prop;
  creation_timestamp : string prop;
  custom_response_headers : string list prop;
  description : string prop;
  edge_security_policy : string prop;
  enable_cdn : bool prop;
  id : string prop;
  name : string prop;
  project : string prop;
  self_link : string prop;
}

let make ?compression_mode ?custom_response_headers ?description
    ?edge_security_policy ?enable_cdn ?id ?project ?(cdn_policy = [])
    ?timeouts ~bucket_name ~name __id =
  let __type = "google_compute_backend_bucket" in
  let __attrs =
    ({
       tf_name = __id;
       bucket_name = Prop.computed __type __id "bucket_name";
       compression_mode =
         Prop.computed __type __id "compression_mode";
       creation_timestamp =
         Prop.computed __type __id "creation_timestamp";
       custom_response_headers =
         Prop.computed __type __id "custom_response_headers";
       description = Prop.computed __type __id "description";
       edge_security_policy =
         Prop.computed __type __id "edge_security_policy";
       enable_cdn = Prop.computed __type __id "enable_cdn";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       project = Prop.computed __type __id "project";
       self_link = Prop.computed __type __id "self_link";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_compute_backend_bucket
        (google_compute_backend_bucket ?compression_mode
           ?custom_response_headers ?description
           ?edge_security_policy ?enable_cdn ?id ?project ~cdn_policy
           ?timeouts ~bucket_name ~name ());
    attrs = __attrs;
  }

let register ?tf_module ?compression_mode ?custom_response_headers
    ?description ?edge_security_policy ?enable_cdn ?id ?project
    ?(cdn_policy = []) ?timeouts ~bucket_name ~name __id =
  let (r : _ Tf_core.resource) =
    make ?compression_mode ?custom_response_headers ?description
      ?edge_security_policy ?enable_cdn ?id ?project ~cdn_policy
      ?timeouts ~bucket_name ~name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
