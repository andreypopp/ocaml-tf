(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_datadog_monitor_sso_configuration__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_datadog_monitor_sso_configuration__timeouts *)

type azurerm_datadog_monitor_sso_configuration = {
  datadog_monitor_id : string;  (** datadog_monitor_id *)
  enterprise_application_id : string;
      (** enterprise_application_id *)
  name : string option; [@option]  (** name *)
  single_sign_on_enabled : string;  (** single_sign_on_enabled *)
  timeouts :
    azurerm_datadog_monitor_sso_configuration__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_datadog_monitor_sso_configuration *)

let azurerm_datadog_monitor_sso_configuration ?name ?timeouts
    ~datadog_monitor_id ~enterprise_application_id
    ~single_sign_on_enabled __resource_id =
  let __resource_type =
    "azurerm_datadog_monitor_sso_configuration"
  in
  let __resource =
    {
      datadog_monitor_id;
      enterprise_application_id;
      name;
      single_sign_on_enabled;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_datadog_monitor_sso_configuration __resource);
  ()
