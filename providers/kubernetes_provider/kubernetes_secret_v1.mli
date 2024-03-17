(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type kubernetes_secret_v1__metadata
type kubernetes_secret_v1__timeouts
type kubernetes_secret_v1

val kubernetes_secret_v1 :
  ?binary_data:(string * string) list ->
  ?data:(string * string) list ->
  ?id:string ->
  ?immutable:bool ->
  ?type_:string ->
  ?wait_for_service_account_token:bool ->
  ?timeouts:kubernetes_secret_v1__timeouts ->
  metadata:kubernetes_secret_v1__metadata list ->
  string ->
  unit
