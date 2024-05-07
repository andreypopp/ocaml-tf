(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type ides = {
  name : string prop;  (** name *)
  runtime : string prop;  (** runtime *)
}

type persistent_storage = { size : float prop  (** size *) }
type repositories

val repositories : unit -> repositories

type aws_codecatalyst_dev_environment

val aws_codecatalyst_dev_environment :
  ?alias:string prop ->
  ?creator_id:string prop ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?repositories:repositories list ->
  env_id:string prop ->
  project_name:string prop ->
  space_name:string prop ->
  unit ->
  aws_codecatalyst_dev_environment

val yojson_of_aws_codecatalyst_dev_environment :
  aws_codecatalyst_dev_environment -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  alias : string prop;
  creator_id : string prop;
  env_id : string prop;
  id : string prop;
  ides : ides list prop;
  inactivity_timeout_minutes : float prop;
  instance_type : string prop;
  last_updated_time : string prop;
  persistent_storage : persistent_storage list prop;
  project_name : string prop;
  space_name : string prop;
  status : string prop;
  status_reason : string prop;
  tags : (string * string) list prop;
}

val register :
  ?tf_module:tf_module ->
  ?alias:string prop ->
  ?creator_id:string prop ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?repositories:repositories list ->
  env_id:string prop ->
  project_name:string prop ->
  space_name:string prop ->
  string ->
  t

val make :
  ?alias:string prop ->
  ?creator_id:string prop ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?repositories:repositories list ->
  env_id:string prop ->
  project_name:string prop ->
  space_name:string prop ->
  string ->
  t Tf_core.resource
