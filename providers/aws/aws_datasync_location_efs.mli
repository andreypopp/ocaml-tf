(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_datasync_location_efs__ec2_config
type aws_datasync_location_efs

type t = private {
  access_point_arn : string prop;
  arn : string prop;
  efs_file_system_arn : string prop;
  file_system_access_role_arn : string prop;
  id : string prop;
  in_transit_encryption : string prop;
  subdirectory : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  uri : string prop;
}

val aws_datasync_location_efs :
  ?access_point_arn:string prop ->
  ?file_system_access_role_arn:string prop ->
  ?id:string prop ->
  ?in_transit_encryption:string prop ->
  ?subdirectory:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  efs_file_system_arn:string prop ->
  ec2_config:aws_datasync_location_efs__ec2_config list ->
  string ->
  t
