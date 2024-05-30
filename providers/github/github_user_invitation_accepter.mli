(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type github_user_invitation_accepter

val github_user_invitation_accepter :
  ?allow_empty_id:bool prop ->
  ?id:string prop ->
  ?invitation_id:string prop ->
  unit ->
  github_user_invitation_accepter

val yojson_of_github_user_invitation_accepter :
  github_user_invitation_accepter -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  allow_empty_id : bool prop;
  id : string prop;
  invitation_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?allow_empty_id:bool prop ->
  ?id:string prop ->
  ?invitation_id:string prop ->
  string ->
  t

val make :
  ?allow_empty_id:bool prop ->
  ?id:string prop ->
  ?invitation_id:string prop ->
  string ->
  t Tf_core.resource
