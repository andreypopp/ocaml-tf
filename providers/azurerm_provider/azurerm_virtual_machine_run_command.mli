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
  end_time : string;  (** end_time *)
  error_message : string;  (** error_message *)
  execution_message : string;  (** execution_message *)
  execution_state : string;  (** execution_state *)
  exit_code : float;  (** exit_code *)
  output : string;  (** output *)
  start_time : string;  (** start_time *)
}
[@@deriving yojson_of]

type azurerm_virtual_machine_run_command

val azurerm_virtual_machine_run_command :
  ?error_blob_uri:string ->
  ?output_blob_uri:string ->
  ?run_as_password:string ->
  ?run_as_user:string ->
  ?tags:(string * string) list ->
  ?timeouts:azurerm_virtual_machine_run_command__timeouts ->
  location:string ->
  name:string ->
  virtual_machine_id:string ->
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
  unit
