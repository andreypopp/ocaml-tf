(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

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

type spec__limit

val spec__limit :
  ?default:(string * string prop) list ->
  ?default_request:(string * string prop) list ->
  ?max:(string * string prop) list ->
  ?max_limit_request_ratio:(string * string prop) list ->
  ?min:(string * string prop) list ->
  ?type_:string prop ->
  unit ->
  spec__limit

type spec

val spec : limit:spec__limit list -> unit -> spec

type kubernetes_limit_range_v1

val kubernetes_limit_range_v1 :
  ?id:string prop ->
  metadata:metadata list ->
  spec:spec list ->
  unit ->
  kubernetes_limit_range_v1

val yojson_of_kubernetes_limit_range_v1 :
  kubernetes_limit_range_v1 -> json

(** RESOURCE REGISTRATION *)

type t = private { id : string prop }

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  metadata:metadata list ->
  spec:spec list ->
  string ->
  t
