(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type kubernetes_endpoints_v1__metadata
type kubernetes_endpoints_v1__subset__address
type kubernetes_endpoints_v1__subset__not_ready_address
type kubernetes_endpoints_v1__subset__port
type kubernetes_endpoints_v1__subset
type kubernetes_endpoints_v1

val kubernetes_endpoints_v1 :
  ?id:string ->
  metadata:kubernetes_endpoints_v1__metadata list ->
  subset:kubernetes_endpoints_v1__subset list ->
  string ->
  unit
