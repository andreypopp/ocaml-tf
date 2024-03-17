(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_application_insights_smart_detection_rule__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_application_insights_smart_detection_rule__timeouts *)

type azurerm_application_insights_smart_detection_rule = {
  additional_email_recipients : string prop list option; [@option]
      (** additional_email_recipients *)
  application_insights_id : string prop;
      (** application_insights_id *)
  enabled : bool prop option; [@option]  (** enabled *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  send_emails_to_subscription_owners : bool prop option; [@option]
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
