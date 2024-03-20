(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_securityhub_standards_subscription

val aws_securityhub_standards_subscription :
  ?id:string prop ->
  standards_arn:string prop ->
  unit ->
  aws_securityhub_standards_subscription

val yojson_of_aws_securityhub_standards_subscription :
  aws_securityhub_standards_subscription -> json

(** RESOURCE REGISTRATION *)

type t = private { id : string prop; standards_arn : string prop }

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  standards_arn:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  standards_arn:string prop ->
  string ->
  t Tf_core.resource
