(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

(** RESOURCE SERIALIZATION *)

type aws_vpc_endpoint_connection_accepter

val aws_vpc_endpoint_connection_accepter :
  ?id:string prop ->
  vpc_endpoint_id:string prop ->
  vpc_endpoint_service_id:string prop ->
  unit ->
  aws_vpc_endpoint_connection_accepter

val yojson_of_aws_vpc_endpoint_connection_accepter :
  aws_vpc_endpoint_connection_accepter -> json

(** RESOURCE REGISTRATION *)

type t = private {
  id : string prop;
  vpc_endpoint_id : string prop;
  vpc_endpoint_service_id : string prop;
  vpc_endpoint_state : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  vpc_endpoint_id:string prop ->
  vpc_endpoint_service_id:string prop ->
  string ->
  t
