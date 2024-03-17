(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_consumption_budget_management_group__filter__dimension = {
  name : string;  (** name *)
  operator : string option; [@option]  (** operator *)
  values : string list;  (** values *)
}
[@@deriving yojson_of]
(** azurerm_consumption_budget_management_group__filter__dimension *)

type azurerm_consumption_budget_management_group__filter__not__dimension = {
  name : string;  (** name *)
  operator : string option; [@option]  (** operator *)
  values : string list;  (** values *)
}
[@@deriving yojson_of]
(** azurerm_consumption_budget_management_group__filter__not__dimension *)

type azurerm_consumption_budget_management_group__filter__not__tag = {
  name : string;  (** name *)
  operator : string option; [@option]  (** operator *)
  values : string list;  (** values *)
}
[@@deriving yojson_of]
(** azurerm_consumption_budget_management_group__filter__not__tag *)

type azurerm_consumption_budget_management_group__filter__not = {
  dimension :
    azurerm_consumption_budget_management_group__filter__not__dimension
    list;
  tag :
    azurerm_consumption_budget_management_group__filter__not__tag
    list;
}
[@@deriving yojson_of]
(** azurerm_consumption_budget_management_group__filter__not *)

type azurerm_consumption_budget_management_group__filter__tag = {
  name : string;  (** name *)
  operator : string option; [@option]  (** operator *)
  values : string list;  (** values *)
}
[@@deriving yojson_of]
(** azurerm_consumption_budget_management_group__filter__tag *)

type azurerm_consumption_budget_management_group__filter = {
  dimension :
    azurerm_consumption_budget_management_group__filter__dimension
    list;
  not :
    azurerm_consumption_budget_management_group__filter__not list;
  tag : azurerm_consumption_budget_management_group__filter__tag list;
}
[@@deriving yojson_of]
(** azurerm_consumption_budget_management_group__filter *)

type azurerm_consumption_budget_management_group__notification = {
  contact_emails : string list;  (** contact_emails *)
  enabled : bool option; [@option]  (** enabled *)
  operator : string;  (** operator *)
  threshold : float;  (** threshold *)
  threshold_type : string option; [@option]  (** threshold_type *)
}
[@@deriving yojson_of]
(** azurerm_consumption_budget_management_group__notification *)

type azurerm_consumption_budget_management_group__time_period = {
  end_date : string option; [@option]  (** end_date *)
  start_date : string;  (** start_date *)
}
[@@deriving yojson_of]
(** azurerm_consumption_budget_management_group__time_period *)

type azurerm_consumption_budget_management_group__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_consumption_budget_management_group__timeouts *)

type azurerm_consumption_budget_management_group = {
  amount : float;  (** amount *)
  management_group_id : string;  (** management_group_id *)
  name : string;  (** name *)
  time_grain : string option; [@option]  (** time_grain *)
  filter : azurerm_consumption_budget_management_group__filter list;
  notification :
    azurerm_consumption_budget_management_group__notification list;
  time_period :
    azurerm_consumption_budget_management_group__time_period list;
  timeouts :
    azurerm_consumption_budget_management_group__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_consumption_budget_management_group *)

let azurerm_consumption_budget_management_group ?time_grain ?timeouts
    ~amount ~management_group_id ~name ~filter ~notification
    ~time_period __resource_id =
  let __resource_type =
    "azurerm_consumption_budget_management_group"
  in
  let __resource =
    {
      amount;
      management_group_id;
      name;
      time_grain;
      filter;
      notification;
      time_period;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_consumption_budget_management_group __resource);
  ()
