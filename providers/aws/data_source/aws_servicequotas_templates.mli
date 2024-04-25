(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type templates

val templates : unit -> templates

type aws_servicequotas_templates

val aws_servicequotas_templates :
  ?templates:templates list ->
  region:string prop ->
  unit ->
  aws_servicequotas_templates

val yojson_of_aws_servicequotas_templates :
  aws_servicequotas_templates -> json

(** RESOURCE REGISTRATION *)

type t = private { id : string prop; region : string prop }

val register :
  ?tf_module:tf_module ->
  ?templates:templates list ->
  region:string prop ->
  string ->
  t

val make :
  ?templates:templates list ->
  region:string prop ->
  string ->
  t Tf_core.resource
