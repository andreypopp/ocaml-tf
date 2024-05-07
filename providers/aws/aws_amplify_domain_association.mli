(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type sub_domain

val sub_domain :
  branch_name:string prop -> prefix:string prop -> unit -> sub_domain

type aws_amplify_domain_association

val aws_amplify_domain_association :
  ?enable_auto_sub_domain:bool prop ->
  ?id:string prop ->
  ?wait_for_verification:bool prop ->
  app_id:string prop ->
  domain_name:string prop ->
  sub_domain:sub_domain list ->
  unit ->
  aws_amplify_domain_association

val yojson_of_aws_amplify_domain_association :
  aws_amplify_domain_association -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  app_id : string prop;
  arn : string prop;
  certificate_verification_dns_record : string prop;
  domain_name : string prop;
  enable_auto_sub_domain : bool prop;
  id : string prop;
  wait_for_verification : bool prop;
}

val register :
  ?tf_module:tf_module ->
  ?enable_auto_sub_domain:bool prop ->
  ?id:string prop ->
  ?wait_for_verification:bool prop ->
  app_id:string prop ->
  domain_name:string prop ->
  sub_domain:sub_domain list ->
  string ->
  t

val make :
  ?enable_auto_sub_domain:bool prop ->
  ?id:string prop ->
  ?wait_for_verification:bool prop ->
  app_id:string prop ->
  domain_name:string prop ->
  sub_domain:sub_domain list ->
  string ->
  t Tf_core.resource
