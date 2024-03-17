(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_datasync_location_fsx_ontap_file_system__protocol__nfs__mount_options

type aws_datasync_location_fsx_ontap_file_system__protocol__nfs

type aws_datasync_location_fsx_ontap_file_system__protocol__smb__mount_options

type aws_datasync_location_fsx_ontap_file_system__protocol__smb
type aws_datasync_location_fsx_ontap_file_system__protocol
type aws_datasync_location_fsx_ontap_file_system

val aws_datasync_location_fsx_ontap_file_system :
  ?id:string prop ->
  ?subdirectory:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  security_group_arns:string prop list ->
  storage_virtual_machine_arn:string prop ->
  protocol:aws_datasync_location_fsx_ontap_file_system__protocol list ->
  string ->
  unit
