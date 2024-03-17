(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type kubernetes_secret__metadata
type kubernetes_secret__timeouts
type kubernetes_secret

val kubernetes_secret :
  ?binary_data:(string * string prop) list ->
  ?data:(string * string prop) list ->
  ?id:string prop ->
  ?immutable:bool prop ->
  ?type_:string prop ->
  ?wait_for_service_account_token:bool prop ->
  ?timeouts:kubernetes_secret__timeouts ->
  metadata:kubernetes_secret__metadata list ->
  string ->
  unit
