(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type vpc_config

val vpc_config :
  security_group_ids:string prop list ->
  subnet_ids:string prop list ->
  vpc_id:string prop ->
  unit ->
  vpc_config

type aws_devicefarm_test_grid_project

val aws_devicefarm_test_grid_project :
  ?description:string prop ->
  ?id:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  ?vpc_config:vpc_config list ->
  name:string prop ->
  unit ->
  aws_devicefarm_test_grid_project

val yojson_of_aws_devicefarm_test_grid_project :
  aws_devicefarm_test_grid_project -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  arn : string prop;
  description : string prop;
  id : string prop;
  name : string prop;
  tags : string Tf_core.assoc prop;
  tags_all : string Tf_core.assoc prop;
}

val register :
  ?tf_module:tf_module ->
  ?description:string prop ->
  ?id:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  ?vpc_config:vpc_config list ->
  name:string prop ->
  string ->
  t

val make :
  ?description:string prop ->
  ?id:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  ?vpc_config:vpc_config list ->
  name:string prop ->
  string ->
  t Tf_core.resource
