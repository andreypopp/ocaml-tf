(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type metadata

val metadata :
  ?annotations:(string * string prop) list ->
  ?generate_name:string prop ->
  ?labels:(string * string prop) list ->
  ?name:string prop ->
  ?namespace:string prop ->
  unit ->
  metadata

type subset__address

val subset__address :
  ?hostname:string prop ->
  ?node_name:string prop ->
  ip:string prop ->
  unit ->
  subset__address

type subset__not_ready_address

val subset__not_ready_address :
  ?hostname:string prop ->
  ?node_name:string prop ->
  ip:string prop ->
  unit ->
  subset__not_ready_address

type subset__port

val subset__port :
  ?name:string prop ->
  ?protocol:string prop ->
  port:float prop ->
  unit ->
  subset__port

type subset

val subset :
  address:subset__address list ->
  not_ready_address:subset__not_ready_address list ->
  port:subset__port list ->
  unit ->
  subset

type kubernetes_endpoints_v1

val kubernetes_endpoints_v1 :
  ?id:string prop ->
  metadata:metadata list ->
  subset:subset list ->
  unit ->
  kubernetes_endpoints_v1

val yojson_of_kubernetes_endpoints_v1 :
  kubernetes_endpoints_v1 -> json

(** RESOURCE REGISTRATION *)

type t = private { tf_name : string; id : string prop }

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  metadata:metadata list ->
  subset:subset list ->
  string ->
  t

val make :
  ?id:string prop ->
  metadata:metadata list ->
  subset:subset list ->
  string ->
  t Tf_core.resource
