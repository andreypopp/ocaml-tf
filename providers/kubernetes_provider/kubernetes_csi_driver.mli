(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type kubernetes_csi_driver__metadata
type kubernetes_csi_driver__spec
type kubernetes_csi_driver
type t = private { id : string prop }

val kubernetes_csi_driver :
  ?id:string prop ->
  metadata:kubernetes_csi_driver__metadata list ->
  spec:kubernetes_csi_driver__spec list ->
  string ->
  t
