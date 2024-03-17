(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type kubernetes_persistent_volume_claim_v1__metadata
type kubernetes_persistent_volume_claim_v1__spec__resources

type kubernetes_persistent_volume_claim_v1__spec__selector__match_expressions

type kubernetes_persistent_volume_claim_v1__spec__selector
type kubernetes_persistent_volume_claim_v1__spec
type kubernetes_persistent_volume_claim_v1__timeouts
type kubernetes_persistent_volume_claim_v1

val kubernetes_persistent_volume_claim_v1 :
  ?id:string ->
  ?wait_until_bound:bool ->
  ?timeouts:kubernetes_persistent_volume_claim_v1__timeouts ->
  metadata:kubernetes_persistent_volume_claim_v1__metadata list ->
  spec:kubernetes_persistent_volume_claim_v1__spec list ->
  string ->
  unit
