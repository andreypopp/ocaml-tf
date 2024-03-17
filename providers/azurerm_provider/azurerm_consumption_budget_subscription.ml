(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type azurerm_consumption_budget_subscription__filter__dimension = {
  name : string;  (** name *)
  operator : string option; [@option]  (** operator *)
  values : string list;  (** values *)
}
[@@deriving yojson_of]
(** azurerm_consumption_budget_subscription__filter__dimension *)

type azurerm_consumption_budget_subscription__filter__not__dimension = {
  name : string;  (** name *)
  operator : string option; [@option]  (** operator *)
  values : string list;  (** values *)
}
[@@deriving yojson_of]
(** azurerm_consumption_budget_subscription__filter__not__dimension *)

type azurerm_consumption_budget_subscription__filter__not__tag = {
  name : string;  (** name *)
  operator : string option; [@option]  (** operator *)
  values : string list;  (** values *)
}
[@@deriving yojson_of]
(** azurerm_consumption_budget_subscription__filter__not__tag *)

type azurerm_consumption_budget_subscription__filter__not = {
  dimension :
    azurerm_consumption_budget_subscription__filter__not__dimension
    list;
  tag :
    azurerm_consumption_budget_subscription__filter__not__tag list;
}
[@@deriving yojson_of]
(** azurerm_consumption_budget_subscription__filter__not *)

type azurerm_consumption_budget_subscription__filter__tag = {
  name : string;  (** name *)
  operator : string option; [@option]  (** operator *)
  values : string list;  (** values *)
}
[@@deriving yojson_of]
(** azurerm_consumption_budget_subscription__filter__tag *)

type azurerm_consumption_budget_subscription__filter = {
  dimension :
    azurerm_consumption_budget_subscription__filter__dimension list;
  not : azurerm_consumption_budget_subscription__filter__not list;
  tag : azurerm_consumption_budget_subscription__filter__tag list;
}
[@@deriving yojson_of]
(** azurerm_consumption_budget_subscription__filter *)

type azurerm_consumption_budget_subscription__notification = {
  contact_emails : string list option; [@option]
      (** contact_emails *)
  contact_groups : string list option; [@option]
      (** contact_groups *)
  contact_roles : string list option; [@option]  (** contact_roles *)
  enabled : bool option; [@option]  (** enabled *)
  operator : string;  (** operator *)
  threshold : float;  (** threshold *)
  threshold_type : string option; [@option]  (** threshold_type *)
}
[@@deriving yojson_of]
(** azurerm_consumption_budget_subscription__notification *)

type azurerm_consumption_budget_subscription__time_period = {
  end_date : string option; [@option]  (** end_date *)
  start_date : string;  (** start_date *)
}
[@@deriving yojson_of]
(** azurerm_consumption_budget_subscription__time_period *)

type azurerm_consumption_budget_subscription__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_consumption_budget_subscription__timeouts *)

type azurerm_consumption_budget_subscription = {
  amount : float;  (** amount *)
  name : string;  (** name *)
  subscription_id : string;  (** subscription_id *)
  time_grain : string option; [@option]  (** time_grain *)
  filter : azurerm_consumption_budget_subscription__filter list;
  notification :
    azurerm_consumption_budget_subscription__notification list;
  time_period :
    azurerm_consumption_budget_subscription__time_period list;
  timeouts : azurerm_consumption_budget_subscription__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_consumption_budget_subscription *)

let azurerm_consumption_budget_subscription ?time_grain ?timeouts
    ~amount ~name ~subscription_id ~filter ~notification ~time_period
    __resource_id =
  let __resource_type = "azurerm_consumption_budget_subscription" in
  let __resource =
    {
      amount;
      name;
      subscription_id;
      time_grain;
      filter;
      notification;
      time_period;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_consumption_budget_subscription __resource);
  ()
