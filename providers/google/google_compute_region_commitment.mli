(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type license_resource

val license_resource :
  ?amount:string prop ->
  ?cores_per_license:string prop ->
  license:string prop ->
  unit ->
  license_resource

type resources

val resources :
  ?accelerator_type:string prop ->
  ?amount:string prop ->
  ?type_:string prop ->
  unit ->
  resources

type timeouts

val timeouts :
  ?create:string prop -> ?delete:string prop -> unit -> timeouts

type google_compute_region_commitment

val google_compute_region_commitment :
  ?auto_renew:bool prop ->
  ?category:string prop ->
  ?description:string prop ->
  ?id:string prop ->
  ?project:string prop ->
  ?region:string prop ->
  ?type_:string prop ->
  ?license_resource:license_resource list ->
  ?resources:resources list ->
  ?timeouts:timeouts ->
  name:string prop ->
  plan:string prop ->
  unit ->
  google_compute_region_commitment

val yojson_of_google_compute_region_commitment :
  google_compute_region_commitment -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  auto_renew : bool prop;
  category : string prop;
  commitment_id : float prop;
  creation_timestamp : string prop;
  description : string prop;
  end_timestamp : string prop;
  id : string prop;
  name : string prop;
  plan : string prop;
  project : string prop;
  region : string prop;
  self_link : string prop;
  start_timestamp : string prop;
  status : string prop;
  status_message : string prop;
  type_ : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?auto_renew:bool prop ->
  ?category:string prop ->
  ?description:string prop ->
  ?id:string prop ->
  ?project:string prop ->
  ?region:string prop ->
  ?type_:string prop ->
  ?license_resource:license_resource list ->
  ?resources:resources list ->
  ?timeouts:timeouts ->
  name:string prop ->
  plan:string prop ->
  string ->
  t

val make :
  ?auto_renew:bool prop ->
  ?category:string prop ->
  ?description:string prop ->
  ?id:string prop ->
  ?project:string prop ->
  ?region:string prop ->
  ?type_:string prop ->
  ?license_resource:license_resource list ->
  ?resources:resources list ->
  ?timeouts:timeouts ->
  name:string prop ->
  plan:string prop ->
  string ->
  t Tf_core.resource
