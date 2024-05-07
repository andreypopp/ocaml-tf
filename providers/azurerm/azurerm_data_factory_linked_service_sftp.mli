(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type azurerm_data_factory_linked_service_sftp

val azurerm_data_factory_linked_service_sftp :
  ?additional_properties:(string * string prop) list ->
  ?annotations:string prop list ->
  ?description:string prop ->
  ?host_key_fingerprint:string prop ->
  ?id:string prop ->
  ?integration_runtime_name:string prop ->
  ?parameters:(string * string prop) list ->
  ?skip_host_key_validation:bool prop ->
  ?timeouts:timeouts ->
  authentication_type:string prop ->
  data_factory_id:string prop ->
  host:string prop ->
  name:string prop ->
  password:string prop ->
  port:float prop ->
  username:string prop ->
  unit ->
  azurerm_data_factory_linked_service_sftp

val yojson_of_azurerm_data_factory_linked_service_sftp :
  azurerm_data_factory_linked_service_sftp -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  additional_properties : (string * string) list prop;
  annotations : string list prop;
  authentication_type : string prop;
  data_factory_id : string prop;
  description : string prop;
  host : string prop;
  host_key_fingerprint : string prop;
  id : string prop;
  integration_runtime_name : string prop;
  name : string prop;
  parameters : (string * string) list prop;
  password : string prop;
  port : float prop;
  skip_host_key_validation : bool prop;
  username : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?additional_properties:(string * string prop) list ->
  ?annotations:string prop list ->
  ?description:string prop ->
  ?host_key_fingerprint:string prop ->
  ?id:string prop ->
  ?integration_runtime_name:string prop ->
  ?parameters:(string * string prop) list ->
  ?skip_host_key_validation:bool prop ->
  ?timeouts:timeouts ->
  authentication_type:string prop ->
  data_factory_id:string prop ->
  host:string prop ->
  name:string prop ->
  password:string prop ->
  port:float prop ->
  username:string prop ->
  string ->
  t

val make :
  ?additional_properties:(string * string prop) list ->
  ?annotations:string prop list ->
  ?description:string prop ->
  ?host_key_fingerprint:string prop ->
  ?id:string prop ->
  ?integration_runtime_name:string prop ->
  ?parameters:(string * string prop) list ->
  ?skip_host_key_validation:bool prop ->
  ?timeouts:timeouts ->
  authentication_type:string prop ->
  data_factory_id:string prop ->
  host:string prop ->
  name:string prop ->
  password:string prop ->
  port:float prop ->
  username:string prop ->
  string ->
  t Tf_core.resource
