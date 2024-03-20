(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_detective_organization_admin_account

val aws_detective_organization_admin_account :
  ?id:string prop ->
  account_id:string prop ->
  unit ->
  aws_detective_organization_admin_account

val yojson_of_aws_detective_organization_admin_account :
  aws_detective_organization_admin_account -> json

(** RESOURCE REGISTRATION *)

type t = private { account_id : string prop; id : string prop }

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  account_id:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  account_id:string prop ->
  string ->
  t Tf_core.resource
