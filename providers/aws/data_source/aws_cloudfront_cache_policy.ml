(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type parameters_in_cache_key_and_forwarded_to_origin__query_strings_config__query_strings = {
  items : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
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
         if Stdlib.( = ) [] v_items then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_items
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
      [@default []] [@yojson_drop_default Stdlib.( = )]
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
         if Stdlib.( = ) [] v_query_strings then bnds
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

type parameters_in_cache_key_and_forwarded_to_origin__headers_config__headers = {
  items : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
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
         if Stdlib.( = ) [] v_items then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_items
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
  header_behavior : string prop;
  headers :
    parameters_in_cache_key_and_forwarded_to_origin__headers_config__headers
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
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
         if Stdlib.( = ) [] v_headers then bnds
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
         let arg =
           yojson_of_prop yojson_of_string v_header_behavior
         in
         ("header_behavior", arg) :: bnds
       in
       `Assoc bnds
    : parameters_in_cache_key_and_forwarded_to_origin__headers_config ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_parameters_in_cache_key_and_forwarded_to_origin__headers_config

[@@@deriving.end]

type parameters_in_cache_key_and_forwarded_to_origin__cookies_config__cookies = {
  items : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
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
         if Stdlib.( = ) [] v_items then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_items
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
      [@default []] [@yojson_drop_default Stdlib.( = )]
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
         if Stdlib.( = ) [] v_cookies then bnds
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

type parameters_in_cache_key_and_forwarded_to_origin = {
  cookies_config :
    parameters_in_cache_key_and_forwarded_to_origin__cookies_config
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  enable_accept_encoding_brotli : bool prop;
  enable_accept_encoding_gzip : bool prop;
  headers_config :
    parameters_in_cache_key_and_forwarded_to_origin__headers_config
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  query_strings_config :
    parameters_in_cache_key_and_forwarded_to_origin__query_strings_config
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : parameters_in_cache_key_and_forwarded_to_origin) -> ()

let yojson_of_parameters_in_cache_key_and_forwarded_to_origin =
  (function
   | {
       cookies_config = v_cookies_config;
       enable_accept_encoding_brotli =
         v_enable_accept_encoding_brotli;
       enable_accept_encoding_gzip = v_enable_accept_encoding_gzip;
       headers_config = v_headers_config;
       query_strings_config = v_query_strings_config;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_query_strings_config then bnds
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
         if Stdlib.( = ) [] v_headers_config then bnds
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
         let arg =
           yojson_of_prop yojson_of_bool
             v_enable_accept_encoding_gzip
         in
         ("enable_accept_encoding_gzip", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_bool
             v_enable_accept_encoding_brotli
         in
         ("enable_accept_encoding_brotli", arg) :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_cookies_config then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_parameters_in_cache_key_and_forwarded_to_origin__cookies_config)
               v_cookies_config
           in
           let bnd = "cookies_config", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : parameters_in_cache_key_and_forwarded_to_origin ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_parameters_in_cache_key_and_forwarded_to_origin

[@@@deriving.end]

type aws_cloudfront_cache_policy = {
  id : string prop option; [@option]
  name : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_cloudfront_cache_policy) -> ()

let yojson_of_aws_cloudfront_cache_policy =
  (function
   | { id = v_id; name = v_name } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
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
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : aws_cloudfront_cache_policy ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_cloudfront_cache_policy

[@@@deriving.end]

let aws_cloudfront_cache_policy ?id ?name () :
    aws_cloudfront_cache_policy =
  { id; name }

type t = {
  tf_name : string;
  comment : string prop;
  default_ttl : float prop;
  etag : string prop;
  id : string prop;
  max_ttl : float prop;
  min_ttl : float prop;
  name : string prop;
  parameters_in_cache_key_and_forwarded_to_origin :
    parameters_in_cache_key_and_forwarded_to_origin list prop;
}

let make ?id ?name __id =
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
       parameters_in_cache_key_and_forwarded_to_origin =
         Prop.computed __type __id
           "parameters_in_cache_key_and_forwarded_to_origin";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_cloudfront_cache_policy
        (aws_cloudfront_cache_policy ?id ?name ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?name __id =
  let (r : _ Tf_core.resource) = make ?id ?name __id in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
