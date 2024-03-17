(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type kubernetes_manifest__field_manager
type kubernetes_manifest__timeouts
type kubernetes_manifest__wait__condition
type kubernetes_manifest__wait

type kubernetes_manifest__wait_for = {
  fields : (string * string) list;  (** fields *)
}

type kubernetes_manifest

val kubernetes_manifest :
  ?computed_fields:string list ->
  ?object_:string ->
  ?wait_for:kubernetes_manifest__wait_for ->
  manifest:string ->
  field_manager:kubernetes_manifest__field_manager list ->
  timeouts:kubernetes_manifest__timeouts list ->
  wait:kubernetes_manifest__wait list ->
  string ->
  unit
