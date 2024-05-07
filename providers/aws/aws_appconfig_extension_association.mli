(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_appconfig_extension_association

val aws_appconfig_extension_association :
  ?id:string prop ->
  ?parameters:(string * string prop) list ->
  extension_arn:string prop ->
  resource_arn:string prop ->
  unit ->
  aws_appconfig_extension_association

val yojson_of_aws_appconfig_extension_association :
  aws_appconfig_extension_association -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  arn : string prop;
  extension_arn : string prop;
  extension_version : float prop;
  id : string prop;
  parameters : (string * string) list prop;
  resource_arn : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?parameters:(string * string prop) list ->
  extension_arn:string prop ->
  resource_arn:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?parameters:(string * string prop) list ->
  extension_arn:string prop ->
  resource_arn:string prop ->
  string ->
  t Tf_core.resource
