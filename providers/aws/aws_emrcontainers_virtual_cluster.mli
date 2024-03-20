(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type container_provider__info__eks_info

val container_provider__info__eks_info :
  ?namespace:string prop ->
  unit ->
  container_provider__info__eks_info

type container_provider__info

val container_provider__info :
  eks_info:container_provider__info__eks_info list ->
  unit ->
  container_provider__info

type container_provider

val container_provider :
  id:string prop ->
  type_:string prop ->
  info:container_provider__info list ->
  unit ->
  container_provider

type timeouts

val timeouts : ?delete:string prop -> unit -> timeouts

type aws_emrcontainers_virtual_cluster

val aws_emrcontainers_virtual_cluster :
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?timeouts:timeouts ->
  name:string prop ->
  container_provider:container_provider list ->
  unit ->
  aws_emrcontainers_virtual_cluster

val yojson_of_aws_emrcontainers_virtual_cluster :
  aws_emrcontainers_virtual_cluster -> json

(** RESOURCE REGISTRATION *)

type t = private {
  arn : string prop;
  id : string prop;
  name : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?timeouts:timeouts ->
  name:string prop ->
  container_provider:container_provider list ->
  string ->
  t

val make :
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?timeouts:timeouts ->
  name:string prop ->
  container_provider:container_provider list ->
  string ->
  t Tf_core.resource
