(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_datasync_location_fsx_ontap_file_system__protocol__nfs__mount_options

type aws_datasync_location_fsx_ontap_file_system__protocol__nfs

type aws_datasync_location_fsx_ontap_file_system__protocol__smb__mount_options

type aws_datasync_location_fsx_ontap_file_system__protocol__smb
type aws_datasync_location_fsx_ontap_file_system__protocol
type aws_datasync_location_fsx_ontap_file_system

val aws_datasync_location_fsx_ontap_file_system :
  ?tags:(string * string) list ->
  security_group_arns:string list ->
  storage_virtual_machine_arn:string ->
  protocol:aws_datasync_location_fsx_ontap_file_system__protocol list ->
  string ->
  unit
