(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_cloud_run_domain_mapping__metadata
type google_cloud_run_domain_mapping__spec
type google_cloud_run_domain_mapping__timeouts

type google_cloud_run_domain_mapping__status__resource_records = {
  name : string prop;  (** name *)
  rrdata : string prop;  (** rrdata *)
  type_ : string prop; [@key "type"]  (** type *)
}

type google_cloud_run_domain_mapping__status__conditions = {
  message : string prop;  (** message *)
  reason : string prop;  (** reason *)
  status : string prop;  (** status *)
  type_ : string prop; [@key "type"]  (** type *)
}

type google_cloud_run_domain_mapping__status = {
  conditions :
    google_cloud_run_domain_mapping__status__conditions list;
      (** conditions *)
  mapped_route_name : string prop;  (** mapped_route_name *)
  observed_generation : float prop;  (** observed_generation *)
  resource_records :
    google_cloud_run_domain_mapping__status__resource_records list;
      (** resource_records *)
}

type google_cloud_run_domain_mapping

type t = private {
  id : string prop;
  location : string prop;
  name : string prop;
  project : string prop;
  status : google_cloud_run_domain_mapping__status list prop;
}

val google_cloud_run_domain_mapping :
  ?id:string prop ->
  ?project:string prop ->
  ?timeouts:google_cloud_run_domain_mapping__timeouts ->
  location:string prop ->
  name:string prop ->
  metadata:google_cloud_run_domain_mapping__metadata list ->
  spec:google_cloud_run_domain_mapping__spec list ->
  string ->
  t
