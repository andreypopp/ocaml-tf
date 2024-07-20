(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type dimensions_infos__details = {
  value : string prop;  (** value *)
}

type dimensions_infos = {
  applicable_locations : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** applicable_locations *)
  details : dimensions_infos__details list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** details *)
  dimensions : (string * string prop) list;  (** dimensions *)
}

type quota_increase_eligibility = {
  ineligibility_reason : string prop;  (** ineligibility_reason *)
  is_eligible : bool prop;  (** is_eligible *)
}

type google_cloud_quotas_quota_info

val google_cloud_quotas_quota_info :
  ?id:string prop ->
  parent:string prop ->
  quota_id:string prop ->
  service:string prop ->
  unit ->
  google_cloud_quotas_quota_info

val yojson_of_google_cloud_quotas_quota_info :
  google_cloud_quotas_quota_info -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  container_type : string prop;
  dimensions : string list prop;
  dimensions_infos : dimensions_infos list prop;
  id : string prop;
  is_concurrent : bool prop;
  is_fixed : bool prop;
  is_precise : bool prop;
  metric : string prop;
  metric_display_name : string prop;
  metric_unit : string prop;
  name : string prop;
  parent : string prop;
  quota_display_name : string prop;
  quota_id : string prop;
  quota_increase_eligibility : quota_increase_eligibility list prop;
  refresh_interval : string prop;
  service : string prop;
  service_request_quota_uri : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  parent:string prop ->
  quota_id:string prop ->
  service:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  parent:string prop ->
  quota_id:string prop ->
  service:string prop ->
  string ->
  t Tf_core.resource
