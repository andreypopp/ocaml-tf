(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type ssl__settings = {
  ciphers : string prop list option; [@option]
  early_hints : string prop option; [@option]
  http2 : string prop option; [@option]
  min_tls_version : string prop option; [@option]
  tls13 : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : ssl__settings) -> ()

let yojson_of_ssl__settings =
  (function
   | {
       ciphers = v_ciphers;
       early_hints = v_early_hints;
       http2 = v_http2;
       min_tls_version = v_min_tls_version;
       tls13 = v_tls13;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_tls13 with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "tls13", arg in
             bnd :: bnds
       in
       let bnds =
         match v_min_tls_version with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "min_tls_version", arg in
             bnd :: bnds
       in
       let bnds =
         match v_http2 with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "http2", arg in
             bnd :: bnds
       in
       let bnds =
         match v_early_hints with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "early_hints", arg in
             bnd :: bnds
       in
       let bnds =
         match v_ciphers with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "ciphers", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : ssl__settings -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_ssl__settings

[@@@deriving.end]

type ssl__validation_errors = { message : string prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : ssl__validation_errors) -> ()

let yojson_of_ssl__validation_errors =
  (function
   | { message = v_message } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_message in
         ("message", arg) :: bnds
       in
       `Assoc bnds
    : ssl__validation_errors -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_ssl__validation_errors

[@@@deriving.end]

type ssl__validation_records = {
  cname_name : string prop;
  cname_target : string prop;
  emails : string prop list;
  http_body : string prop;
  http_url : string prop;
  txt_name : string prop;
  txt_value : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : ssl__validation_records) -> ()

let yojson_of_ssl__validation_records =
  (function
   | {
       cname_name = v_cname_name;
       cname_target = v_cname_target;
       emails = v_emails;
       http_body = v_http_body;
       http_url = v_http_url;
       txt_name = v_txt_name;
       txt_value = v_txt_value;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_txt_value in
         ("txt_value", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_txt_name in
         ("txt_name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_http_url in
         ("http_url", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_http_body in
         ("http_body", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list (yojson_of_prop yojson_of_string) v_emails
         in
         ("emails", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_cname_target in
         ("cname_target", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_cname_name in
         ("cname_name", arg) :: bnds
       in
       `Assoc bnds
    : ssl__validation_records -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_ssl__validation_records

[@@@deriving.end]

type ssl = {
  bundle_method : string prop option; [@option]
  certificate_authority : string prop option; [@option]
  custom_certificate : string prop option; [@option]
  custom_key : string prop option; [@option]
  method_ : string prop option; [@option] [@key "method"]
  type_ : string prop option; [@option] [@key "type"]
  wildcard : bool prop option; [@option]
  settings : ssl__settings list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : ssl) -> ()

let yojson_of_ssl =
  (function
   | {
       bundle_method = v_bundle_method;
       certificate_authority = v_certificate_authority;
       custom_certificate = v_custom_certificate;
       custom_key = v_custom_key;
       method_ = v_method_;
       type_ = v_type_;
       wildcard = v_wildcard;
       settings = v_settings;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_ssl__settings v_settings
         in
         ("settings", arg) :: bnds
       in
       let bnds =
         match v_wildcard with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "wildcard", arg in
             bnd :: bnds
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
         match v_method_ with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "method", arg in
             bnd :: bnds
       in
       let bnds =
         match v_custom_key with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "custom_key", arg in
             bnd :: bnds
       in
       let bnds =
         match v_custom_certificate with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "custom_certificate", arg in
             bnd :: bnds
       in
       let bnds =
         match v_certificate_authority with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "certificate_authority", arg in
             bnd :: bnds
       in
       let bnds =
         match v_bundle_method with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "bundle_method", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : ssl -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_ssl

[@@@deriving.end]

type cloudflare_custom_hostname = {
  custom_metadata : (string * string prop) list option; [@option]
  custom_origin_server : string prop option; [@option]
  custom_origin_sni : string prop option; [@option]
  hostname : string prop;
  id : string prop option; [@option]
  wait_for_ssl_pending_validation : bool prop option; [@option]
  zone_id : string prop;
  ssl : ssl list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : cloudflare_custom_hostname) -> ()

let yojson_of_cloudflare_custom_hostname =
  (function
   | {
       custom_metadata = v_custom_metadata;
       custom_origin_server = v_custom_origin_server;
       custom_origin_sni = v_custom_origin_sni;
       hostname = v_hostname;
       id = v_id;
       wait_for_ssl_pending_validation =
         v_wait_for_ssl_pending_validation;
       zone_id = v_zone_id;
       ssl = v_ssl;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_list yojson_of_ssl v_ssl in
         ("ssl", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_zone_id in
         ("zone_id", arg) :: bnds
       in
       let bnds =
         match v_wait_for_ssl_pending_validation with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "wait_for_ssl_pending_validation", arg in
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
         let arg = yojson_of_prop yojson_of_string v_hostname in
         ("hostname", arg) :: bnds
       in
       let bnds =
         match v_custom_origin_sni with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "custom_origin_sni", arg in
             bnd :: bnds
       in
       let bnds =
         match v_custom_origin_server with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "custom_origin_server", arg in
             bnd :: bnds
       in
       let bnds =
         match v_custom_metadata with
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
             let bnd = "custom_metadata", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : cloudflare_custom_hostname -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_cloudflare_custom_hostname

[@@@deriving.end]

let ssl__settings ?ciphers ?early_hints ?http2 ?min_tls_version
    ?tls13 () : ssl__settings =
  { ciphers; early_hints; http2; min_tls_version; tls13 }

let ssl ?bundle_method ?certificate_authority ?custom_certificate
    ?custom_key ?method_ ?type_ ?wildcard ~settings () : ssl =
  {
    bundle_method;
    certificate_authority;
    custom_certificate;
    custom_key;
    method_;
    type_;
    wildcard;
    settings;
  }

let cloudflare_custom_hostname ?custom_metadata ?custom_origin_server
    ?custom_origin_sni ?id ?wait_for_ssl_pending_validation ~hostname
    ~zone_id ~ssl () : cloudflare_custom_hostname =
  {
    custom_metadata;
    custom_origin_server;
    custom_origin_sni;
    hostname;
    id;
    wait_for_ssl_pending_validation;
    zone_id;
    ssl;
  }

type t = {
  custom_metadata : (string * string) list prop;
  custom_origin_server : string prop;
  custom_origin_sni : string prop;
  hostname : string prop;
  id : string prop;
  ownership_verification : (string * string) list prop;
  ownership_verification_http : (string * string) list prop;
  status : string prop;
  wait_for_ssl_pending_validation : bool prop;
  zone_id : string prop;
}

let make ?custom_metadata ?custom_origin_server ?custom_origin_sni
    ?id ?wait_for_ssl_pending_validation ~hostname ~zone_id ~ssl __id
    =
  let __type = "cloudflare_custom_hostname" in
  let __attrs =
    ({
       custom_metadata = Prop.computed __type __id "custom_metadata";
       custom_origin_server =
         Prop.computed __type __id "custom_origin_server";
       custom_origin_sni =
         Prop.computed __type __id "custom_origin_sni";
       hostname = Prop.computed __type __id "hostname";
       id = Prop.computed __type __id "id";
       ownership_verification =
         Prop.computed __type __id "ownership_verification";
       ownership_verification_http =
         Prop.computed __type __id "ownership_verification_http";
       status = Prop.computed __type __id "status";
       wait_for_ssl_pending_validation =
         Prop.computed __type __id "wait_for_ssl_pending_validation";
       zone_id = Prop.computed __type __id "zone_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_cloudflare_custom_hostname
        (cloudflare_custom_hostname ?custom_metadata
           ?custom_origin_server ?custom_origin_sni ?id
           ?wait_for_ssl_pending_validation ~hostname ~zone_id ~ssl
           ());
    attrs = __attrs;
  }

let register ?tf_module ?custom_metadata ?custom_origin_server
    ?custom_origin_sni ?id ?wait_for_ssl_pending_validation ~hostname
    ~zone_id ~ssl __id =
  let (r : _ Tf_core.resource) =
    make ?custom_metadata ?custom_origin_server ?custom_origin_sni
      ?id ?wait_for_ssl_pending_validation ~hostname ~zone_id ~ssl
      __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
