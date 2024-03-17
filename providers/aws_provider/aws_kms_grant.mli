(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_kms_grant__constraints
type aws_kms_grant

val aws_kms_grant :
  ?grant_creation_tokens:string prop list ->
  ?id:string prop ->
  ?name:string prop ->
  ?retire_on_delete:bool prop ->
  ?retiring_principal:string prop ->
  grantee_principal:string prop ->
  key_id:string prop ->
  operations:string prop list ->
  constraints:aws_kms_grant__constraints list ->
  string ->
  unit
