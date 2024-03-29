(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type metadata

val metadata :
  ?annotations:(string * string prop) list ->
  ?generate_name:string prop ->
  ?labels:(string * string prop) list ->
  ?name:string prop ->
  unit ->
  metadata

type spec

val spec :
  ?usages:string prop list ->
  request:string prop ->
  signer_name:string prop ->
  unit ->
  spec

type timeouts

val timeouts : ?create:string prop -> unit -> timeouts

type kubernetes_certificate_signing_request_v1

val kubernetes_certificate_signing_request_v1 :
  ?auto_approve:bool prop ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  metadata:metadata list ->
  spec:spec list ->
  unit ->
  kubernetes_certificate_signing_request_v1

val yojson_of_kubernetes_certificate_signing_request_v1 :
  kubernetes_certificate_signing_request_v1 -> json

(** RESOURCE REGISTRATION *)

type t = private {
  auto_approve : bool prop;
  certificate : string prop;
  id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?auto_approve:bool prop ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  metadata:metadata list ->
  spec:spec list ->
  string ->
  t

val make :
  ?auto_approve:bool prop ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  metadata:metadata list ->
  spec:spec list ->
  string ->
  t Tf_core.resource
