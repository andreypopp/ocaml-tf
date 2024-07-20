(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_rds_certificate

val aws_rds_certificate :
  ?id:string prop ->
  certificate_identifier:string prop ->
  unit ->
  aws_rds_certificate

val yojson_of_aws_rds_certificate : aws_rds_certificate -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  certificate_identifier : string prop;
  id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  certificate_identifier:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  certificate_identifier:string prop ->
  string ->
  t Tf_core.resource
