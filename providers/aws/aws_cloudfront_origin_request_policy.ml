(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type cookies_config__cookies = {
  items : string prop list option; [@option]  (** items *)
}
[@@deriving yojson_of]
(** cookies_config__cookies *)

type cookies_config = {
  cookie_behavior : string prop;  (** cookie_behavior *)
  cookies : cookies_config__cookies list;
}
[@@deriving yojson_of]
(** cookies_config *)

type headers_config__headers = {
  items : string prop list option; [@option]  (** items *)
}
[@@deriving yojson_of]
(** headers_config__headers *)

type headers_config = {
  header_behavior : string prop option; [@option]
      (** header_behavior *)
  headers : headers_config__headers list;
}
[@@deriving yojson_of]
(** headers_config *)

type query_strings_config__query_strings = {
  items : string prop list option; [@option]  (** items *)
}
[@@deriving yojson_of]
(** query_strings_config__query_strings *)

type query_strings_config = {
  query_string_behavior : string prop;  (** query_string_behavior *)
  query_strings : query_strings_config__query_strings list;
}
[@@deriving yojson_of]
(** query_strings_config *)

type aws_cloudfront_origin_request_policy = {
  comment : string prop option; [@option]  (** comment *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  cookies_config : cookies_config list;
  headers_config : headers_config list;
  query_strings_config : query_strings_config list;
}
[@@deriving yojson_of]
(** aws_cloudfront_origin_request_policy *)

let cookies_config__cookies ?items () : cookies_config__cookies =
  { items }

let cookies_config ~cookie_behavior ~cookies () : cookies_config =
  { cookie_behavior; cookies }

let headers_config__headers ?items () : headers_config__headers =
  { items }

let headers_config ?header_behavior ~headers () : headers_config =
  { header_behavior; headers }

let query_strings_config__query_strings ?items () :
    query_strings_config__query_strings =
  { items }

let query_strings_config ~query_string_behavior ~query_strings () :
    query_strings_config =
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
