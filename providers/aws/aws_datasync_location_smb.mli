(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

(** RESOURCE SERIALIZATION *)

type mount_options

val mount_options : ?version:string prop -> unit -> mount_options

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
  mount_options:mount_options list ->
  unit ->
  aws_datasync_location_smb

val yojson_of_aws_datasync_location_smb :
  aws_datasync_location_smb -> json

(** RESOURCE REGISTRATION *)

type t = private {
  agent_arns : string list prop;
  arn : string prop;
  domain : string prop;
  id : string prop;
  password : string prop;
  server_hostname : string prop;
  subdirectory : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  uri : string prop;
  user : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?domain:string prop ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  agent_arns:string prop list ->
  password:string prop ->
  server_hostname:string prop ->
  subdirectory:string prop ->
  user:string prop ->
  mount_options:mount_options list ->
  string ->
  t
