(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

(** RESOURCE SERIALIZATION *)

type aws_simpledb_domain

val aws_simpledb_domain :
  name:string prop -> unit -> aws_simpledb_domain

val yojson_of_aws_simpledb_domain : aws_simpledb_domain -> json

(** RESOURCE REGISTRATION *)

type t = private { id : string prop; name : string prop }

val register :
  ?tf_module:tf_module -> name:string prop -> string -> t
