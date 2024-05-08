(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type cookies_config__cookies = {
  items : string prop list option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : cookies_config__cookies) -> ()

let yojson_of_cookies_config__cookies =
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
    : cookies_config__cookies -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_cookies_config__cookies

[@@@deriving.end]

type cookies_config = {
  cookie_behavior : string prop;
  cookies : cookies_config__cookies list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : cookies_config) -> ()

let yojson_of_cookies_config =
  (function
   | { cookie_behavior = v_cookie_behavior; cookies = v_cookies } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_cookies then bnds
         else
           let arg =
             (yojson_of_list yojson_of_cookies_config__cookies)
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
    : cookies_config -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_cookies_config

[@@@deriving.end]

type headers_config__headers = {
  items : string prop list option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : headers_config__headers) -> ()

let yojson_of_headers_config__headers =
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
    : headers_config__headers -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_headers_config__headers

[@@@deriving.end]

type headers_config = {
  header_behavior : string prop option; [@option]
  headers : headers_config__headers list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : headers_config) -> ()

let yojson_of_headers_config =
  (function
   | { header_behavior = v_header_behavior; headers = v_headers } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_headers then bnds
         else
           let arg =
             (yojson_of_list yojson_of_headers_config__headers)
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
    : headers_config -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_headers_config

[@@@deriving.end]

type query_strings_config__query_strings = {
  items : string prop list option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : query_strings_config__query_strings) -> ()

let yojson_of_query_strings_config__query_strings =
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
    : query_strings_config__query_strings ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_query_strings_config__query_strings

[@@@deriving.end]

type query_strings_config = {
  query_string_behavior : string prop;
  query_strings : query_strings_config__query_strings list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : query_strings_config) -> ()

let yojson_of_query_strings_config =
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
                yojson_of_query_strings_config__query_strings)
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
    : query_strings_config -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_query_strings_config

[@@@deriving.end]

type aws_cloudfront_origin_request_policy = {
  comment : string prop option; [@option]
  id : string prop option; [@option]
  name : string prop;
  cookies_config : cookies_config list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  headers_config : headers_config list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  query_strings_config : query_strings_config list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_cloudfront_origin_request_policy) -> ()

let yojson_of_aws_cloudfront_origin_request_policy =
  (function
   | {
       comment = v_comment;
       id = v_id;
       name = v_name;
       cookies_config = v_cookies_config;
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
             (yojson_of_list yojson_of_query_strings_config)
               v_query_strings_config
           in
           let bnd = "query_strings_config", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_headers_config then bnds
         else
           let arg =
             (yojson_of_list yojson_of_headers_config)
               v_headers_config
           in
           let bnd = "headers_config", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_cookies_config then bnds
         else
           let arg =
             (yojson_of_list yojson_of_cookies_config)
               v_cookies_config
           in
           let bnd = "cookies_config", arg in
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
         match v_comment with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "comment", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : aws_cloudfront_origin_request_policy ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_cloudfront_origin_request_policy

[@@@deriving.end]

let cookies_config__cookies ?items () : cookies_config__cookies =
  { items }

let cookies_config ?(cookies = []) ~cookie_behavior () :
    cookies_config =
  { cookie_behavior; cookies }

let headers_config__headers ?items () : headers_config__headers =
  { items }

let headers_config ?header_behavior ?(headers = []) () :
    headers_config =
  { header_behavior; headers }

let query_strings_config__query_strings ?items () :
    query_strings_config__query_strings =
  { items }

let query_strings_config ?(query_strings = []) ~query_string_behavior
    () : query_strings_config =
  { query_string_behavior; query_strings }

let aws_cloudfront_origin_request_policy ?comment ?id ~name
    ~cookies_config ~headers_config ~query_strings_config () :
    aws_cloudfront_origin_request_policy =
  {
    comment;
    id;
    name;
    cookies_config;
    headers_config;
    query_strings_config;
  }

type t = {
  tf_name : string;
  comment : string prop;
  etag : string prop;
  id : string prop;
  name : string prop;
}

let make ?comment ?id ~name ~cookies_config ~headers_config
    ~query_strings_config __id =
  let __type = "aws_cloudfront_origin_request_policy" in
  let __attrs =
    ({
       tf_name = __id;
       comment = Prop.computed __type __id "comment";
       etag = Prop.computed __type __id "etag";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_cloudfront_origin_request_policy
        (aws_cloudfront_origin_request_policy ?comment ?id ~name
           ~cookies_config ~headers_config ~query_strings_config ());
    attrs = __attrs;
  }

let register ?tf_module ?comment ?id ~name ~cookies_config
    ~headers_config ~query_strings_config __id =
  let (r : _ Tf_core.resource) =
    make ?comment ?id ~name ~cookies_config ~headers_config
      ~query_strings_config __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
