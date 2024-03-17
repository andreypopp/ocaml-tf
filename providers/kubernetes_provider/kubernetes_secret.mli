(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type kubernetes_secret__metadata
type kubernetes_secret__timeouts
type kubernetes_secret

val kubernetes_secret :
  ?binary_data:(string * string) list ->
  ?data:(string * string) list ->
  ?id:string ->
  ?immutable:bool ->
  ?type_:string ->
  ?wait_for_service_account_token:bool ->
  ?timeouts:kubernetes_secret__timeouts ->
  metadata:kubernetes_secret__metadata list ->
  string ->
  unit
