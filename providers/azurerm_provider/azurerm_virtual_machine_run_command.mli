(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_virtual_machine_run_command__error_blob_managed_identity
type azurerm_virtual_machine_run_command__output_blob_managed_identity
type azurerm_virtual_machine_run_command__parameter
type azurerm_virtual_machine_run_command__protected_parameter

type azurerm_virtual_machine_run_command__source__script_uri_managed_identity

type azurerm_virtual_machine_run_command__source
type azurerm_virtual_machine_run_command__timeouts

type azurerm_virtual_machine_run_command__instance_view = {
  end_time : string prop;  (** end_time *)
  error_message : string prop;  (** error_message *)
  execution_message : string prop;  (** execution_message *)
  execution_state : string prop;  (** execution_state *)
  exit_code : float prop;  (** exit_code *)
  output : string prop;  (** output *)
  start_time : string prop;  (** start_time *)
}

type azurerm_virtual_machine_run_command

type t = private {
  error_blob_uri : string prop;
  id : string prop;
  instance_view :
    azurerm_virtual_machine_run_command__instance_view list prop;
  location : string prop;
  name : string prop;
  output_blob_uri : string prop;
  run_as_password : string prop;
  run_as_user : string prop;
  tags : (string * string) list prop;
  virtual_machine_id : string prop;
}

val azurerm_virtual_machine_run_command :
  ?error_blob_uri:string prop ->
  ?id:string prop ->
  ?output_blob_uri:string prop ->
  ?run_as_password:string prop ->
  ?run_as_user:string prop ->
  ?tags:(string * string prop) list ->
  ?timeouts:azurerm_virtual_machine_run_command__timeouts ->
  location:string prop ->
  name:string prop ->
  virtual_machine_id:string prop ->
  error_blob_managed_identity:
    azurerm_virtual_machine_run_command__error_blob_managed_identity
    list ->
  output_blob_managed_identity:
    azurerm_virtual_machine_run_command__output_blob_managed_identity
    list ->
  parameter:azurerm_virtual_machine_run_command__parameter list ->
  protected_parameter:
    azurerm_virtual_machine_run_command__protected_parameter list ->
  source:azurerm_virtual_machine_run_command__source list ->
  string ->
  t
