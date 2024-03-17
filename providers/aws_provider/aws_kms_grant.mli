(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_kms_grant__constraints
type aws_kms_grant

val aws_kms_grant :
  ?grant_creation_tokens:string list ->
  ?name:string ->
  ?retire_on_delete:bool ->
  ?retiring_principal:string ->
  grantee_principal:string ->
  key_id:string ->
  operations:string list ->
  constraints:aws_kms_grant__constraints list ->
  string ->
  unit
