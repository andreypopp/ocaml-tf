(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_data_factory_linked_service_sftp__timeouts
type azurerm_data_factory_linked_service_sftp

type t = private {
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

val azurerm_data_factory_linked_service_sftp :
  ?additional_properties:(string * string prop) list ->
  ?annotations:string prop list ->
  ?description:string prop ->
  ?host_key_fingerprint:string prop ->
  ?id:string prop ->
  ?integration_runtime_name:string prop ->
  ?parameters:(string * string prop) list ->
  ?skip_host_key_validation:bool prop ->
  ?timeouts:azurerm_data_factory_linked_service_sftp__timeouts ->
  authentication_type:string prop ->
  data_factory_id:string prop ->
  host:string prop ->
  name:string prop ->
  password:string prop ->
  port:float prop ->
  username:string prop ->
  string ->
  t
