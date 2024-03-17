(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_vpc_endpoint_service_allowed_principal

type t = private {
  id : string prop;
  principal_arn : string prop;
  vpc_endpoint_service_id : string prop;
}

val aws_vpc_endpoint_service_allowed_principal :
  ?id:string prop ->
  principal_arn:string prop ->
  vpc_endpoint_service_id:string prop ->
  string ->
  t
