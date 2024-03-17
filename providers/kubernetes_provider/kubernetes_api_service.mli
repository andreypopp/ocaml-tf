(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type kubernetes_api_service__metadata
type kubernetes_api_service__spec__service
type kubernetes_api_service__spec
type kubernetes_api_service
type t = private { id : string prop }

val kubernetes_api_service :
  ?id:string prop ->
  metadata:kubernetes_api_service__metadata list ->
  spec:kubernetes_api_service__spec list ->
  string ->
  t
