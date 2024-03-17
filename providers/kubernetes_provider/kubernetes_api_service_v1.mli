(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type kubernetes_api_service_v1__metadata
type kubernetes_api_service_v1__spec__service
type kubernetes_api_service_v1__spec
type kubernetes_api_service_v1
type t = private { id : string prop }

val kubernetes_api_service_v1 :
  ?id:string prop ->
  metadata:kubernetes_api_service_v1__metadata list ->
  spec:kubernetes_api_service_v1__spec list ->
  string ->
  t
