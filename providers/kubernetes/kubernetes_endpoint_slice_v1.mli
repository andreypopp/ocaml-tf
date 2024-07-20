(** An EndpointSlice contains references to a set of network endpoints. *)

(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type endpoint__condition

val endpoint__condition :
  ?ready:bool prop ->
  ?serving:bool prop ->
  ?terminating:bool prop ->
  unit ->
  endpoint__condition

type endpoint__target_ref

val endpoint__target_ref :
  ?field_path:string prop ->
  ?namespace:string prop ->
  ?resource_version:string prop ->
  ?uid:string prop ->
  name:string prop ->
  unit ->
  endpoint__target_ref

type endpoint

val endpoint :
  ?hostname:string prop ->
  ?node_name:string prop ->
  ?zone:string prop ->
  ?condition:endpoint__condition list ->
  ?target_ref:endpoint__target_ref list ->
  addresses:string prop list ->
  unit ->
  endpoint

type metadata

val metadata :
  ?annotations:(string * string prop) list ->
  ?generate_name:string prop ->
  ?labels:(string * string prop) list ->
  ?name:string prop ->
  ?namespace:string prop ->
  unit ->
  metadata

type port

val port :
  ?name:string prop ->
  ?protocol:string prop ->
  app_protocol:string prop ->
  port:string prop ->
  unit ->
  port

type kubernetes_endpoint_slice_v1

val kubernetes_endpoint_slice_v1 :
  ?id:string prop ->
  address_type:string prop ->
  endpoint:endpoint list ->
  metadata:metadata list ->
  port:port list ->
  unit ->
  kubernetes_endpoint_slice_v1

val yojson_of_kubernetes_endpoint_slice_v1 :
  kubernetes_endpoint_slice_v1 -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  address_type : string prop;
  id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  address_type:string prop ->
  endpoint:endpoint list ->
  metadata:metadata list ->
  port:port list ->
  string ->
  t

val make :
  ?id:string prop ->
  address_type:string prop ->
  endpoint:endpoint list ->
  metadata:metadata list ->
  port:port list ->
  string ->
  t Tf_core.resource
