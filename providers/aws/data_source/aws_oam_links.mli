(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_oam_links

val aws_oam_links : ?id:string prop -> unit -> aws_oam_links
val yojson_of_aws_oam_links : aws_oam_links -> json

(** RESOURCE REGISTRATION *)

type t = private { arns : string list prop; id : string prop }

val register : ?tf_module:tf_module -> ?id:string prop -> string -> t
val make : ?id:string prop -> string -> t Tf_core.resource
