(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type azurerm_cost_management_scheduled_action__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_cost_management_scheduled_action__timeouts *)

type azurerm_cost_management_scheduled_action = {
  day_of_month : float option; [@option]  (** day_of_month *)
  days_of_week : string list option; [@option]  (** days_of_week *)
  display_name : string;  (** display_name *)
  email_address_sender : string;  (** email_address_sender *)
  email_addresses : string list;  (** email_addresses *)
  email_subject : string;  (** email_subject *)
  end_date : string;  (** end_date *)
  frequency : string;  (** frequency *)
  hour_of_day : float option; [@option]  (** hour_of_day *)
  message : string option; [@option]  (** message *)
  name : string;  (** name *)
  start_date : string;  (** start_date *)
  view_id : string;  (** view_id *)
  weeks_of_month : string list option; [@option]
      (** weeks_of_month *)
  timeouts :
    azurerm_cost_management_scheduled_action__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_cost_management_scheduled_action *)

let azurerm_cost_management_scheduled_action ?day_of_month
    ?days_of_week ?hour_of_day ?message ?weeks_of_month ?timeouts
    ~display_name ~email_address_sender ~email_addresses
    ~email_subject ~end_date ~frequency ~name ~start_date ~view_id
    __resource_id =
  let __resource_type = "azurerm_cost_management_scheduled_action" in
  let __resource =
    {
      day_of_month;
      days_of_week;
      display_name;
      email_address_sender;
      email_addresses;
      email_subject;
      end_date;
      frequency;
      hour_of_day;
      message;
      name;
      start_date;
      view_id;
      weeks_of_month;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_cost_management_scheduled_action __resource);
  ()
