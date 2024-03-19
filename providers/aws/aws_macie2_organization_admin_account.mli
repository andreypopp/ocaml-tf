(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

(** RESOURCE SERIALIZATION *)

type aws_macie2_organization_admin_account

val aws_macie2_organization_admin_account :
  ?id:string prop ->
  admin_account_id:string prop ->
  unit ->
  aws_macie2_organization_admin_account

val yojson_of_aws_macie2_organization_admin_account :
  aws_macie2_organization_admin_account -> json

(** RESOURCE REGISTRATION *)

type t = private { admin_account_id : string prop; id : string prop }

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  admin_account_id:string prop ->
  string ->
  t
