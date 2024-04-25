(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type source

val source :
  ?accounts:string prop list ->
  ?source_version:string prop ->
  regions:string prop list ->
  source_name:string prop ->
  unit ->
  source

type aws_securitylake_aws_log_source

val aws_securitylake_aws_log_source :
  ?source:source list -> unit -> aws_securitylake_aws_log_source

val yojson_of_aws_securitylake_aws_log_source :
  aws_securitylake_aws_log_source -> json

(** RESOURCE REGISTRATION *)

type t = private { id : string prop }

val register :
  ?tf_module:tf_module -> ?source:source list -> string -> t

val make : ?source:source list -> string -> t Tf_core.resource
