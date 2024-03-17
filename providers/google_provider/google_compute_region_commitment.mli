(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_compute_region_commitment__license_resource
type google_compute_region_commitment__resources
type google_compute_region_commitment__timeouts
type google_compute_region_commitment

type t = private {
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

val google_compute_region_commitment :
  ?auto_renew:bool prop ->
  ?category:string prop ->
  ?description:string prop ->
  ?id:string prop ->
  ?project:string prop ->
  ?region:string prop ->
  ?type_:string prop ->
  ?timeouts:google_compute_region_commitment__timeouts ->
  name:string prop ->
  plan:string prop ->
  license_resource:
    google_compute_region_commitment__license_resource list ->
  resources:google_compute_region_commitment__resources list ->
  string ->
  t
