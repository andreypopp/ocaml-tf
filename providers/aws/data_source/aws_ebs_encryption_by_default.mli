(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts : ?read:string prop -> unit -> timeouts

type aws_ebs_encryption_by_default

val aws_ebs_encryption_by_default :
  ?id:string prop ->
  ?timeouts:timeouts ->
  unit ->
  aws_ebs_encryption_by_default

val yojson_of_aws_ebs_encryption_by_default :
  aws_ebs_encryption_by_default -> json

(** RESOURCE REGISTRATION *)

type t = private { enabled : bool prop; id : string prop }

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  string ->
  t

val make :
  ?id:string prop ->
  ?timeouts:timeouts ->
  string ->
  t Tf_core.resource
