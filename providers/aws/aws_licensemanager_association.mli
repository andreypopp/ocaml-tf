(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_licensemanager_association

type t = private {
  id : string prop;
  license_configuration_arn : string prop;
  resource_arn : string prop;
}

val aws_licensemanager_association :
  ?id:string prop ->
  license_configuration_arn:string prop ->
  resource_arn:string prop ->
  string ->
  t
