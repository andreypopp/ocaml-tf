(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

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
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_cost_management_scheduled_action *)

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_cost_management_scheduled_action ?day_of_month
    ?days_of_week ?hour_of_day ?id ?message ?weeks_of_month ?timeouts
    ~display_name ~email_address_sender ~email_addresses
    ~email_subject ~end_date ~frequency ~name ~start_date ~view_id ()
    : azurerm_cost_management_scheduled_action =
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

type t = {
  day_of_month : float prop;
  days_of_week : string list prop;
  display_name : string prop;
  email_address_sender : string prop;
  email_addresses : string list prop;
  email_subject : string prop;
  end_date : string prop;
  frequency : string prop;
  hour_of_day : float prop;
  id : string prop;
  message : string prop;
  name : string prop;
  start_date : string prop;
  view_id : string prop;
  weeks_of_month : string list prop;
}

let register ?tf_module ?day_of_month ?days_of_week ?hour_of_day ?id
    ?message ?weeks_of_month ?timeouts ~display_name
    ~email_address_sender ~email_addresses ~email_subject ~end_date
    ~frequency ~name ~start_date ~view_id __resource_id =
  let __resource_type = "azurerm_cost_management_scheduled_action" in
  let __resource =
    azurerm_cost_management_scheduled_action ?day_of_month
      ?days_of_week ?hour_of_day ?id ?message ?weeks_of_month
      ?timeouts ~display_name ~email_address_sender ~email_addresses
      ~email_subject ~end_date ~frequency ~name ~start_date ~view_id
      ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_cost_management_scheduled_action __resource);
  let __resource_attributes =
    ({
       day_of_month =
         Prop.computed __resource_type __resource_id "day_of_month";
       days_of_week =
         Prop.computed __resource_type __resource_id "days_of_week";
       display_name =
         Prop.computed __resource_type __resource_id "display_name";
       email_address_sender =
         Prop.computed __resource_type __resource_id
           "email_address_sender";
       email_addresses =
         Prop.computed __resource_type __resource_id
           "email_addresses";
       email_subject =
         Prop.computed __resource_type __resource_id "email_subject";
       end_date =
         Prop.computed __resource_type __resource_id "end_date";
       frequency =
         Prop.computed __resource_type __resource_id "frequency";
       hour_of_day =
         Prop.computed __resource_type __resource_id "hour_of_day";
       id = Prop.computed __resource_type __resource_id "id";
       message =
         Prop.computed __resource_type __resource_id "message";
       name = Prop.computed __resource_type __resource_id "name";
       start_date =
         Prop.computed __resource_type __resource_id "start_date";
       view_id =
         Prop.computed __resource_type __resource_id "view_id";
       weeks_of_month =
         Prop.computed __resource_type __resource_id "weeks_of_month";
     }
      : t)
  in
  __resource_attributes
