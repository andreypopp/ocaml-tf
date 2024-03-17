(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type kubernetes_endpoint_slice_v1__endpoint__condition
type kubernetes_endpoint_slice_v1__endpoint__target_ref
type kubernetes_endpoint_slice_v1__endpoint
type kubernetes_endpoint_slice_v1__metadata
type kubernetes_endpoint_slice_v1__port
type kubernetes_endpoint_slice_v1

val kubernetes_endpoint_slice_v1 :
  ?id:string ->
  address_type:string ->
  endpoint:kubernetes_endpoint_slice_v1__endpoint list ->
  metadata:kubernetes_endpoint_slice_v1__metadata list ->
  port:kubernetes_endpoint_slice_v1__port list ->
  string ->
  unit
