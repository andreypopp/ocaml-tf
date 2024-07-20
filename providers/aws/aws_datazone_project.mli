(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type failure_reasons = {
  code : string prop;  (** code *)
  message : string prop;  (** message *)
}

type timeouts

val timeouts :
  ?create:string prop -> ?delete:string prop -> unit -> timeouts

type aws_datazone_project

val aws_datazone_project :
  ?description:string prop ->
  ?glossary_terms:string prop list ->
  ?skip_deletion_check:bool prop ->
  ?timeouts:timeouts ->
  domain_identifier:string prop ->
  name:string prop ->
  unit ->
  aws_datazone_project

val yojson_of_aws_datazone_project : aws_datazone_project -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  created_at : string prop;
  created_by : string prop;
  description : string prop;
  domain_identifier : string prop;
  failure_reasons : failure_reasons list prop;
  glossary_terms : string list prop;
  id : string prop;
  last_updated_at : string prop;
  name : string prop;
  project_status : string prop;
  skip_deletion_check : bool prop;
}

val register :
  ?tf_module:tf_module ->
  ?description:string prop ->
  ?glossary_terms:string prop list ->
  ?skip_deletion_check:bool prop ->
  ?timeouts:timeouts ->
  domain_identifier:string prop ->
  name:string prop ->
  string ->
  t

val make :
  ?description:string prop ->
  ?glossary_terms:string prop list ->
  ?skip_deletion_check:bool prop ->
  ?timeouts:timeouts ->
  domain_identifier:string prop ->
  name:string prop ->
  string ->
  t Tf_core.resource
