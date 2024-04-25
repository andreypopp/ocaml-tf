(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type supported_instance_types

val supported_instance_types : unit -> supported_instance_types

type aws_emr_supported_instance_types

val aws_emr_supported_instance_types :
  ?supported_instance_types:supported_instance_types list ->
  release_label:string prop ->
  unit ->
  aws_emr_supported_instance_types

val yojson_of_aws_emr_supported_instance_types :
  aws_emr_supported_instance_types -> json

(** RESOURCE REGISTRATION *)

type t = private { id : string prop; release_label : string prop }

val register :
  ?tf_module:tf_module ->
  ?supported_instance_types:supported_instance_types list ->
  release_label:string prop ->
  string ->
  t

val make :
  ?supported_instance_types:supported_instance_types list ->
  release_label:string prop ->
  string ->
  t Tf_core.resource
