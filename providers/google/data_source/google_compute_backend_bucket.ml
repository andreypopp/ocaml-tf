(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type cdn_policy__negative_caching_policy = {
  code : float prop;
  ttl : float prop;
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
         let arg = yojson_of_prop yojson_of_float v_ttl in
         ("ttl", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_code in
         ("code", arg) :: bnds
       in
       `Assoc bnds
    : cdn_policy__negative_caching_policy ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_cdn_policy__negative_caching_policy

[@@@deriving.end]

type cdn_policy__cache_key_policy = {
  include_http_headers : string prop list;
  query_string_whitelist : string prop list;
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
         let arg =
           yojson_of_list
             (yojson_of_prop yojson_of_string)
             v_query_string_whitelist
         in
         ("query_string_whitelist", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             (yojson_of_prop yojson_of_string)
             v_include_http_headers
         in
         ("include_http_headers", arg) :: bnds
       in
       `Assoc bnds
    : cdn_policy__cache_key_policy ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_cdn_policy__cache_key_policy

[@@@deriving.end]

type cdn_policy__bypass_cache_on_request_headers = {
  header_name : string prop;
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
         let arg = yojson_of_prop yojson_of_string v_header_name in
         ("header_name", arg) :: bnds
       in
       `Assoc bnds
    : cdn_policy__bypass_cache_on_request_headers ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_cdn_policy__bypass_cache_on_request_headers

[@@@deriving.end]

type cdn_policy = {
  bypass_cache_on_request_headers :
    cdn_policy__bypass_cache_on_request_headers list;
  cache_key_policy : cdn_policy__cache_key_policy list;
  cache_mode : string prop;
  client_ttl : float prop;
  default_ttl : float prop;
  max_ttl : float prop;
  negative_caching : bool prop;
  negative_caching_policy : cdn_policy__negative_caching_policy list;
  request_coalescing : bool prop;
  serve_while_stale : float prop;
  signed_url_cache_max_age_sec : float prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : cdn_policy) -> ()

let yojson_of_cdn_policy =
  (function
   | {
       bypass_cache_on_request_headers =
         v_bypass_cache_on_request_headers;
       cache_key_policy = v_cache_key_policy;
       cache_mode = v_cache_mode;
       client_ttl = v_client_ttl;
       default_ttl = v_default_ttl;
       max_ttl = v_max_ttl;
       negative_caching = v_negative_caching;
       negative_caching_policy = v_negative_caching_policy;
       request_coalescing = v_request_coalescing;
       serve_while_stale = v_serve_while_stale;
       signed_url_cache_max_age_sec = v_signed_url_cache_max_age_sec;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_float
             v_signed_url_cache_max_age_sec
         in
         ("signed_url_cache_max_age_sec", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_float v_serve_while_stale
         in
         ("serve_while_stale", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_bool v_request_coalescing
         in
         ("request_coalescing", arg) :: bnds
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
           yojson_of_prop yojson_of_bool v_negative_caching
         in
         ("negative_caching", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_max_ttl in
         ("max_ttl", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_default_ttl in
         ("default_ttl", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_client_ttl in
         ("client_ttl", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_cache_mode in
         ("cache_mode", arg) :: bnds
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
       `Assoc bnds
    : cdn_policy -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_cdn_policy

[@@@deriving.end]

type google_compute_backend_bucket = {
  id : string prop option; [@option]
  name : string prop;
  project : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : google_compute_backend_bucket) -> ()

let yojson_of_google_compute_backend_bucket =
  (function
   | { id = v_id; name = v_name; project = v_project } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
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
       `Assoc bnds
    : google_compute_backend_bucket ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_compute_backend_bucket

[@@@deriving.end]

let google_compute_backend_bucket ?id ?project ~name () :
    google_compute_backend_bucket =
  { id; name; project }

type t = {
  bucket_name : string prop;
  cdn_policy : cdn_policy list prop;
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

let make ?id ?project ~name __id =
  let __type = "google_compute_backend_bucket" in
  let __attrs =
    ({
       bucket_name = Prop.computed __type __id "bucket_name";
       cdn_policy = Prop.computed __type __id "cdn_policy";
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
        (google_compute_backend_bucket ?id ?project ~name ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?project ~name __id =
  let (r : _ Tf_core.resource) = make ?id ?project ~name __id in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
