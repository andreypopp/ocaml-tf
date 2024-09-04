(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type quota_infos__quota_increase_eligibility = {
  ineligibility_reason : string prop;  (** ineligibility_reason *)
  is_eligible : bool prop;  (** is_eligible *)
}

type quota_infos__dimensions_infos__details = {
  value : string prop;  (** value *)
}

type quota_infos__dimensions_infos = {
  applicable_locations : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** applicable_locations *)
  details : quota_infos__dimensions_infos__details list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** details *)
  dimensions : string prop Tf_core.assoc;  (** dimensions *)
}

type quota_infos = {
  container_type : string prop;  (** container_type *)
  dimensions : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** dimensions *)
  dimensions_infos : quota_infos__dimensions_infos list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** dimensions_infos *)
  is_concurrent : bool prop;  (** is_concurrent *)
  is_fixed : bool prop;  (** is_fixed *)
  is_precise : bool prop;  (** is_precise *)
  metric : string prop;  (** metric *)
  metric_display_name : string prop;  (** metric_display_name *)
  metric_unit : string prop;  (** metric_unit *)
  name : string prop;  (** name *)
  quota_display_name : string prop;  (** quota_display_name *)
  quota_id : string prop;  (** quota_id *)
  quota_increase_eligibility :
    quota_infos__quota_increase_eligibility list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** quota_increase_eligibility *)
  refresh_interval : string prop;  (** refresh_interval *)
  service : string prop;  (** service *)
  service_request_quota_uri : string prop;
      (** service_request_quota_uri *)
}

type google_cloud_quotas_quota_infos

val google_cloud_quotas_quota_infos :
  ?id:string prop ->
  parent:string prop ->
  service:string prop ->
  unit ->
  google_cloud_quotas_quota_infos

val yojson_of_google_cloud_quotas_quota_infos :
  google_cloud_quotas_quota_infos -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  id : string prop;
  parent : string prop;
  quota_infos : quota_infos list prop;
  service : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  parent:string prop ->
  service:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  parent:string prop ->
  service:string prop ->
  string ->
  t Tf_core.resource
