(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_virtual_machine_run_command__error_blob_managed_identity = {
  client_id : string option; [@option]  (** client_id *)
  object_id : string option; [@option]  (** object_id *)
}
[@@deriving yojson_of]
(** azurerm_virtual_machine_run_command__error_blob_managed_identity *)

type azurerm_virtual_machine_run_command__output_blob_managed_identity = {
  client_id : string option; [@option]  (** client_id *)
  object_id : string option; [@option]  (** object_id *)
}
[@@deriving yojson_of]
(** azurerm_virtual_machine_run_command__output_blob_managed_identity *)

type azurerm_virtual_machine_run_command__parameter = {
  name : string;  (** name *)
  value : string;  (** value *)
}
[@@deriving yojson_of]
(** azurerm_virtual_machine_run_command__parameter *)

type azurerm_virtual_machine_run_command__protected_parameter = {
  name : string;  (** name *)
  value : string;  (** value *)
}
[@@deriving yojson_of]
(** azurerm_virtual_machine_run_command__protected_parameter *)

type azurerm_virtual_machine_run_command__source__script_uri_managed_identity = {
  client_id : string option; [@option]  (** client_id *)
  object_id : string option; [@option]  (** object_id *)
}
[@@deriving yojson_of]
(** azurerm_virtual_machine_run_command__source__script_uri_managed_identity *)

type azurerm_virtual_machine_run_command__source = {
  command_id : string option; [@option]  (** command_id *)
  script : string option; [@option]  (** script *)
  script_uri : string option; [@option]  (** script_uri *)
  script_uri_managed_identity :
    azurerm_virtual_machine_run_command__source__script_uri_managed_identity
    list;
}
[@@deriving yojson_of]
(** azurerm_virtual_machine_run_command__source *)

type azurerm_virtual_machine_run_command__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_virtual_machine_run_command__timeouts *)

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

type azurerm_virtual_machine_run_command = {
  error_blob_uri : string option; [@option]  (** error_blob_uri *)
  location : string;  (** location *)
  name : string;  (** name *)
  output_blob_uri : string option; [@option]  (** output_blob_uri *)
  run_as_password : string option; [@option]  (** run_as_password *)
  run_as_user : string option; [@option]  (** run_as_user *)
  tags : (string * string) list option; [@option]  (** tags *)
  virtual_machine_id : string;  (** virtual_machine_id *)
  error_blob_managed_identity :
    azurerm_virtual_machine_run_command__error_blob_managed_identity
    list;
  output_blob_managed_identity :
    azurerm_virtual_machine_run_command__output_blob_managed_identity
    list;
  parameter : azurerm_virtual_machine_run_command__parameter list;
  protected_parameter :
    azurerm_virtual_machine_run_command__protected_parameter list;
  source : azurerm_virtual_machine_run_command__source list;
  timeouts : azurerm_virtual_machine_run_command__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_virtual_machine_run_command *)

let azurerm_virtual_machine_run_command ?error_blob_uri
    ?output_blob_uri ?run_as_password ?run_as_user ?tags ?timeouts
    ~location ~name ~virtual_machine_id ~error_blob_managed_identity
    ~output_blob_managed_identity ~parameter ~protected_parameter
    ~source __resource_id =
  let __resource_type = "azurerm_virtual_machine_run_command" in
  let __resource =
    {
      error_blob_uri;
      location;
      name;
      output_blob_uri;
      run_as_password;
      run_as_user;
      tags;
      virtual_machine_id;
      error_blob_managed_identity;
      output_blob_managed_identity;
      parameter;
      protected_parameter;
      source;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_virtual_machine_run_command __resource);
  ()
