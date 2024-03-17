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
  id : string option; [@option]  (** id *)
  message : string option; [@option]  (** message *)
  name : string;  (** name *)
  subscription_id : string option; [@option]  (** subscription_id *)
  timeouts : azurerm_cost_anomaly_alert__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_cost_anomaly_alert *)

let azurerm_cost_anomaly_alert ?id ?message ?subscription_id
    ?timeouts ~display_name ~email_addresses ~email_subject ~name
    __resource_id =
  let __resource_type = "azurerm_cost_anomaly_alert" in
  let __resource =
    {
      display_name;
      email_addresses;
      email_subject;
      id;
      message;
      name;
      subscription_id;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_cost_anomaly_alert __resource);
  ()
