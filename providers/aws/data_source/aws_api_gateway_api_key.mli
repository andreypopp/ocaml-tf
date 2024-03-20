(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_api_gateway_api_key

val aws_api_gateway_api_key :
  ?tags:(string * string prop) list ->
  id:string prop ->
  unit ->
  aws_api_gateway_api_key

val yojson_of_aws_api_gateway_api_key :
  aws_api_gateway_api_key -> json

(** RESOURCE REGISTRATION *)

type t = private {
  created_date : string prop;
  customer_id : string prop;
  description : string prop;
  enabled : bool prop;
  id : string prop;
  last_updated_date : string prop;
  name : string prop;
  tags : (string * string) list prop;
  value : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?tags:(string * string prop) list ->
  id:string prop ->
  string ->
  t

val make :
  ?tags:(string * string prop) list ->
  id:string prop ->
  string ->
  t Tf_core.resource
