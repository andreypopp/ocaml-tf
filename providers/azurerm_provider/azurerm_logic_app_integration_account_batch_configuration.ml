(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type azurerm_logic_app_integration_account_batch_configuration__release_criteria__recurrence__schedule__monthly = {
  week : float;  (** week *)
  weekday : string;  (** weekday *)
}
[@@deriving yojson_of]
(** azurerm_logic_app_integration_account_batch_configuration__release_criteria__recurrence__schedule__monthly *)

type azurerm_logic_app_integration_account_batch_configuration__release_criteria__recurrence__schedule = {
  hours : float list option; [@option]  (** hours *)
  minutes : float list option; [@option]  (** minutes *)
  month_days : float list option; [@option]  (** month_days *)
  week_days : string list option; [@option]  (** week_days *)
  monthly :
    azurerm_logic_app_integration_account_batch_configuration__release_criteria__recurrence__schedule__monthly
    list;
}
[@@deriving yojson_of]
(** azurerm_logic_app_integration_account_batch_configuration__release_criteria__recurrence__schedule *)

type azurerm_logic_app_integration_account_batch_configuration__release_criteria__recurrence = {
  end_time : string option; [@option]  (** end_time *)
  frequency : string;  (** frequency *)
  interval : float;  (** interval *)
  start_time : string option; [@option]  (** start_time *)
  time_zone : string option; [@option]  (** time_zone *)
  schedule :
    azurerm_logic_app_integration_account_batch_configuration__release_criteria__recurrence__schedule
    list;
}
[@@deriving yojson_of]
(** azurerm_logic_app_integration_account_batch_configuration__release_criteria__recurrence *)

type azurerm_logic_app_integration_account_batch_configuration__release_criteria = {
  batch_size : float option; [@option]  (** batch_size *)
  message_count : float option; [@option]  (** message_count *)
  recurrence :
    azurerm_logic_app_integration_account_batch_configuration__release_criteria__recurrence
    list;
}
[@@deriving yojson_of]
(** azurerm_logic_app_integration_account_batch_configuration__release_criteria *)

type azurerm_logic_app_integration_account_batch_configuration__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_logic_app_integration_account_batch_configuration__timeouts *)

type azurerm_logic_app_integration_account_batch_configuration = {
  batch_group_name : string;  (** batch_group_name *)
  integration_account_name : string;  (** integration_account_name *)
  metadata : (string * string) list option; [@option]
      (** metadata *)
  name : string;  (** name *)
  resource_group_name : string;  (** resource_group_name *)
  release_criteria :
    azurerm_logic_app_integration_account_batch_configuration__release_criteria
    list;
  timeouts :
    azurerm_logic_app_integration_account_batch_configuration__timeouts
    option;
}
[@@deriving yojson_of]
(** azurerm_logic_app_integration_account_batch_configuration *)

let azurerm_logic_app_integration_account_batch_configuration
    ?metadata ?timeouts ~batch_group_name ~integration_account_name
    ~name ~resource_group_name ~release_criteria __resource_id =
  let __resource_type =
    "azurerm_logic_app_integration_account_batch_configuration"
  in
  let __resource =
    {
      batch_group_name;
      integration_account_name;
      metadata;
      name;
      resource_group_name;
      release_criteria;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_logic_app_integration_account_batch_configuration
       __resource);
  ()
