(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type data_shares

val data_shares : unit -> data_shares

type aws_redshift_data_shares

val aws_redshift_data_shares :
  ?data_shares:data_shares list -> unit -> aws_redshift_data_shares

val yojson_of_aws_redshift_data_shares :
  aws_redshift_data_shares -> json

(** RESOURCE REGISTRATION *)

type t = private { id : string prop }

val register :
  ?tf_module:tf_module ->
  ?data_shares:data_shares list ->
  string ->
  t

val make :
  ?data_shares:data_shares list -> string -> t Tf_core.resource
