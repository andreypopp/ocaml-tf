(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type cors_configuration = {
  allow_credentials : bool prop;  (** allow_credentials *)
  allow_headers : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** allow_headers *)
  allow_methods : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** allow_methods *)
  allow_origins : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** allow_origins *)
  expose_headers : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** expose_headers *)
  max_age : float prop;  (** max_age *)
}

type aws_apigatewayv2_api

val aws_apigatewayv2_api :
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  api_id:string prop ->
  unit ->
  aws_apigatewayv2_api

val yojson_of_aws_apigatewayv2_api : aws_apigatewayv2_api -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  api_endpoint : string prop;
  api_id : string prop;
  api_key_selection_expression : string prop;
  arn : string prop;
  cors_configuration : cors_configuration list prop;
  description : string prop;
  disable_execute_api_endpoint : bool prop;
  execution_arn : string prop;
  id : string prop;
  name : string prop;
  protocol_type : string prop;
  route_selection_expression : string prop;
  tags : (string * string) list prop;
  version : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  api_id:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  api_id:string prop ->
  string ->
  t Tf_core.resource
