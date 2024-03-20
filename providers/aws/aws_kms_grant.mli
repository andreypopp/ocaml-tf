(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type constraints

val constraints :
  ?encryption_context_equals:(string * string prop) list ->
  ?encryption_context_subset:(string * string prop) list ->
  unit ->
  constraints

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
  constraints:constraints list ->
  unit ->
  aws_kms_grant

val yojson_of_aws_kms_grant : aws_kms_grant -> json

(** RESOURCE REGISTRATION *)

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

val register :
  ?tf_module:tf_module ->
  ?grant_creation_tokens:string prop list ->
  ?id:string prop ->
  ?name:string prop ->
  ?retire_on_delete:bool prop ->
  ?retiring_principal:string prop ->
  grantee_principal:string prop ->
  key_id:string prop ->
  operations:string prop list ->
  constraints:constraints list ->
  string ->
  t

val make :
  ?grant_creation_tokens:string prop list ->
  ?id:string prop ->
  ?name:string prop ->
  ?retire_on_delete:bool prop ->
  ?retiring_principal:string prop ->
  grantee_principal:string prop ->
  key_id:string prop ->
  operations:string prop list ->
  constraints:constraints list ->
  string ->
  t Tf_core.resource
