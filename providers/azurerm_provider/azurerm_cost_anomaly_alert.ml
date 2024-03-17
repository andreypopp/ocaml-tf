(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_cost_anomaly_alert__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_cost_anomaly_alert__timeouts *)

type azurerm_cost_anomaly_alert = {
  display_name : string;  (** display_name *)
  email_addresses : string list;  (** email_addresses *)
  email_subject : string;  (** email_subject *)
  message : string option; [@option]  (** message *)
  name : string;  (** name *)
  timeouts : azurerm_cost_anomaly_alert__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_cost_anomaly_alert *)

let azurerm_cost_anomaly_alert ?message ?timeouts ~display_name
    ~email_addresses ~email_subject ~name __resource_id =
  let __resource_type = "azurerm_cost_anomaly_alert" in
  let __resource =
    {
      display_name;
      email_addresses;
      email_subject;
      message;
      name;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_cost_anomaly_alert __resource);
  ()
