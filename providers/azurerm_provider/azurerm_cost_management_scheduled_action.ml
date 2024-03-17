(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_cost_management_scheduled_action__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_cost_management_scheduled_action__timeouts *)

type azurerm_cost_management_scheduled_action = {
  day_of_month : float prop option; [@option]  (** day_of_month *)
  days_of_week : string prop list option; [@option]
      (** days_of_week *)
  display_name : string prop;  (** display_name *)
  email_address_sender : string prop;  (** email_address_sender *)
  email_addresses : string prop list;  (** email_addresses *)
  email_subject : string prop;  (** email_subject *)
  end_date : string prop;  (** end_date *)
  frequency : string prop;  (** frequency *)
  hour_of_day : float prop option; [@option]  (** hour_of_day *)
  id : string prop option; [@option]  (** id *)
  message : string prop option; [@option]  (** message *)
  name : string prop;  (** name *)
  start_date : string prop;  (** start_date *)
  view_id : string prop;  (** view_id *)
  weeks_of_month : string prop list option; [@option]
      (** weeks_of_month *)
  timeouts :
    azurerm_cost_management_scheduled_action__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_cost_management_scheduled_action *)

let azurerm_cost_management_scheduled_action ?day_of_month
    ?days_of_week ?hour_of_day ?id ?message ?weeks_of_month ?timeouts
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
      id;
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
