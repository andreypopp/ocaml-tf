(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type auth_parameters__api_key = {
  key : string prop;  (** key *)
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** auth_parameters__api_key *)

type auth_parameters__basic = {
  password : string prop;  (** password *)
  username : string prop;  (** username *)
}
[@@deriving yojson_of]
(** auth_parameters__basic *)

type auth_parameters__invocation_http_parameters__body = {
  is_value_secret : bool prop option; [@option]
      (** is_value_secret *)
  key : string prop option; [@option]  (** key *)
  value : string prop option; [@option]  (** value *)
}
[@@deriving yojson_of]
(** auth_parameters__invocation_http_parameters__body *)

type auth_parameters__invocation_http_parameters__header = {
  is_value_secret : bool prop option; [@option]
      (** is_value_secret *)
  key : string prop option; [@option]  (** key *)
  value : string prop option; [@option]  (** value *)
}
[@@deriving yojson_of]
(** auth_parameters__invocation_http_parameters__header *)

type auth_parameters__invocation_http_parameters__query_string = {
  is_value_secret : bool prop option; [@option]
      (** is_value_secret *)
  key : string prop option; [@option]  (** key *)
  value : string prop option; [@option]  (** value *)
}
[@@deriving yojson_of]
(** auth_parameters__invocation_http_parameters__query_string *)

type auth_parameters__invocation_http_parameters = {
  body : auth_parameters__invocation_http_parameters__body list;
  header : auth_parameters__invocation_http_parameters__header list;
  query_string :
    auth_parameters__invocation_http_parameters__query_string list;
}
[@@deriving yojson_of]
(** auth_parameters__invocation_http_parameters *)

type auth_parameters__oauth__client_parameters = {
  client_id : string prop;  (** client_id *)
  client_secret : string prop;  (** client_secret *)
}
[@@deriving yojson_of]
(** auth_parameters__oauth__client_parameters *)

type auth_parameters__oauth__oauth_http_parameters__body = {
  is_value_secret : bool prop option; [@option]
      (** is_value_secret *)
  key : string prop option; [@option]  (** key *)
  value : string prop option; [@option]  (** value *)
}
[@@deriving yojson_of]
(** auth_parameters__oauth__oauth_http_parameters__body *)

type auth_parameters__oauth__oauth_http_parameters__header = {
  is_value_secret : bool prop option; [@option]
      (** is_value_secret *)
  key : string prop option; [@option]  (** key *)
  value : string prop option; [@option]  (** value *)
}
[@@deriving yojson_of]
(** auth_parameters__oauth__oauth_http_parameters__header *)

type auth_parameters__oauth__oauth_http_parameters__query_string = {
  is_value_secret : bool prop option; [@option]
      (** is_value_secret *)
  key : string prop option; [@option]  (** key *)
  value : string prop option; [@option]  (** value *)
}
[@@deriving yojson_of]
(** auth_parameters__oauth__oauth_http_parameters__query_string *)

type auth_parameters__oauth__oauth_http_parameters = {
  body : auth_parameters__oauth__oauth_http_parameters__body list;
  header :
    auth_parameters__oauth__oauth_http_parameters__header list;
  query_string :
    auth_parameters__oauth__oauth_http_parameters__query_string list;
}
[@@deriving yojson_of]
(** auth_parameters__oauth__oauth_http_parameters *)

type auth_parameters__oauth = {
  authorization_endpoint : string prop;
      (** authorization_endpoint *)
  http_method : string prop;  (** http_method *)
  client_parameters : auth_parameters__oauth__client_parameters list;
  oauth_http_parameters :
    auth_parameters__oauth__oauth_http_parameters list;
}
[@@deriving yojson_of]
(** auth_parameters__oauth *)

type auth_parameters = {
  api_key : auth_parameters__api_key list;
  basic : auth_parameters__basic list;
  invocation_http_parameters :
    auth_parameters__invocation_http_parameters list;
  oauth : auth_parameters__oauth list;
}
[@@deriving yojson_of]
(** auth_parameters *)

type aws_cloudwatch_event_connection = {
  authorization_type : string prop;  (** authorization_type *)
  description : string prop option; [@option]  (** description *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  auth_parameters : auth_parameters list;
}
[@@deriving yojson_of]
(** aws_cloudwatch_event_connection *)

let auth_parameters__api_key ~key ~value () :
    auth_parameters__api_key =
  { key; value }

let auth_parameters__basic ~password ~username () :
    auth_parameters__basic =
  { password; username }

let auth_parameters__invocation_http_parameters__body
    ?is_value_secret ?key ?value () :
    auth_parameters__invocation_http_parameters__body =
  { is_value_secret; key; value }

let auth_parameters__invocation_http_parameters__header
    ?is_value_secret ?key ?value () :
    auth_parameters__invocation_http_parameters__header =
  { is_value_secret; key; value }

let auth_parameters__invocation_http_parameters__query_string
    ?is_value_secret ?key ?value () :
    auth_parameters__invocation_http_parameters__query_string =
  { is_value_secret; key; value }

let auth_parameters__invocation_http_parameters ~body ~header
    ~query_string () : auth_parameters__invocation_http_parameters =
  { body; header; query_string }

let auth_parameters__oauth__client_parameters ~client_id
    ~client_secret () : auth_parameters__oauth__client_parameters =
  { client_id; client_secret }

let auth_parameters__oauth__oauth_http_parameters__body
    ?is_value_secret ?key ?value () :
    auth_parameters__oauth__oauth_http_parameters__body =
  { is_value_secret; key; value }

let auth_parameters__oauth__oauth_http_parameters__header
    ?is_value_secret ?key ?value () :
    auth_parameters__oauth__oauth_http_parameters__header =
  { is_value_secret; key; value }

let auth_parameters__oauth__oauth_http_parameters__query_string
    ?is_value_secret ?key ?value () :
    auth_parameters__oauth__oauth_http_parameters__query_string =
  { is_value_secret; key; value }

let auth_parameters__oauth__oauth_http_parameters ~body ~header
    ~query_string () : auth_parameters__oauth__oauth_http_parameters
    =
  { body; header; query_string }

let auth_parameters__oauth ~authorization_endpoint ~http_method
    ~client_parameters ~oauth_http_parameters () :
    auth_parameters__oauth =
  {
    authorization_endpoint;
    http_method;
    client_parameters;
    oauth_http_parameters;
  }

let auth_parameters ~api_key ~basic ~invocation_http_parameters
    ~oauth () : auth_parameters =
  { api_key; basic; invocation_http_parameters; oauth }

let aws_cloudwatch_event_connection ?description ?id
    ~authorization_type ~name ~auth_parameters () :
    aws_cloudwatch_event_connection =
  { authorization_type; description; id; name; auth_parameters }

type t = {
  arn : string prop;
  authorization_type : string prop;
  description : string prop;
  id : string prop;
  name : string prop;
  secret_arn : string prop;
}

let make ?description ?id ~authorization_type ~name ~auth_parameters
    __id =
  let __type = "aws_cloudwatch_event_connection" in
  let __attrs =
    ({
       arn = Prop.computed __type __id "arn";
       authorization_type =
         Prop.computed __type __id "authorization_type";
       description = Prop.computed __type __id "description";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       secret_arn = Prop.computed __type __id "secret_arn";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_cloudwatch_event_connection
        (aws_cloudwatch_event_connection ?description ?id
           ~authorization_type ~name ~auth_parameters ());
    attrs = __attrs;
  }

let register ?tf_module ?description ?id ~authorization_type ~name
    ~auth_parameters __id =
  let (r : _ Tf_core.resource) =
    make ?description ?id ~authorization_type ~name ~auth_parameters
      __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
