(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type endpoint_configuration = {
  types : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** types *)
  vpc_endpoint_ids : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** vpc_endpoint_ids *)
}

type aws_api_gateway_rest_api

val aws_api_gateway_rest_api :
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  name:string prop ->
  unit ->
  aws_api_gateway_rest_api

val yojson_of_aws_api_gateway_rest_api :
  aws_api_gateway_rest_api -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  api_key_source : string prop;
  arn : string prop;
  binary_media_types : string list prop;
  description : string prop;
  endpoint_configuration : endpoint_configuration list prop;
  execution_arn : string prop;
  id : string prop;
  minimum_compression_size : string prop;
  name : string prop;
  policy : string prop;
  root_resource_id : string prop;
  tags : (string * string) list prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  name:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  name:string prop ->
  string ->
  t Tf_core.resource
