(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_canonical_user_id

val aws_canonical_user_id :
  ?id:string prop -> unit -> aws_canonical_user_id

val yojson_of_aws_canonical_user_id : aws_canonical_user_id -> json

(** RESOURCE REGISTRATION *)

type t = private { display_name : string prop; id : string prop }

val register : ?tf_module:tf_module -> ?id:string prop -> string -> t
val make : ?id:string prop -> string -> t Tf_core.resource
