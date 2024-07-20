(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_redshiftserverless_custom_domain_association

val aws_redshiftserverless_custom_domain_association :
  custom_domain_certificate_arn:string prop ->
  custom_domain_name:string prop ->
  workgroup_name:string prop ->
  unit ->
  aws_redshiftserverless_custom_domain_association

val yojson_of_aws_redshiftserverless_custom_domain_association :
  aws_redshiftserverless_custom_domain_association -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  custom_domain_certificate_arn : string prop;
  custom_domain_certificate_expiry_time : string prop;
  custom_domain_name : string prop;
  id : string prop;
  workgroup_name : string prop;
}

val register :
  ?tf_module:tf_module ->
  custom_domain_certificate_arn:string prop ->
  custom_domain_name:string prop ->
  workgroup_name:string prop ->
  string ->
  t

val make :
  custom_domain_certificate_arn:string prop ->
  custom_domain_name:string prop ->
  workgroup_name:string prop ->
  string ->
  t Tf_core.resource
