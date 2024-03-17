(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type kubernetes_namespace_v1__metadata
type kubernetes_namespace_v1__timeouts
type kubernetes_namespace_v1

val kubernetes_namespace_v1 :
  ?id:string ->
  ?wait_for_default_service_account:bool ->
  ?timeouts:kubernetes_namespace_v1__timeouts ->
  metadata:kubernetes_namespace_v1__metadata list ->
  string ->
  unit
