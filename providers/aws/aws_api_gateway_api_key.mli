(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_api_gateway_api_key

val aws_api_gateway_api_key :
  ?customer_id:string prop ->
  ?description:string prop ->
  ?enabled:bool prop ->
  ?id:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  ?value:string prop ->
  name:string prop ->
  unit ->
  aws_api_gateway_api_key

val yojson_of_aws_api_gateway_api_key :
  aws_api_gateway_api_key -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  arn : string prop;
  created_date : string prop;
  customer_id : string prop;
  description : string prop;
  enabled : bool prop;
  id : string prop;
  last_updated_date : string prop;
  name : string prop;
  tags : string Tf_core.assoc prop;
  tags_all : string Tf_core.assoc prop;
  value : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?customer_id:string prop ->
  ?description:string prop ->
  ?enabled:bool prop ->
  ?id:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  ?value:string prop ->
  name:string prop ->
  string ->
  t

val make :
  ?customer_id:string prop ->
  ?description:string prop ->
  ?enabled:bool prop ->
  ?id:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  ?value:string prop ->
  name:string prop ->
  string ->
  t Tf_core.resource
