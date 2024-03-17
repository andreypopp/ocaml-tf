(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_appconfig_extension_association

val aws_appconfig_extension_association :
  ?id:string prop ->
  ?parameters:(string * string prop) list ->
  extension_arn:string prop ->
  resource_arn:string prop ->
  string ->
  unit
