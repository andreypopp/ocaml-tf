(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

(** RESOURCE SERIALIZATION *)

type aws_apprunner_auto_scaling_configuration_version

val aws_apprunner_auto_scaling_configuration_version :
  ?id:string prop ->
  ?max_concurrency:float prop ->
  ?max_size:float prop ->
  ?min_size:float prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  auto_scaling_configuration_name:string prop ->
  unit ->
  aws_apprunner_auto_scaling_configuration_version

val yojson_of_aws_apprunner_auto_scaling_configuration_version :
  aws_apprunner_auto_scaling_configuration_version -> json

(** RESOURCE REGISTRATION *)

type t = private {
  arn : string prop;
  auto_scaling_configuration_name : string prop;
  auto_scaling_configuration_revision : float prop;
  has_associated_service : bool prop;
  id : string prop;
  is_default : bool prop;
  latest : bool prop;
  max_concurrency : float prop;
  max_size : float prop;
  min_size : float prop;
  status : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?max_concurrency:float prop ->
  ?max_size:float prop ->
  ?min_size:float prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  auto_scaling_configuration_name:string prop ->
  string ->
  t
