(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_consumption_budget_subscription__filter__dimension = {
  name : string prop;  (** name *)
  operator : string prop option; [@option]  (** operator *)
  values : string prop list;  (** values *)
}
[@@deriving yojson_of]
(** azurerm_consumption_budget_subscription__filter__dimension *)

type azurerm_consumption_budget_subscription__filter__not__dimension = {
  name : string prop;  (** name *)
  operator : string prop option; [@option]  (** operator *)
  values : string prop list;  (** values *)
}
[@@deriving yojson_of]
(** azurerm_consumption_budget_subscription__filter__not__dimension *)

type azurerm_consumption_budget_subscription__filter__not__tag = {
  name : string prop;  (** name *)
  operator : string prop option; [@option]  (** operator *)
  values : string prop list;  (** values *)
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
  name : string prop;  (** name *)
  operator : string prop option; [@option]  (** operator *)
  values : string prop list;  (** values *)
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
  contact_emails : string prop list option; [@option]
      (** contact_emails *)
  contact_groups : string prop list option; [@option]
      (** contact_groups *)
  contact_roles : string prop list option; [@option]
      (** contact_roles *)
  enabled : bool prop option; [@option]  (** enabled *)
  operator : string prop;  (** operator *)
  threshold : float prop;  (** threshold *)
  threshold_type : string prop option; [@option]
      (** threshold_type *)
}
[@@deriving yojson_of]
(** azurerm_consumption_budget_subscription__notification *)

type azurerm_consumption_budget_subscription__time_period = {
  end_date : string prop option; [@option]  (** end_date *)
  start_date : string prop;  (** start_date *)
}
[@@deriving yojson_of]
(** azurerm_consumption_budget_subscription__time_period *)

type azurerm_consumption_budget_subscription__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_consumption_budget_subscription__timeouts *)

type azurerm_consumption_budget_subscription = {
  amount : float prop;  (** amount *)
  etag : string prop option; [@option]  (** etag *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  subscription_id : string prop;  (** subscription_id *)
  time_grain : string prop option; [@option]  (** time_grain *)
  filter : azurerm_consumption_budget_subscription__filter list;
  notification :
    azurerm_consumption_budget_subscription__notification list;
  time_period :
    azurerm_consumption_budget_subscription__time_period list;
  timeouts : azurerm_consumption_budget_subscription__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_consumption_budget_subscription *)

type t = {
  amount : float prop;
  etag : string prop;
  id : string prop;
  name : string prop;
  subscription_id : string prop;
  time_grain : string prop;
}

let azurerm_consumption_budget_subscription ?etag ?id ?time_grain
    ?timeouts ~amount ~name ~subscription_id ~filter ~notification
    ~time_period __resource_id =
  let __resource_type = "azurerm_consumption_budget_subscription" in
  let __resource =
    ({
       amount;
       etag;
       id;
       name;
       subscription_id;
       time_grain;
       filter;
       notification;
       time_period;
       timeouts;
     }
      : azurerm_consumption_budget_subscription)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_consumption_budget_subscription __resource);
  let __resource_attributes =
    ({
       amount = Prop.computed __resource_type __resource_id "amount";
       etag = Prop.computed __resource_type __resource_id "etag";
       id = Prop.computed __resource_type __resource_id "id";
       name = Prop.computed __resource_type __resource_id "name";
       subscription_id =
         Prop.computed __resource_type __resource_id
           "subscription_id";
       time_grain =
         Prop.computed __resource_type __resource_id "time_grain";
     }
      : t)
  in
  __resource_attributes
