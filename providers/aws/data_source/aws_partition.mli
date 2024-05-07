(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_partition

val aws_partition : ?id:string prop -> unit -> aws_partition
val yojson_of_aws_partition : aws_partition -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  dns_suffix : string prop;
  id : string prop;
  partition : string prop;
  reverse_dns_prefix : string prop;
}

val register : ?tf_module:tf_module -> ?id:string prop -> string -> t
val make : ?id:string prop -> string -> t Tf_core.resource
