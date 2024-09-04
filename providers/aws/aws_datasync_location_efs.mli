(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type ec2_config

val ec2_config :
  security_group_arns:string prop list ->
  subnet_arn:string prop ->
  unit ->
  ec2_config

type aws_datasync_location_efs

val aws_datasync_location_efs :
  ?access_point_arn:string prop ->
  ?file_system_access_role_arn:string prop ->
  ?id:string prop ->
  ?in_transit_encryption:string prop ->
  ?subdirectory:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  efs_file_system_arn:string prop ->
  ec2_config:ec2_config list ->
  unit ->
  aws_datasync_location_efs

val yojson_of_aws_datasync_location_efs :
  aws_datasync_location_efs -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  access_point_arn : string prop;
  arn : string prop;
  efs_file_system_arn : string prop;
  file_system_access_role_arn : string prop;
  id : string prop;
  in_transit_encryption : string prop;
  subdirectory : string prop;
  tags : string Tf_core.assoc prop;
  tags_all : string Tf_core.assoc prop;
  uri : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?access_point_arn:string prop ->
  ?file_system_access_role_arn:string prop ->
  ?id:string prop ->
  ?in_transit_encryption:string prop ->
  ?subdirectory:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  efs_file_system_arn:string prop ->
  ec2_config:ec2_config list ->
  string ->
  t

val make :
  ?access_point_arn:string prop ->
  ?file_system_access_role_arn:string prop ->
  ?id:string prop ->
  ?in_transit_encryption:string prop ->
  ?subdirectory:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  efs_file_system_arn:string prop ->
  ec2_config:ec2_config list ->
  string ->
  t Tf_core.resource
