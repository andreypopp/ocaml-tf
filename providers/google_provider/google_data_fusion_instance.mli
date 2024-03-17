(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_data_fusion_instance__accelerators
type google_data_fusion_instance__crypto_key_config
type google_data_fusion_instance__event_publish_config
type google_data_fusion_instance__network_config
type google_data_fusion_instance__timeouts
type google_data_fusion_instance

val google_data_fusion_instance :
  ?dataproc_service_account:string ->
  ?description:string ->
  ?display_name:string ->
  ?enable_rbac:bool ->
  ?enable_stackdriver_logging:bool ->
  ?enable_stackdriver_monitoring:bool ->
  ?labels:(string * string) list ->
  ?private_instance:bool ->
  ?timeouts:google_data_fusion_instance__timeouts ->
  name:string ->
  type_:string ->
  accelerators:google_data_fusion_instance__accelerators list ->
  crypto_key_config:
    google_data_fusion_instance__crypto_key_config list ->
  event_publish_config:
    google_data_fusion_instance__event_publish_config list ->
  network_config:google_data_fusion_instance__network_config list ->
  string ->
  unit
