(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_logic_app_integration_account_batch_configuration__release_criteria__recurrence__schedule__monthly = {
  week : float prop;  (** week *)
  weekday : string prop;  (** weekday *)
}
[@@deriving yojson_of]
(** azurerm_logic_app_integration_account_batch_configuration__release_criteria__recurrence__schedule__monthly *)

type azurerm_logic_app_integration_account_batch_configuration__release_criteria__recurrence__schedule = {
  hours : float prop list option; [@option]  (** hours *)
  minutes : float prop list option; [@option]  (** minutes *)
  month_days : float prop list option; [@option]  (** month_days *)
  week_days : string prop list option; [@option]  (** week_days *)
  monthly :
    azurerm_logic_app_integration_account_batch_configuration__release_criteria__recurrence__schedule__monthly
    list;
}
[@@deriving yojson_of]
(** azurerm_logic_app_integration_account_batch_configuration__release_criteria__recurrence__schedule *)

type azurerm_logic_app_integration_account_batch_configuration__release_criteria__recurrence = {
  end_time : string prop option; [@option]  (** end_time *)
  frequency : string prop;  (** frequency *)
  interval : float prop;  (** interval *)
  start_time : string prop option; [@option]  (** start_time *)
  time_zone : string prop option; [@option]  (** time_zone *)
  schedule :
    azurerm_logic_app_integration_account_batch_configuration__release_criteria__recurrence__schedule
    list;
}
[@@deriving yojson_of]
(** azurerm_logic_app_integration_account_batch_configuration__release_criteria__recurrence *)

type azurerm_logic_app_integration_account_batch_configuration__release_criteria = {
  batch_size : float prop option; [@option]  (** batch_size *)
  message_count : float prop option; [@option]  (** message_count *)
  recurrence :
    azurerm_logic_app_integration_account_batch_configuration__release_criteria__recurrence
    list;
}
[@@deriving yojson_of]
(** azurerm_logic_app_integration_account_batch_configuration__release_criteria *)

type azurerm_logic_app_integration_account_batch_configuration__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_logic_app_integration_account_batch_configuration__timeouts *)

type azurerm_logic_app_integration_account_batch_configuration = {
  batch_group_name : string prop;  (** batch_group_name *)
  id : string prop option; [@option]  (** id *)
  integration_account_name : string prop;
      (** integration_account_name *)
  metadata : (string * string prop) list option; [@option]
      (** metadata *)
  name : string prop;  (** name *)
  resource_group_name : string prop;  (** resource_group_name *)
  release_criteria :
    azurerm_logic_app_integration_account_batch_configuration__release_criteria
    list;
  timeouts :
    azurerm_logic_app_integration_account_batch_configuration__timeouts
    option;
}
[@@deriving yojson_of]
(** azurerm_logic_app_integration_account_batch_configuration *)

type t = {
  batch_group_name : string prop;
  id : string prop;
  integration_account_name : string prop;
  metadata : (string * string) list prop;
  name : string prop;
  resource_group_name : string prop;
}

let azurerm_logic_app_integration_account_batch_configuration ?id
    ?metadata ?timeouts ~batch_group_name ~integration_account_name
    ~name ~resource_group_name ~release_criteria __resource_id =
  let __resource_type =
    "azurerm_logic_app_integration_account_batch_configuration"
  in
  let __resource =
    ({
       batch_group_name;
       id;
       integration_account_name;
       metadata;
       name;
       resource_group_name;
       release_criteria;
       timeouts;
     }
      : azurerm_logic_app_integration_account_batch_configuration)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_logic_app_integration_account_batch_configuration
       __resource);
  let __resource_attributes =
    ({
       batch_group_name =
         Prop.computed __resource_type __resource_id
           "batch_group_name";
       id = Prop.computed __resource_type __resource_id "id";
       integration_account_name =
         Prop.computed __resource_type __resource_id
           "integration_account_name";
       metadata =
         Prop.computed __resource_type __resource_id "metadata";
       name = Prop.computed __resource_type __resource_id "name";
       resource_group_name =
         Prop.computed __resource_type __resource_id
           "resource_group_name";
     }
      : t)
  in
  __resource_attributes
