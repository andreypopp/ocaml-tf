(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_cost_anomaly_alert__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_cost_anomaly_alert__timeouts *)

type azurerm_cost_anomaly_alert = {
  display_name : string prop;  (** display_name *)
  email_addresses : string prop list;  (** email_addresses *)
  email_subject : string prop;  (** email_subject *)
  id : string prop option; [@option]  (** id *)
  message : string prop option; [@option]  (** message *)
  name : string prop;  (** name *)
  subscription_id : string prop option; [@option]
      (** subscription_id *)
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
