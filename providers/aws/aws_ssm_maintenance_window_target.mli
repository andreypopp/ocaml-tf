(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

(** RESOURCE SERIALIZATION *)

type targets

val targets :
  key:string prop -> values:string prop list -> unit -> targets

type aws_ssm_maintenance_window_target

val aws_ssm_maintenance_window_target :
  ?description:string prop ->
  ?id:string prop ->
  ?name:string prop ->
  ?owner_information:string prop ->
  resource_type:string prop ->
  window_id:string prop ->
  targets:targets list ->
  unit ->
  aws_ssm_maintenance_window_target

val yojson_of_aws_ssm_maintenance_window_target :
  aws_ssm_maintenance_window_target -> json

(** RESOURCE REGISTRATION *)

type t = private {
  description : string prop;
  id : string prop;
  name : string prop;
  owner_information : string prop;
  resource_type : string prop;
  window_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?description:string prop ->
  ?id:string prop ->
  ?name:string prop ->
  ?owner_information:string prop ->
  resource_type:string prop ->
  window_id:string prop ->
  targets:targets list ->
  string ->
  t
