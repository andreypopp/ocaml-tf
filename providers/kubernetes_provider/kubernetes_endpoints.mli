(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type kubernetes_endpoints__metadata
type kubernetes_endpoints__subset__address
type kubernetes_endpoints__subset__not_ready_address
type kubernetes_endpoints__subset__port
type kubernetes_endpoints__subset
type kubernetes_endpoints

val kubernetes_endpoints :
  metadata:kubernetes_endpoints__metadata list ->
  subset:kubernetes_endpoints__subset list ->
  string ->
  unit
