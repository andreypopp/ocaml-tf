(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_data_factory_linked_service_sftp__timeouts
type azurerm_data_factory_linked_service_sftp

val azurerm_data_factory_linked_service_sftp :
  ?additional_properties:(string * string) list ->
  ?annotations:string list ->
  ?description:string ->
  ?host_key_fingerprint:string ->
  ?integration_runtime_name:string ->
  ?parameters:(string * string) list ->
  ?skip_host_key_validation:bool ->
  ?timeouts:azurerm_data_factory_linked_service_sftp__timeouts ->
  authentication_type:string ->
  data_factory_id:string ->
  host:string ->
  name:string ->
  password:string ->
  port:float ->
  username:string ->
  string ->
  unit
