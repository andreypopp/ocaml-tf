(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_appconfig_extension_association

type t = private {
  arn : string prop;
  extension_arn : string prop;
  extension_version : float prop;
  id : string prop;
  parameters : (string * string) list prop;
  resource_arn : string prop;
}

val aws_appconfig_extension_association :
  ?id:string prop ->
  ?parameters:(string * string prop) list ->
  extension_arn:string prop ->
  resource_arn:string prop ->
  string ->
  t
