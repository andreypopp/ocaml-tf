(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_apprunner_auto_scaling_configuration_version

val aws_apprunner_auto_scaling_configuration_version :
  ?id:string prop ->
  ?max_concurrency:float prop ->
  ?max_size:float prop ->
  ?min_size:float prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  auto_scaling_configuration_name:string prop ->
  unit ->
  aws_apprunner_auto_scaling_configuration_version

val yojson_of_aws_apprunner_auto_scaling_configuration_version :
  aws_apprunner_auto_scaling_configuration_version -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
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
  tags : string Tf_core.assoc prop;
  tags_all : string Tf_core.assoc prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?max_concurrency:float prop ->
  ?max_size:float prop ->
  ?min_size:float prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  auto_scaling_configuration_name:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?max_concurrency:float prop ->
  ?max_size:float prop ->
  ?min_size:float prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  auto_scaling_configuration_name:string prop ->
  string ->
  t Tf_core.resource
