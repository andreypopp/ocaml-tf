(** Ingresses can be implemented by different controllers, often with different configuration. Each Ingress should specify a class, a reference to an IngressClass resource that contains additional configuration including the name of the controller that should implement the class. *)

(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type metadata

val metadata :
  ?annotations:(string * string prop) list ->
  ?generate_name:string prop ->
  ?labels:(string * string prop) list ->
  ?name:string prop ->
  unit ->
  metadata

type spec__parameters

val spec__parameters :
  ?api_group:string prop ->
  ?namespace:string prop ->
  ?scope:string prop ->
  kind:string prop ->
  name:string prop ->
  unit ->
  spec__parameters

type spec

val spec :
  ?controller:string prop ->
  ?parameters:spec__parameters list ->
  unit ->
  spec

type kubernetes_ingress_class

val kubernetes_ingress_class :
  ?id:string prop ->
  metadata:metadata list ->
  spec:spec list ->
  unit ->
  kubernetes_ingress_class

val yojson_of_kubernetes_ingress_class :
  kubernetes_ingress_class -> json

(** RESOURCE REGISTRATION *)

type t = private { tf_name : string; id : string prop }

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  metadata:metadata list ->
  spec:spec list ->
  string ->
  t

val make :
  ?id:string prop ->
  metadata:metadata list ->
  spec:spec list ->
  string ->
  t Tf_core.resource
