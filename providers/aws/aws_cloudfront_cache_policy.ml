(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type parameters_in_cache_key_and_forwarded_to_origin__cookies_config__cookies = {
  items : string prop list option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       parameters_in_cache_key_and_forwarded_to_origin__cookies_config__cookies) ->
  ()

let yojson_of_parameters_in_cache_key_and_forwarded_to_origin__cookies_config__cookies
    =
  (function
   | { items = v_items } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_items with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "items", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : parameters_in_cache_key_and_forwarded_to_origin__cookies_config__cookies ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_parameters_in_cache_key_and_forwarded_to_origin__cookies_config__cookies

[@@@deriving.end]

type parameters_in_cache_key_and_forwarded_to_origin__cookies_config = {
  cookie_behavior : string prop;
  cookies :
    parameters_in_cache_key_and_forwarded_to_origin__cookies_config__cookies
    list;
      [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       parameters_in_cache_key_and_forwarded_to_origin__cookies_config) ->
  ()

let yojson_of_parameters_in_cache_key_and_forwarded_to_origin__cookies_config
    =
  (function
   | { cookie_behavior = v_cookie_behavior; cookies = v_cookies } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_cookies then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_parameters_in_cache_key_and_forwarded_to_origin__cookies_config__cookies)
               v_cookies
           in
           let bnd = "cookies", arg in
           bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_cookie_behavior
         in
         ("cookie_behavior", arg) :: bnds
       in
       `Assoc bnds
    : parameters_in_cache_key_and_forwarded_to_origin__cookies_config ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_parameters_in_cache_key_and_forwarded_to_origin__cookies_config

[@@@deriving.end]

type parameters_in_cache_key_and_forwarded_to_origin__headers_config__headers = {
  items : string prop list option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       parameters_in_cache_key_and_forwarded_to_origin__headers_config__headers) ->
  ()

let yojson_of_parameters_in_cache_key_and_forwarded_to_origin__headers_config__headers
    =
  (function
   | { items = v_items } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_items with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "items", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : parameters_in_cache_key_and_forwarded_to_origin__headers_config__headers ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_parameters_in_cache_key_and_forwarded_to_origin__headers_config__headers

[@@@deriving.end]

type parameters_in_cache_key_and_forwarded_to_origin__headers_config = {
  header_behavior : string prop option; [@option]
  headers :
    parameters_in_cache_key_and_forwarded_to_origin__headers_config__headers
    list;
      [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       parameters_in_cache_key_and_forwarded_to_origin__headers_config) ->
  ()

let yojson_of_parameters_in_cache_key_and_forwarded_to_origin__headers_config
    =
  (function
   | { header_behavior = v_header_behavior; headers = v_headers } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_headers then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_parameters_in_cache_key_and_forwarded_to_origin__headers_config__headers)
               v_headers
           in
           let bnd = "headers", arg in
           bnd :: bnds
       in
       let bnds =
         match v_header_behavior with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "header_behavior", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : parameters_in_cache_key_and_forwarded_to_origin__headers_config ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_parameters_in_cache_key_and_forwarded_to_origin__headers_config

[@@@deriving.end]

type parameters_in_cache_key_and_forwarded_to_origin__query_strings_config__query_strings = {
  items : string prop list option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       parameters_in_cache_key_and_forwarded_to_origin__query_strings_config__query_strings) ->
  ()

let yojson_of_parameters_in_cache_key_and_forwarded_to_origin__query_strings_config__query_strings
    =
  (function
   | { items = v_items } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_items with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "items", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : parameters_in_cache_key_and_forwarded_to_origin__query_strings_config__query_strings ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_parameters_in_cache_key_and_forwarded_to_origin__query_strings_config__query_strings

[@@@deriving.end]

type parameters_in_cache_key_and_forwarded_to_origin__query_strings_config = {
  query_string_behavior : string prop;
  query_strings :
    parameters_in_cache_key_and_forwarded_to_origin__query_strings_config__query_strings
    list;
      [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       parameters_in_cache_key_and_forwarded_to_origin__query_strings_config) ->
  ()

let yojson_of_parameters_in_cache_key_and_forwarded_to_origin__query_strings_config
    =
  (function
   | {
       query_string_behavior = v_query_string_behavior;
       query_strings = v_query_strings;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_query_strings then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_parameters_in_cache_key_and_forwarded_to_origin__query_strings_config__query_strings)
               v_query_strings
           in
           let bnd = "query_strings", arg in
           bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_query_string_behavior
         in
         ("query_string_behavior", arg) :: bnds
       in
       `Assoc bnds
    : parameters_in_cache_key_and_forwarded_to_origin__query_strings_config ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_parameters_in_cache_key_and_forwarded_to_origin__query_strings_config

[@@@deriving.end]

type parameters_in_cache_key_and_forwarded_to_origin = {
  enable_accept_encoding_brotli : bool prop option; [@option]
  enable_accept_encoding_gzip : bool prop option; [@option]
  cookies_config :
    parameters_in_cache_key_and_forwarded_to_origin__cookies_config
    list;
      [@default []] [@yojson_drop_default ( = )]
  headers_config :
    parameters_in_cache_key_and_forwarded_to_origin__headers_config
    list;
      [@default []] [@yojson_drop_default ( = )]
  query_strings_config :
    parameters_in_cache_key_and_forwarded_to_origin__query_strings_config
    list;
      [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : parameters_in_cache_key_and_forwarded_to_origin) -> ()

let yojson_of_parameters_in_cache_key_and_forwarded_to_origin =
  (function
   | {
       enable_accept_encoding_brotli =
         v_enable_accept_encoding_brotli;
       enable_accept_encoding_gzip = v_enable_accept_encoding_gzip;
       cookies_config = v_cookies_config;
       headers_config = v_headers_config;
       query_strings_config = v_query_strings_config;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_query_strings_config then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_parameters_in_cache_key_and_forwarded_to_origin__query_strings_config)
               v_query_strings_config
           in
           let bnd = "query_strings_config", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_headers_config then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_parameters_in_cache_key_and_forwarded_to_origin__headers_config)
               v_headers_config
           in
           let bnd = "headers_config", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_cookies_config then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_parameters_in_cache_key_and_forwarded_to_origin__cookies_config)
               v_cookies_config
           in
           let bnd = "cookies_config", arg in
           bnd :: bnds
       in
       let bnds =
         match v_enable_accept_encoding_gzip with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "enable_accept_encoding_gzip", arg in
             bnd :: bnds
       in
       let bnds =
         match v_enable_accept_encoding_brotli with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "enable_accept_encoding_brotli", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : parameters_in_cache_key_and_forwarded_to_origin ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_parameters_in_cache_key_and_forwarded_to_origin

[@@@deriving.end]

type aws_cloudfront_cache_policy = {
  comment : string prop option; [@option]
  default_ttl : float prop option; [@option]
  id : string prop option; [@option]
  max_ttl : float prop option; [@option]
  min_ttl : float prop option; [@option]
  name : string prop;
  parameters_in_cache_key_and_forwarded_to_origin :
    parameters_in_cache_key_and_forwarded_to_origin list;
      [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_cloudfront_cache_policy) -> ()

let yojson_of_aws_cloudfront_cache_policy =
  (function
   | {
       comment = v_comment;
       default_ttl = v_default_ttl;
       id = v_id;
       max_ttl = v_max_ttl;
       min_ttl = v_min_ttl;
       name = v_name;
       parameters_in_cache_key_and_forwarded_to_origin =
         v_parameters_in_cache_key_and_forwarded_to_origin;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_parameters_in_cache_key_and_forwarded_to_origin
         then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_parameters_in_cache_key_and_forwarded_to_origin)
               v_parameters_in_cache_key_and_forwarded_to_origin
           in
           let bnd =
             "parameters_in_cache_key_and_forwarded_to_origin", arg
           in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         match v_min_ttl with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "min_ttl", arg in
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
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
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
         match v_comment with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "comment", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : aws_cloudfront_cache_policy ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_cloudfront_cache_policy

[@@@deriving.end]

let parameters_in_cache_key_and_forwarded_to_origin__cookies_config__cookies
    ?items () :
    parameters_in_cache_key_and_forwarded_to_origin__cookies_config__cookies
    =
  { items }

let parameters_in_cache_key_and_forwarded_to_origin__cookies_config
    ?(cookies = []) ~cookie_behavior () :
    parameters_in_cache_key_and_forwarded_to_origin__cookies_config =
  { cookie_behavior; cookies }

let parameters_in_cache_key_and_forwarded_to_origin__headers_config__headers
    ?items () :
    parameters_in_cache_key_and_forwarded_to_origin__headers_config__headers
    =
  { items }

let parameters_in_cache_key_and_forwarded_to_origin__headers_config
    ?header_behavior ?(headers = []) () :
    parameters_in_cache_key_and_forwarded_to_origin__headers_config =
  { header_behavior; headers }

let parameters_in_cache_key_and_forwarded_to_origin__query_strings_config__query_strings
    ?items () :
    parameters_in_cache_key_and_forwarded_to_origin__query_strings_config__query_strings
    =
  { items }

let parameters_in_cache_key_and_forwarded_to_origin__query_strings_config
    ?(query_strings = []) ~query_string_behavior () :
    parameters_in_cache_key_and_forwarded_to_origin__query_strings_config
    =
  { query_string_behavior; query_strings }

let parameters_in_cache_key_and_forwarded_to_origin
    ?enable_accept_encoding_brotli ?enable_accept_encoding_gzip
    ~cookies_config ~headers_config ~query_strings_config () :
    parameters_in_cache_key_and_forwarded_to_origin =
  {
    enable_accept_encoding_brotli;
    enable_accept_encoding_gzip;
    cookies_config;
    headers_config;
    query_strings_config;
  }

let aws_cloudfront_cache_policy ?comment ?default_ttl ?id ?max_ttl
    ?min_ttl ~name ~parameters_in_cache_key_and_forwarded_to_origin
    () : aws_cloudfront_cache_policy =
  {
    comment;
    default_ttl;
    id;
    max_ttl;
    min_ttl;
    name;
    parameters_in_cache_key_and_forwarded_to_origin;
  }

type t = {
  tf_name : string;
  comment : string prop;
  default_ttl : float prop;
  etag : string prop;
  id : string prop;
  max_ttl : float prop;
  min_ttl : float prop;
  name : string prop;
}

let make ?comment ?default_ttl ?id ?max_ttl ?min_ttl ~name
    ~parameters_in_cache_key_and_forwarded_to_origin __id =
  let __type = "aws_cloudfront_cache_policy" in
  let __attrs =
    ({
       tf_name = __id;
       comment = Prop.computed __type __id "comment";
       default_ttl = Prop.computed __type __id "default_ttl";
       etag = Prop.computed __type __id "etag";
       id = Prop.computed __type __id "id";
       max_ttl = Prop.computed __type __id "max_ttl";
       min_ttl = Prop.computed __type __id "min_ttl";
       name = Prop.computed __type __id "name";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_cloudfront_cache_policy
        (aws_cloudfront_cache_policy ?comment ?default_ttl ?id
           ?max_ttl ?min_ttl ~name
           ~parameters_in_cache_key_and_forwarded_to_origin ());
    attrs = __attrs;
  }

let register ?tf_module ?comment ?default_ttl ?id ?max_ttl ?min_ttl
    ~name ~parameters_in_cache_key_and_forwarded_to_origin __id =
  let (r : _ Tf_core.resource) =
    make ?comment ?default_ttl ?id ?max_ttl ?min_ttl ~name
      ~parameters_in_cache_key_and_forwarded_to_origin __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
