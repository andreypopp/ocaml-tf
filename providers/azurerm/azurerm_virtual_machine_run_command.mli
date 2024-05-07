(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type instance_view = {
  end_time : string prop;  (** end_time *)
  error_message : string prop;  (** error_message *)
  execution_message : string prop;  (** execution_message *)
  execution_state : string prop;  (** execution_state *)
  exit_code : float prop;  (** exit_code *)
  output : string prop;  (** output *)
  start_time : string prop;  (** start_time *)
}

type error_blob_managed_identity

val error_blob_managed_identity :
  ?client_id:string prop ->
  ?object_id:string prop ->
  unit ->
  error_blob_managed_identity

type output_blob_managed_identity

val output_blob_managed_identity :
  ?client_id:string prop ->
  ?object_id:string prop ->
  unit ->
  output_blob_managed_identity

type parameter

val parameter :
  name:string prop -> value:string prop -> unit -> parameter

type protected_parameter

val protected_parameter :
  name:string prop ->
  value:string prop ->
  unit ->
  protected_parameter

type source__script_uri_managed_identity

val source__script_uri_managed_identity :
  ?client_id:string prop ->
  ?object_id:string prop ->
  unit ->
  source__script_uri_managed_identity

type source

val source :
  ?command_id:string prop ->
  ?script:string prop ->
  ?script_uri:string prop ->
  ?script_uri_managed_identity:
    source__script_uri_managed_identity list ->
  unit ->
  source

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type azurerm_virtual_machine_run_command

val azurerm_virtual_machine_run_command :
  ?error_blob_uri:string prop ->
  ?id:string prop ->
  ?output_blob_uri:string prop ->
  ?run_as_password:string prop ->
  ?run_as_user:string prop ->
  ?tags:(string * string prop) list ->
  ?error_blob_managed_identity:error_blob_managed_identity list ->
  ?output_blob_managed_identity:output_blob_managed_identity list ->
  ?parameter:parameter list ->
  ?protected_parameter:protected_parameter list ->
  ?timeouts:timeouts ->
  location:string prop ->
  name:string prop ->
  virtual_machine_id:string prop ->
  source:source list ->
  unit ->
  azurerm_virtual_machine_run_command

val yojson_of_azurerm_virtual_machine_run_command :
  azurerm_virtual_machine_run_command -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  error_blob_uri : string prop;
  id : string prop;
  instance_view : instance_view list prop;
  location : string prop;
  name : string prop;
  output_blob_uri : string prop;
  run_as_password : string prop;
  run_as_user : string prop;
  tags : (string * string) list prop;
  virtual_machine_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?error_blob_uri:string prop ->
  ?id:string prop ->
  ?output_blob_uri:string prop ->
  ?run_as_password:string prop ->
  ?run_as_user:string prop ->
  ?tags:(string * string prop) list ->
  ?error_blob_managed_identity:error_blob_managed_identity list ->
  ?output_blob_managed_identity:output_blob_managed_identity list ->
  ?parameter:parameter list ->
  ?protected_parameter:protected_parameter list ->
  ?timeouts:timeouts ->
  location:string prop ->
  name:string prop ->
  virtual_machine_id:string prop ->
  source:source list ->
  string ->
  t

val make :
  ?error_blob_uri:string prop ->
  ?id:string prop ->
  ?output_blob_uri:string prop ->
  ?run_as_password:string prop ->
  ?run_as_user:string prop ->
  ?tags:(string * string prop) list ->
  ?error_blob_managed_identity:error_blob_managed_identity list ->
  ?output_blob_managed_identity:output_blob_managed_identity list ->
  ?parameter:parameter list ->
  ?protected_parameter:protected_parameter list ->
  ?timeouts:timeouts ->
  location:string prop ->
  name:string prop ->
  virtual_machine_id:string prop ->
  source:source list ->
  string ->
  t Tf_core.resource
