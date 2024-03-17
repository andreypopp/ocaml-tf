(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_datasync_location_smb__mount_options
type aws_datasync_location_smb

val aws_datasync_location_smb :
  ?tags:(string * string) list ->
  agent_arns:string list ->
  password:string ->
  server_hostname:string ->
  subdirectory:string ->
  user:string ->
  mount_options:aws_datasync_location_smb__mount_options list ->
  string ->
  unit
