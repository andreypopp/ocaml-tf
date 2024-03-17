(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_data_fusion_instance__accelerators
type google_data_fusion_instance__crypto_key_config
type google_data_fusion_instance__event_publish_config
type google_data_fusion_instance__network_config
type google_data_fusion_instance__timeouts
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
  unit
