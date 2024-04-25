(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type accelerators

val accelerators :
  accelerator_type:string prop ->
  state:string prop ->
  unit ->
  accelerators

type crypto_key_config

val crypto_key_config :
  key_reference:string prop -> unit -> crypto_key_config

type event_publish_config

val event_publish_config :
  enabled:bool prop ->
  topic:string prop ->
  unit ->
  event_publish_config

type network_config

val network_config :
  ip_allocation:string prop ->
  network:string prop ->
  unit ->
  network_config

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type google_data_fusion_instance

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
  ?accelerators:accelerators list ->
  ?crypto_key_config:crypto_key_config list ->
  ?event_publish_config:event_publish_config list ->
  ?network_config:network_config list ->
  ?timeouts:timeouts ->
  name:string prop ->
  type_:string prop ->
  unit ->
  google_data_fusion_instance

val yojson_of_google_data_fusion_instance :
  google_data_fusion_instance -> json

(** RESOURCE REGISTRATION *)

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

val register :
  ?tf_module:tf_module ->
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
  ?accelerators:accelerators list ->
  ?crypto_key_config:crypto_key_config list ->
  ?event_publish_config:event_publish_config list ->
  ?network_config:network_config list ->
  ?timeouts:timeouts ->
  name:string prop ->
  type_:string prop ->
  string ->
  t

val make :
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
  ?accelerators:accelerators list ->
  ?crypto_key_config:crypto_key_config list ->
  ?event_publish_config:event_publish_config list ->
  ?network_config:network_config list ->
  ?timeouts:timeouts ->
  name:string prop ->
  type_:string prop ->
  string ->
  t Tf_core.resource
