(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_licensemanager_association

val aws_licensemanager_association :
  ?id:string prop ->
  license_configuration_arn:string prop ->
  resource_arn:string prop ->
  unit ->
  aws_licensemanager_association

val yojson_of_aws_licensemanager_association :
  aws_licensemanager_association -> json

(** RESOURCE REGISTRATION *)

type t = private {
  id : string prop;
  license_configuration_arn : string prop;
  resource_arn : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  license_configuration_arn:string prop ->
  resource_arn:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  license_configuration_arn:string prop ->
  resource_arn:string prop ->
  string ->
  t Tf_core.resource
