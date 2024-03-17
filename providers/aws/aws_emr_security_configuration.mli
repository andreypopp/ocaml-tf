(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_emr_security_configuration

type t = private {
  configuration : string prop;
  creation_date : string prop;
  id : string prop;
  name : string prop;
  name_prefix : string prop;
}

val aws_emr_security_configuration :
  ?id:string prop ->
  ?name:string prop ->
  ?name_prefix:string prop ->
  configuration:string prop ->
  string ->
  t
