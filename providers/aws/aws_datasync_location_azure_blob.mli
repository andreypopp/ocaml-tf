(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type sas_configuration

val sas_configuration :
  token:string prop -> unit -> sas_configuration

type aws_datasync_location_azure_blob

val aws_datasync_location_azure_blob :
  ?access_tier:string prop ->
  ?blob_type:string prop ->
  ?id:string prop ->
  ?subdirectory:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  ?sas_configuration:sas_configuration list ->
  agent_arns:string prop list ->
  authentication_type:string prop ->
  container_url:string prop ->
  unit ->
  aws_datasync_location_azure_blob

val yojson_of_aws_datasync_location_azure_blob :
  aws_datasync_location_azure_blob -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  access_tier : string prop;
  agent_arns : string list prop;
  arn : string prop;
  authentication_type : string prop;
  blob_type : string prop;
  container_url : string prop;
  id : string prop;
  subdirectory : string prop;
  tags : string Tf_core.assoc prop;
  tags_all : string Tf_core.assoc prop;
  uri : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?access_tier:string prop ->
  ?blob_type:string prop ->
  ?id:string prop ->
  ?subdirectory:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  ?sas_configuration:sas_configuration list ->
  agent_arns:string prop list ->
  authentication_type:string prop ->
  container_url:string prop ->
  string ->
  t

val make :
  ?access_tier:string prop ->
  ?blob_type:string prop ->
  ?id:string prop ->
  ?subdirectory:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  ?sas_configuration:sas_configuration list ->
  agent_arns:string prop list ->
  authentication_type:string prop ->
  container_url:string prop ->
  string ->
  t Tf_core.resource
