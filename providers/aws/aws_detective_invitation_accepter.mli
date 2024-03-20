(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_detective_invitation_accepter

val aws_detective_invitation_accepter :
  ?id:string prop ->
  graph_arn:string prop ->
  unit ->
  aws_detective_invitation_accepter

val yojson_of_aws_detective_invitation_accepter :
  aws_detective_invitation_accepter -> json

(** RESOURCE REGISTRATION *)

type t = private { graph_arn : string prop; id : string prop }

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  graph_arn:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  graph_arn:string prop ->
  string ->
  t Tf_core.resource
