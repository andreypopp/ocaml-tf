(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts : ?create:string prop -> unit -> timeouts

type aws_macie2_invitation_accepter

val aws_macie2_invitation_accepter :
  ?id:string prop ->
  ?timeouts:timeouts ->
  administrator_account_id:string prop ->
  unit ->
  aws_macie2_invitation_accepter

val yojson_of_aws_macie2_invitation_accepter :
  aws_macie2_invitation_accepter -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  administrator_account_id : string prop;
  id : string prop;
  invitation_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  administrator_account_id:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?timeouts:timeouts ->
  administrator_account_id:string prop ->
  string ->
  t Tf_core.resource
