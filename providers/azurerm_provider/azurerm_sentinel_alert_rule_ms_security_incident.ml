(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_sentinel_alert_rule_ms_security_incident__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_sentinel_alert_rule_ms_security_incident__timeouts *)

type azurerm_sentinel_alert_rule_ms_security_incident = {
  alert_rule_template_guid : string option; [@option]
      (** alert_rule_template_guid *)
  description : string option; [@option]  (** description *)
  display_name : string;  (** display_name *)
  display_name_exclude_filter : string list option; [@option]
      (** display_name_exclude_filter *)
  display_name_filter : string list option; [@option]
      (** display_name_filter *)
  enabled : bool option; [@option]  (** enabled *)
  id : string option; [@option]  (** id *)
  log_analytics_workspace_id : string;
      (** log_analytics_workspace_id *)
  name : string;  (** name *)
  product_filter : string;  (** product_filter *)
  severity_filter : string list;  (** severity_filter *)
  timeouts :
    azurerm_sentinel_alert_rule_ms_security_incident__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_sentinel_alert_rule_ms_security_incident *)

let azurerm_sentinel_alert_rule_ms_security_incident
    ?alert_rule_template_guid ?description
    ?display_name_exclude_filter ?display_name_filter ?enabled ?id
    ?timeouts ~display_name ~log_analytics_workspace_id ~name
    ~product_filter ~severity_filter __resource_id =
  let __resource_type =
    "azurerm_sentinel_alert_rule_ms_security_incident"
  in
  let __resource =
    {
      alert_rule_template_guid;
      description;
      display_name;
      display_name_exclude_filter;
      display_name_filter;
      enabled;
      id;
      log_analytics_workspace_id;
      name;
      product_filter;
      severity_filter;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_sentinel_alert_rule_ms_security_incident
       __resource);
  ()
