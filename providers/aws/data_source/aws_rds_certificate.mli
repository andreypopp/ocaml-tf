(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_rds_certificate

val aws_rds_certificate :
  ?id:string prop ->
  ?latest_valid_till:bool prop ->
  unit ->
  aws_rds_certificate

val yojson_of_aws_rds_certificate : aws_rds_certificate -> json

(** RESOURCE REGISTRATION *)

type t = private {
  arn : string prop;
  certificate_type : string prop;
  customer_override : bool prop;
  customer_override_valid_till : string prop;
  id : string prop;
  latest_valid_till : bool prop;
  thumbprint : string prop;
  valid_from : string prop;
  valid_till : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?latest_valid_till:bool prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?latest_valid_till:bool prop ->
  string ->
  t Tf_core.resource
