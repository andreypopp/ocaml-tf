(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_datasync_location_efs__ec2_config
type aws_datasync_location_efs

val aws_datasync_location_efs :
  ?access_point_arn:string ->
  ?file_system_access_role_arn:string ->
  ?in_transit_encryption:string ->
  ?subdirectory:string ->
  ?tags:(string * string) list ->
  efs_file_system_arn:string ->
  ec2_config:aws_datasync_location_efs__ec2_config list ->
  string ->
  unit
