(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_application_insights_smart_detection_rule__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_application_insights_smart_detection_rule__timeouts *)

type azurerm_application_insights_smart_detection_rule = {
  additional_email_recipients : string list option; [@option]
      (** additional_email_recipients *)
  application_insights_id : string;  (** application_insights_id *)
  enabled : bool option; [@option]  (** enabled *)
  id : string option; [@option]  (** id *)
  name : string;  (** name *)
  send_emails_to_subscription_owners : bool option; [@option]
      (** send_emails_to_subscription_owners *)
  timeouts :
    azurerm_application_insights_smart_detection_rule__timeouts
    option;
}
[@@deriving yojson_of]
(** azurerm_application_insights_smart_detection_rule *)

let azurerm_application_insights_smart_detection_rule
    ?additional_email_recipients ?enabled ?id
    ?send_emails_to_subscription_owners ?timeouts
    ~application_insights_id ~name __resource_id =
  let __resource_type =
    "azurerm_application_insights_smart_detection_rule"
  in
  let __resource =
    {
      additional_email_recipients;
      application_insights_id;
      enabled;
      id;
      name;
      send_emails_to_subscription_owners;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_application_insights_smart_detection_rule
       __resource);
  ()
