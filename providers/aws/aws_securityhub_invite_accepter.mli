(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_securityhub_invite_accepter

val aws_securityhub_invite_accepter :
  ?id:string prop ->
  master_id:string prop ->
  unit ->
  aws_securityhub_invite_accepter

val yojson_of_aws_securityhub_invite_accepter :
  aws_securityhub_invite_accepter -> json

(** RESOURCE REGISTRATION *)

type t = private {
  id : string prop;
  invitation_id : string prop;
  master_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  master_id:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  master_id:string prop ->
  string ->
  t Tf_core.resource
