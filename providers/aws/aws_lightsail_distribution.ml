(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type cache_behavior = { behavior : string prop; path : string prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : cache_behavior) -> ()

let yojson_of_cache_behavior =
  (function
   | { behavior = v_behavior; path = v_path } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_path in
         ("path", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_behavior in
         ("behavior", arg) :: bnds
       in
       `Assoc bnds
    : cache_behavior -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_cache_behavior

[@@@deriving.end]

type cache_behavior_settings__forwarded_cookies = {
  cookies_allow_list : string prop list option; [@option]
  option_ : string prop option; [@option] [@key "option"]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : cache_behavior_settings__forwarded_cookies) -> ()

let yojson_of_cache_behavior_settings__forwarded_cookies =
  (function
   | {
       cookies_allow_list = v_cookies_allow_list;
       option_ = v_option_;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_option_ with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "option", arg in
             bnd :: bnds
       in
       let bnds =
         match v_cookies_allow_list with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "cookies_allow_list", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : cache_behavior_settings__forwarded_cookies ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_cache_behavior_settings__forwarded_cookies

[@@@deriving.end]

type cache_behavior_settings__forwarded_headers = {
  headers_allow_list : string prop list option; [@option]
  option_ : string prop option; [@option] [@key "option"]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : cache_behavior_settings__forwarded_headers) -> ()

let yojson_of_cache_behavior_settings__forwarded_headers =
  (function
   | {
       headers_allow_list = v_headers_allow_list;
       option_ = v_option_;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_option_ with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "option", arg in
             bnd :: bnds
       in
       let bnds =
         match v_headers_allow_list with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "headers_allow_list", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : cache_behavior_settings__forwarded_headers ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_cache_behavior_settings__forwarded_headers

[@@@deriving.end]

type cache_behavior_settings__forwarded_query_strings = {
  option_ : bool prop option; [@option] [@key "option"]
  query_strings_allowed_list : string prop list option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : cache_behavior_settings__forwarded_query_strings) -> ()

let yojson_of_cache_behavior_settings__forwarded_query_strings =
  (function
   | {
       option_ = v_option_;
       query_strings_allowed_list = v_query_strings_allowed_list;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_query_strings_allowed_list with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "query_strings_allowed_list", arg in
             bnd :: bnds
       in
       let bnds =
         match v_option_ with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "option", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : cache_behavior_settings__forwarded_query_strings ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_cache_behavior_settings__forwarded_query_strings

[@@@deriving.end]

type cache_behavior_settings = {
  allowed_http_methods : string prop option; [@option]
  cached_http_methods : string prop option; [@option]
  default_ttl : float prop option; [@option]
  maximum_ttl : float prop option; [@option]
  minimum_ttl : float prop option; [@option]
  forwarded_cookies :
    cache_behavior_settings__forwarded_cookies list;
  forwarded_headers :
    cache_behavior_settings__forwarded_headers list;
  forwarded_query_strings :
    cache_behavior_settings__forwarded_query_strings list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : cache_behavior_settings) -> ()

let yojson_of_cache_behavior_settings =
  (function
   | {
       allowed_http_methods = v_allowed_http_methods;
       cached_http_methods = v_cached_http_methods;
       default_ttl = v_default_ttl;
       maximum_ttl = v_maximum_ttl;
       minimum_ttl = v_minimum_ttl;
       forwarded_cookies = v_forwarded_cookies;
       forwarded_headers = v_forwarded_headers;
       forwarded_query_strings = v_forwarded_query_strings;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_cache_behavior_settings__forwarded_query_strings
             v_forwarded_query_strings
         in
         ("forwarded_query_strings", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_cache_behavior_settings__forwarded_headers
             v_forwarded_headers
         in
         ("forwarded_headers", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_cache_behavior_settings__forwarded_cookies
             v_forwarded_cookies
         in
         ("forwarded_cookies", arg) :: bnds
       in
       let bnds =
         match v_minimum_ttl with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "minimum_ttl", arg in
             bnd :: bnds
       in
       let bnds =
         match v_maximum_ttl with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "maximum_ttl", arg in
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
         match v_cached_http_methods with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "cached_http_methods", arg in
             bnd :: bnds
       in
       let bnds =
         match v_allowed_http_methods with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "allowed_http_methods", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : cache_behavior_settings -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_cache_behavior_settings

[@@@deriving.end]

type default_cache_behavior = { behavior : string prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : default_cache_behavior) -> ()

let yojson_of_default_cache_behavior =
  (function
   | { behavior = v_behavior } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_behavior in
         ("behavior", arg) :: bnds
       in
       `Assoc bnds
    : default_cache_behavior -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_default_cache_behavior

[@@@deriving.end]

type origin = {
  name : string prop;
  protocol_policy : string prop option; [@option]
  region_name : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : origin) -> ()

let yojson_of_origin =
  (function
   | {
       name = v_name;
       protocol_policy = v_protocol_policy;
       region_name = v_region_name;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_region_name in
         ("region_name", arg) :: bnds
       in
       let bnds =
         match v_protocol_policy with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "protocol_policy", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       `Assoc bnds
    : origin -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_origin

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

type location = {
  availability_zone : string prop;
  region_name : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : location) -> ()

let yojson_of_location =
  (function
   | {
       availability_zone = v_availability_zone;
       region_name = v_region_name;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_region_name in
         ("region_name", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_availability_zone
         in
         ("availability_zone", arg) :: bnds
       in
       `Assoc bnds
    : location -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_location

[@@@deriving.end]

type aws_lightsail_distribution = {
  bundle_id : string prop;
  certificate_name : string prop option; [@option]
  id : string prop option; [@option]
  ip_address_type : string prop option; [@option]
  is_enabled : bool prop option; [@option]
  name : string prop;
  tags : (string * string prop) list option; [@option]
  tags_all : (string * string prop) list option; [@option]
  cache_behavior : cache_behavior list;
  cache_behavior_settings : cache_behavior_settings list;
  default_cache_behavior : default_cache_behavior list;
  origin : origin list;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_lightsail_distribution) -> ()

let yojson_of_aws_lightsail_distribution =
  (function
   | {
       bundle_id = v_bundle_id;
       certificate_name = v_certificate_name;
       id = v_id;
       ip_address_type = v_ip_address_type;
       is_enabled = v_is_enabled;
       name = v_name;
       tags = v_tags;
       tags_all = v_tags_all;
       cache_behavior = v_cache_behavior;
       cache_behavior_settings = v_cache_behavior_settings;
       default_cache_behavior = v_default_cache_behavior;
       origin = v_origin;
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
         let arg = yojson_of_list yojson_of_origin v_origin in
         ("origin", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_default_cache_behavior
             v_default_cache_behavior
         in
         ("default_cache_behavior", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_cache_behavior_settings
             v_cache_behavior_settings
         in
         ("cache_behavior_settings", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_cache_behavior v_cache_behavior
         in
         ("cache_behavior", arg) :: bnds
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
         match v_is_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "is_enabled", arg in
             bnd :: bnds
       in
       let bnds =
         match v_ip_address_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "ip_address_type", arg in
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
         match v_certificate_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "certificate_name", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_bundle_id in
         ("bundle_id", arg) :: bnds
       in
       `Assoc bnds
    : aws_lightsail_distribution -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_lightsail_distribution

[@@@deriving.end]

let cache_behavior ~behavior ~path () : cache_behavior =
  { behavior; path }

let cache_behavior_settings__forwarded_cookies ?cookies_allow_list
    ?option_ () : cache_behavior_settings__forwarded_cookies =
  { cookies_allow_list; option_ }

let cache_behavior_settings__forwarded_headers ?headers_allow_list
    ?option_ () : cache_behavior_settings__forwarded_headers =
  { headers_allow_list; option_ }

let cache_behavior_settings__forwarded_query_strings ?option_
    ?query_strings_allowed_list () :
    cache_behavior_settings__forwarded_query_strings =
  { option_; query_strings_allowed_list }

let cache_behavior_settings ?allowed_http_methods
    ?cached_http_methods ?default_ttl ?maximum_ttl ?minimum_ttl
    ?(forwarded_cookies = []) ?(forwarded_headers = [])
    ?(forwarded_query_strings = []) () : cache_behavior_settings =
  {
    allowed_http_methods;
    cached_http_methods;
    default_ttl;
    maximum_ttl;
    minimum_ttl;
    forwarded_cookies;
    forwarded_headers;
    forwarded_query_strings;
  }

let default_cache_behavior ~behavior () : default_cache_behavior =
  { behavior }

let origin ?protocol_policy ~name ~region_name () : origin =
  { name; protocol_policy; region_name }

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let aws_lightsail_distribution ?certificate_name ?id ?ip_address_type
    ?is_enabled ?tags ?tags_all ?(cache_behavior_settings = [])
    ?timeouts ~bundle_id ~name ~cache_behavior
    ~default_cache_behavior ~origin () : aws_lightsail_distribution =
  {
    bundle_id;
    certificate_name;
    id;
    ip_address_type;
    is_enabled;
    name;
    tags;
    tags_all;
    cache_behavior;
    cache_behavior_settings;
    default_cache_behavior;
    origin;
    timeouts;
  }

type t = {
  tf_name : string;
  alternative_domain_names : string list prop;
  arn : string prop;
  bundle_id : string prop;
  certificate_name : string prop;
  created_at : string prop;
  domain_name : string prop;
  id : string prop;
  ip_address_type : string prop;
  is_enabled : bool prop;
  location : location list prop;
  name : string prop;
  origin_public_dns : string prop;
  resource_type : string prop;
  status : string prop;
  support_code : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

let make ?certificate_name ?id ?ip_address_type ?is_enabled ?tags
    ?tags_all ?(cache_behavior_settings = []) ?timeouts ~bundle_id
    ~name ~cache_behavior ~default_cache_behavior ~origin __id =
  let __type = "aws_lightsail_distribution" in
  let __attrs =
    ({
       tf_name = __id;
       alternative_domain_names =
         Prop.computed __type __id "alternative_domain_names";
       arn = Prop.computed __type __id "arn";
       bundle_id = Prop.computed __type __id "bundle_id";
       certificate_name =
         Prop.computed __type __id "certificate_name";
       created_at = Prop.computed __type __id "created_at";
       domain_name = Prop.computed __type __id "domain_name";
       id = Prop.computed __type __id "id";
       ip_address_type = Prop.computed __type __id "ip_address_type";
       is_enabled = Prop.computed __type __id "is_enabled";
       location = Prop.computed __type __id "location";
       name = Prop.computed __type __id "name";
       origin_public_dns =
         Prop.computed __type __id "origin_public_dns";
       resource_type = Prop.computed __type __id "resource_type";
       status = Prop.computed __type __id "status";
       support_code = Prop.computed __type __id "support_code";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_lightsail_distribution
        (aws_lightsail_distribution ?certificate_name ?id
           ?ip_address_type ?is_enabled ?tags ?tags_all
           ~cache_behavior_settings ?timeouts ~bundle_id ~name
           ~cache_behavior ~default_cache_behavior ~origin ());
    attrs = __attrs;
  }

let register ?tf_module ?certificate_name ?id ?ip_address_type
    ?is_enabled ?tags ?tags_all ?(cache_behavior_settings = [])
    ?timeouts ~bundle_id ~name ~cache_behavior
    ~default_cache_behavior ~origin __id =
  let (r : _ Tf_core.resource) =
    make ?certificate_name ?id ?ip_address_type ?is_enabled ?tags
      ?tags_all ~cache_behavior_settings ?timeouts ~bundle_id ~name
      ~cache_behavior ~default_cache_behavior ~origin __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
