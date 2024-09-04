(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type mount_options

val mount_options : ?version:string prop -> unit -> mount_options

type aws_datasync_location_smb

val aws_datasync_location_smb :
  ?domain:string prop ->
  ?id:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  ?mount_options:mount_options list ->
  agent_arns:string prop list ->
  password:string prop ->
  server_hostname:string prop ->
  subdirectory:string prop ->
  user:string prop ->
  unit ->
  aws_datasync_location_smb

val yojson_of_aws_datasync_location_smb :
  aws_datasync_location_smb -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  agent_arns : string list prop;
  arn : string prop;
  domain : string prop;
  id : string prop;
  password : string prop;
  server_hostname : string prop;
  subdirectory : string prop;
  tags : string Tf_core.assoc prop;
  tags_all : string Tf_core.assoc prop;
  uri : string prop;
  user : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?domain:string prop ->
  ?id:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  ?mount_options:mount_options list ->
  agent_arns:string prop list ->
  password:string prop ->
  server_hostname:string prop ->
  subdirectory:string prop ->
  user:string prop ->
  string ->
  t

val make :
  ?domain:string prop ->
  ?id:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  ?mount_options:mount_options list ->
  agent_arns:string prop list ->
  password:string prop ->
  server_hostname:string prop ->
  subdirectory:string prop ->
  user:string prop ->
  string ->
  t Tf_core.resource
