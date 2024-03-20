(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_msk_kafka_version

val aws_msk_kafka_version :
  ?id:string prop ->
  ?preferred_versions:string prop list ->
  ?version:string prop ->
  unit ->
  aws_msk_kafka_version

val yojson_of_aws_msk_kafka_version : aws_msk_kafka_version -> json

(** RESOURCE REGISTRATION *)

type t = private {
  id : string prop;
  preferred_versions : string list prop;
  status : string prop;
  version : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?preferred_versions:string prop list ->
  ?version:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?preferred_versions:string prop list ->
  ?version:string prop ->
  string ->
  t Tf_core.resource
