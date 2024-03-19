(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts :
  ?create:string prop -> ?delete:string prop -> unit -> timeouts

type aws_directory_service_shared_directory_accepter

val aws_directory_service_shared_directory_accepter :
  ?id:string prop ->
  ?timeouts:timeouts ->
  shared_directory_id:string prop ->
  unit ->
  aws_directory_service_shared_directory_accepter

val yojson_of_aws_directory_service_shared_directory_accepter :
  aws_directory_service_shared_directory_accepter -> json

(** RESOURCE REGISTRATION *)

type t = private {
  id : string prop;
  method_ : string prop;
  notes : string prop;
  owner_account_id : string prop;
  owner_directory_id : string prop;
  shared_directory_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  shared_directory_id:string prop ->
  string ->
  t
