(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_kms_grant__constraints
type aws_kms_grant

type t = private {
  grant_creation_tokens : string list prop;
  grant_id : string prop;
  grant_token : string prop;
  grantee_principal : string prop;
  id : string prop;
  key_id : string prop;
  name : string prop;
  operations : string list prop;
  retire_on_delete : bool prop;
  retiring_principal : string prop;
}

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
  t
