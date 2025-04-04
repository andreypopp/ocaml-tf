(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_service_discovery_instance

val aws_service_discovery_instance :
  ?id:string prop ->
  attributes:string prop Tf_core.assoc ->
  instance_id:string prop ->
  service_id:string prop ->
  unit ->
  aws_service_discovery_instance

val yojson_of_aws_service_discovery_instance :
  aws_service_discovery_instance -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  attributes : string Tf_core.assoc prop;
  id : string prop;
  instance_id : string prop;
  service_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  attributes:string prop Tf_core.assoc ->
  instance_id:string prop ->
  service_id:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  attributes:string prop Tf_core.assoc ->
  instance_id:string prop ->
  service_id:string prop ->
  string ->
  t Tf_core.resource
