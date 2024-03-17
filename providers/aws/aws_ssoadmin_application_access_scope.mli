(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_ssoadmin_application_access_scope

type t = private {
  application_arn : string prop;
  authorized_targets : string list prop;
  id : string prop;
  scope : string prop;
}

val aws_ssoadmin_application_access_scope :
  ?authorized_targets:string prop list ->
  application_arn:string prop ->
  scope:string prop ->
  string ->
  t
