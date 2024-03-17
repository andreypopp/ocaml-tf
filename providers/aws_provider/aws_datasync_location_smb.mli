(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_datasync_location_smb__mount_options
type aws_datasync_location_smb

val aws_datasync_location_smb :
  ?domain:string prop ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  agent_arns:string prop list ->
  password:string prop ->
  server_hostname:string prop ->
  subdirectory:string prop ->
  user:string prop ->
  mount_options:aws_datasync_location_smb__mount_options list ->
  string ->
  unit
