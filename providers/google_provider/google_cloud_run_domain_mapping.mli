(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_cloud_run_domain_mapping__metadata
type google_cloud_run_domain_mapping__spec
type google_cloud_run_domain_mapping__timeouts

type google_cloud_run_domain_mapping__status__resource_records = {
  name : string;  (** name *)
  rrdata : string;  (** rrdata *)
  type_ : string; [@key "type"]  (** type *)
}
[@@deriving yojson_of]

type google_cloud_run_domain_mapping__status__conditions = {
  message : string;  (** message *)
  reason : string;  (** reason *)
  status : string;  (** status *)
  type_ : string; [@key "type"]  (** type *)
}
[@@deriving yojson_of]

type google_cloud_run_domain_mapping__status = {
  conditions :
    google_cloud_run_domain_mapping__status__conditions list;
      (** conditions *)
  mapped_route_name : string;  (** mapped_route_name *)
  observed_generation : float;  (** observed_generation *)
  resource_records :
    google_cloud_run_domain_mapping__status__resource_records list;
      (** resource_records *)
}
[@@deriving yojson_of]

type google_cloud_run_domain_mapping

val google_cloud_run_domain_mapping :
  ?timeouts:google_cloud_run_domain_mapping__timeouts ->
  location:string ->
  name:string ->
  metadata:google_cloud_run_domain_mapping__metadata list ->
  spec:google_cloud_run_domain_mapping__spec list ->
  string ->
  unit
