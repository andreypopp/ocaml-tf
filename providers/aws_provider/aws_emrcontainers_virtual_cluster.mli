(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_emrcontainers_virtual_cluster__container_provider__info__eks_info

type aws_emrcontainers_virtual_cluster__container_provider__info
type aws_emrcontainers_virtual_cluster__container_provider
type aws_emrcontainers_virtual_cluster__timeouts
type aws_emrcontainers_virtual_cluster

val aws_emrcontainers_virtual_cluster :
  ?tags:(string * string) list ->
  ?timeouts:aws_emrcontainers_virtual_cluster__timeouts ->
  name:string ->
  container_provider:
    aws_emrcontainers_virtual_cluster__container_provider list ->
  string ->
  unit
