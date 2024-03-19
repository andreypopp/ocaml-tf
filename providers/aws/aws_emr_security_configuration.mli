(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

(** RESOURCE SERIALIZATION *)

type aws_emr_security_configuration

val aws_emr_security_configuration :
  ?id:string prop ->
  ?name:string prop ->
  ?name_prefix:string prop ->
  configuration:string prop ->
  unit ->
  aws_emr_security_configuration

val yojson_of_aws_emr_security_configuration :
  aws_emr_security_configuration -> json

(** RESOURCE REGISTRATION *)

type t = private {
  configuration : string prop;
  creation_date : string prop;
  id : string prop;
  name : string prop;
  name_prefix : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?name:string prop ->
  ?name_prefix:string prop ->
  configuration:string prop ->
  string ->
  t
