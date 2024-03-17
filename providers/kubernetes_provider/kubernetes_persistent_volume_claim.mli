(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type kubernetes_persistent_volume_claim__metadata
type kubernetes_persistent_volume_claim__spec__resources

type kubernetes_persistent_volume_claim__spec__selector__match_expressions

type kubernetes_persistent_volume_claim__spec__selector
type kubernetes_persistent_volume_claim__spec
type kubernetes_persistent_volume_claim__timeouts
type kubernetes_persistent_volume_claim
type t = private { id : string prop; wait_until_bound : bool prop }

val kubernetes_persistent_volume_claim :
  ?id:string prop ->
  ?wait_until_bound:bool prop ->
  ?timeouts:kubernetes_persistent_volume_claim__timeouts ->
  metadata:kubernetes_persistent_volume_claim__metadata list ->
  spec:kubernetes_persistent_volume_claim__spec list ->
  string ->
  t
