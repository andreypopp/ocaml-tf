(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type auth_parameters__api_key = {
  key : string prop;
  value : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : auth_parameters__api_key) -> ()

let yojson_of_auth_parameters__api_key =
  (function
   | { key = v_key; value = v_value } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_value in
         ("value", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_key in
         ("key", arg) :: bnds
       in
       `Assoc bnds
    : auth_parameters__api_key -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_auth_parameters__api_key

[@@@deriving.end]

type auth_parameters__basic = {
  password : string prop;
  username : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : auth_parameters__basic) -> ()

let yojson_of_auth_parameters__basic =
  (function
   | { password = v_password; username = v_username } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_username in
         ("username", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_password in
         ("password", arg) :: bnds
       in
       `Assoc bnds
    : auth_parameters__basic -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_auth_parameters__basic

[@@@deriving.end]

type auth_parameters__invocation_http_parameters__body = {
  is_value_secret : bool prop option; [@option]
  key : string prop option; [@option]
  value : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : auth_parameters__invocation_http_parameters__body) -> ()

let yojson_of_auth_parameters__invocation_http_parameters__body =
  (function
   | {
       is_value_secret = v_is_value_secret;
       key = v_key;
       value = v_value;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_value with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "value", arg in
             bnd :: bnds
       in
       let bnds =
         match v_key with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "key", arg in
             bnd :: bnds
       in
       let bnds =
         match v_is_value_secret with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "is_value_secret", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : auth_parameters__invocation_http_parameters__body ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_auth_parameters__invocation_http_parameters__body

[@@@deriving.end]

type auth_parameters__invocation_http_parameters__header = {
  is_value_secret : bool prop option; [@option]
  key : string prop option; [@option]
  value : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : auth_parameters__invocation_http_parameters__header) -> ()

let yojson_of_auth_parameters__invocation_http_parameters__header =
  (function
   | {
       is_value_secret = v_is_value_secret;
       key = v_key;
       value = v_value;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_value with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "value", arg in
             bnd :: bnds
       in
       let bnds =
         match v_key with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "key", arg in
             bnd :: bnds
       in
       let bnds =
         match v_is_value_secret with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "is_value_secret", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : auth_parameters__invocation_http_parameters__header ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_auth_parameters__invocation_http_parameters__header

[@@@deriving.end]

type auth_parameters__invocation_http_parameters__query_string = {
  is_value_secret : bool prop option; [@option]
  key : string prop option; [@option]
  value : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : auth_parameters__invocation_http_parameters__query_string) ->
  ()

let yojson_of_auth_parameters__invocation_http_parameters__query_string
    =
  (function
   | {
       is_value_secret = v_is_value_secret;
       key = v_key;
       value = v_value;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_value with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "value", arg in
             bnd :: bnds
       in
       let bnds =
         match v_key with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "key", arg in
             bnd :: bnds
       in
       let bnds =
         match v_is_value_secret with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "is_value_secret", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : auth_parameters__invocation_http_parameters__query_string ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_auth_parameters__invocation_http_parameters__query_string

[@@@deriving.end]

type auth_parameters__invocation_http_parameters = {
  body : auth_parameters__invocation_http_parameters__body list;
  header : auth_parameters__invocation_http_parameters__header list;
  query_string :
    auth_parameters__invocation_http_parameters__query_string list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : auth_parameters__invocation_http_parameters) -> ()

let yojson_of_auth_parameters__invocation_http_parameters =
  (function
   | {
       body = v_body;
       header = v_header;
       query_string = v_query_string;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_auth_parameters__invocation_http_parameters__query_string
             v_query_string
         in
         ("query_string", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_auth_parameters__invocation_http_parameters__header
             v_header
         in
         ("header", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_auth_parameters__invocation_http_parameters__body
             v_body
         in
         ("body", arg) :: bnds
       in
       `Assoc bnds
    : auth_parameters__invocation_http_parameters ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_auth_parameters__invocation_http_parameters

[@@@deriving.end]

type auth_parameters__oauth__client_parameters = {
  client_id : string prop;
  client_secret : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : auth_parameters__oauth__client_parameters) -> ()

let yojson_of_auth_parameters__oauth__client_parameters =
  (function
   | { client_id = v_client_id; client_secret = v_client_secret } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_client_secret in
         ("client_secret", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_client_id in
         ("client_id", arg) :: bnds
       in
       `Assoc bnds
    : auth_parameters__oauth__client_parameters ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_auth_parameters__oauth__client_parameters

[@@@deriving.end]

type auth_parameters__oauth__oauth_http_parameters__body = {
  is_value_secret : bool prop option; [@option]
  key : string prop option; [@option]
  value : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : auth_parameters__oauth__oauth_http_parameters__body) -> ()

let yojson_of_auth_parameters__oauth__oauth_http_parameters__body =
  (function
   | {
       is_value_secret = v_is_value_secret;
       key = v_key;
       value = v_value;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_value with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "value", arg in
             bnd :: bnds
       in
       let bnds =
         match v_key with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "key", arg in
             bnd :: bnds
       in
       let bnds =
         match v_is_value_secret with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "is_value_secret", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : auth_parameters__oauth__oauth_http_parameters__body ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_auth_parameters__oauth__oauth_http_parameters__body

[@@@deriving.end]

type auth_parameters__oauth__oauth_http_parameters__header = {
  is_value_secret : bool prop option; [@option]
  key : string prop option; [@option]
  value : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : auth_parameters__oauth__oauth_http_parameters__header) ->
  ()

let yojson_of_auth_parameters__oauth__oauth_http_parameters__header =
  (function
   | {
       is_value_secret = v_is_value_secret;
       key = v_key;
       value = v_value;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_value with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "value", arg in
             bnd :: bnds
       in
       let bnds =
         match v_key with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "key", arg in
             bnd :: bnds
       in
       let bnds =
         match v_is_value_secret with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "is_value_secret", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : auth_parameters__oauth__oauth_http_parameters__header ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_auth_parameters__oauth__oauth_http_parameters__header

[@@@deriving.end]

type auth_parameters__oauth__oauth_http_parameters__query_string = {
  is_value_secret : bool prop option; [@option]
  key : string prop option; [@option]
  value : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       auth_parameters__oauth__oauth_http_parameters__query_string) ->
  ()

let yojson_of_auth_parameters__oauth__oauth_http_parameters__query_string
    =
  (function
   | {
       is_value_secret = v_is_value_secret;
       key = v_key;
       value = v_value;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_value with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "value", arg in
             bnd :: bnds
       in
       let bnds =
         match v_key with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "key", arg in
             bnd :: bnds
       in
       let bnds =
         match v_is_value_secret with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "is_value_secret", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : auth_parameters__oauth__oauth_http_parameters__query_string ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_auth_parameters__oauth__oauth_http_parameters__query_string

[@@@deriving.end]

type auth_parameters__oauth__oauth_http_parameters = {
  body : auth_parameters__oauth__oauth_http_parameters__body list;
  header :
    auth_parameters__oauth__oauth_http_parameters__header list;
  query_string :
    auth_parameters__oauth__oauth_http_parameters__query_string list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : auth_parameters__oauth__oauth_http_parameters) -> ()

let yojson_of_auth_parameters__oauth__oauth_http_parameters =
  (function
   | {
       body = v_body;
       header = v_header;
       query_string = v_query_string;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_auth_parameters__oauth__oauth_http_parameters__query_string
             v_query_string
         in
         ("query_string", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_auth_parameters__oauth__oauth_http_parameters__header
             v_header
         in
         ("header", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_auth_parameters__oauth__oauth_http_parameters__body
             v_body
         in
         ("body", arg) :: bnds
       in
       `Assoc bnds
    : auth_parameters__oauth__oauth_http_parameters ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_auth_parameters__oauth__oauth_http_parameters

[@@@deriving.end]

type auth_parameters__oauth = {
  authorization_endpoint : string prop;
  http_method : string prop;
  client_parameters : auth_parameters__oauth__client_parameters list;
  oauth_http_parameters :
    auth_parameters__oauth__oauth_http_parameters list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : auth_parameters__oauth) -> ()

let yojson_of_auth_parameters__oauth =
  (function
   | {
       authorization_endpoint = v_authorization_endpoint;
       http_method = v_http_method;
       client_parameters = v_client_parameters;
       oauth_http_parameters = v_oauth_http_parameters;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_auth_parameters__oauth__oauth_http_parameters
             v_oauth_http_parameters
         in
         ("oauth_http_parameters", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_auth_parameters__oauth__client_parameters
             v_client_parameters
         in
         ("client_parameters", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_http_method in
         ("http_method", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_authorization_endpoint
         in
         ("authorization_endpoint", arg) :: bnds
       in
       `Assoc bnds
    : auth_parameters__oauth -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_auth_parameters__oauth

[@@@deriving.end]

type auth_parameters = {
  api_key : auth_parameters__api_key list;
  basic : auth_parameters__basic list;
  invocation_http_parameters :
    auth_parameters__invocation_http_parameters list;
  oauth : auth_parameters__oauth list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : auth_parameters) -> ()

let yojson_of_auth_parameters =
  (function
   | {
       api_key = v_api_key;
       basic = v_basic;
       invocation_http_parameters = v_invocation_http_parameters;
       oauth = v_oauth;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_auth_parameters__oauth v_oauth
         in
         ("oauth", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_auth_parameters__invocation_http_parameters
             v_invocation_http_parameters
         in
         ("invocation_http_parameters", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_auth_parameters__basic v_basic
         in
         ("basic", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_auth_parameters__api_key
             v_api_key
         in
         ("api_key", arg) :: bnds
       in
       `Assoc bnds
    : auth_parameters -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_auth_parameters

[@@@deriving.end]

type aws_cloudwatch_event_connection = {
  authorization_type : string prop;
  description : string prop option; [@option]
  id : string prop option; [@option]
  name : string prop;
  auth_parameters : auth_parameters list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_cloudwatch_event_connection) -> ()

let yojson_of_aws_cloudwatch_event_connection =
  (function
   | {
       authorization_type = v_authorization_type;
       description = v_description;
       id = v_id;
       name = v_name;
       auth_parameters = v_auth_parameters;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_auth_parameters v_auth_parameters
         in
         ("auth_parameters", arg) :: bnds
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
         match v_description with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "description", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_authorization_type
         in
         ("authorization_type", arg) :: bnds
       in
       `Assoc bnds
    : aws_cloudwatch_event_connection ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_cloudwatch_event_connection

[@@@deriving.end]

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
