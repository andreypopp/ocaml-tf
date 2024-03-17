(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_data_fusion_instance__accelerators
type google_data_fusion_instance__crypto_key_config
type google_data_fusion_instance__event_publish_config
type google_data_fusion_instance__network_config
type google_data_fusion_instance__timeouts
type google_data_fusion_instance

type t = private {
  api_endpoint : string prop;
  create_time : string prop;
  dataproc_service_account : string prop;
  description : string prop;
  display_name : string prop;
  effective_labels : (string * string) list prop;
  enable_rbac : bool prop;
  enable_stackdriver_logging : bool prop;
  enable_stackdriver_monitoring : bool prop;
  gcs_bucket : string prop;
  id : string prop;
  labels : (string * string) list prop;
  name : string prop;
  options : (string * string) list prop;
  p4_service_account : string prop;
  private_instance : bool prop;
  project : string prop;
  region : string prop;
  service_endpoint : string prop;
  state : string prop;
  state_message : string prop;
  tenant_project_id : string prop;
  terraform_labels : (string * string) list prop;
  type_ : string prop;
  update_time : string prop;
  version : string prop;
  zone : string prop;
}

val google_data_fusion_instance :
  ?dataproc_service_account:string prop ->
  ?description:string prop ->
  ?display_name:string prop ->
  ?enable_rbac:bool prop ->
  ?enable_stackdriver_logging:bool prop ->
  ?enable_stackdriver_monitoring:bool prop ->
  ?id:string prop ->
  ?labels:(string * string prop) list ->
  ?options:(string * string prop) list ->
  ?private_instance:bool prop ->
  ?project:string prop ->
  ?region:string prop ->
  ?version:string prop ->
  ?zone:string prop ->
  ?timeouts:google_data_fusion_instance__timeouts ->
  name:string prop ->
  type_:string prop ->
  accelerators:google_data_fusion_instance__accelerators list ->
  crypto_key_config:
    google_data_fusion_instance__crypto_key_config list ->
  event_publish_config:
    google_data_fusion_instance__event_publish_config list ->
  network_config:google_data_fusion_instance__network_config list ->
  string ->
  t
