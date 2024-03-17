(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type kubernetes_csi_driver_v1__metadata
type kubernetes_csi_driver_v1__spec
type kubernetes_csi_driver_v1
type t = private { id : string prop }

val kubernetes_csi_driver_v1 :
  ?id:string prop ->
  metadata:kubernetes_csi_driver_v1__metadata list ->
  spec:kubernetes_csi_driver_v1__spec list ->
  string ->
  t
