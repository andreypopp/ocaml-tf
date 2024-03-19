(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

(** RESOURCE SERIALIZATION *)

type target

val target : ?type_:string prop -> id:string prop -> unit -> target

type timeouts

val timeouts : ?delete:string prop -> unit -> timeouts

type aws_directory_service_shared_directory

val aws_directory_service_shared_directory :
  ?id:string prop ->
  ?method_:string prop ->
  ?notes:string prop ->
  ?timeouts:timeouts ->
  directory_id:string prop ->
  target:target list ->
  unit ->
  aws_directory_service_shared_directory

val yojson_of_aws_directory_service_shared_directory :
  aws_directory_service_shared_directory -> json

(** RESOURCE REGISTRATION *)

type t = private {
  directory_id : string prop;
  id : string prop;
  method_ : string prop;
  notes : string prop;
  shared_directory_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?method_:string prop ->
  ?notes:string prop ->
  ?timeouts:timeouts ->
  directory_id:string prop ->
  target:target list ->
  string ->
  t
