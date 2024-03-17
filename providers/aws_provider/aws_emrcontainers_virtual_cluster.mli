(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_emrcontainers_virtual_cluster__container_provider__info__eks_info

type aws_emrcontainers_virtual_cluster__container_provider__info
type aws_emrcontainers_virtual_cluster__container_provider
type aws_emrcontainers_virtual_cluster__timeouts
type aws_emrcontainers_virtual_cluster

type t = private {
  arn : string prop;
  id : string prop;
  name : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

val aws_emrcontainers_virtual_cluster :
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?timeouts:aws_emrcontainers_virtual_cluster__timeouts ->
  name:string prop ->
  container_provider:
    aws_emrcontainers_virtual_cluster__container_provider list ->
  string ->
  t
