(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts : ?create:string prop -> unit -> timeouts

type aws_guardduty_invite_accepter

val aws_guardduty_invite_accepter :
  ?id:string prop ->
  ?timeouts:timeouts ->
  detector_id:string prop ->
  master_account_id:string prop ->
  unit ->
  aws_guardduty_invite_accepter

val yojson_of_aws_guardduty_invite_accepter :
  aws_guardduty_invite_accepter -> json

(** RESOURCE REGISTRATION *)

type t = private {
  detector_id : string prop;
  id : string prop;
  master_account_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  detector_id:string prop ->
  master_account_id:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?timeouts:timeouts ->
  detector_id:string prop ->
  master_account_id:string prop ->
  string ->
  t Tf_core.resource
