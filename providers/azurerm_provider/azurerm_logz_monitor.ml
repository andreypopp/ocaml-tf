(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_logz_monitor__plan = {
  billing_cycle : string;  (** billing_cycle *)
  effective_date : string;  (** effective_date *)
  plan_id : string option; [@option]  (** plan_id *)
  usage_type : string;  (** usage_type *)
}
[@@deriving yojson_of]
(** azurerm_logz_monitor__plan *)

type azurerm_logz_monitor__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_logz_monitor__timeouts *)

type azurerm_logz_monitor__user = {
  email : string;  (** email *)
  first_name : string;  (** first_name *)
  last_name : string;  (** last_name *)
  phone_number : string;  (** phone_number *)
}
[@@deriving yojson_of]
(** azurerm_logz_monitor__user *)

type azurerm_logz_monitor = {
  company_name : string option; [@option]  (** company_name *)
  enabled : bool option; [@option]  (** enabled *)
  enterprise_app_id : string option; [@option]
      (** enterprise_app_id *)
  location : string;  (** location *)
  name : string;  (** name *)
  resource_group_name : string;  (** resource_group_name *)
  tags : (string * string) list option; [@option]  (** tags *)
  plan : azurerm_logz_monitor__plan list;
  timeouts : azurerm_logz_monitor__timeouts option;
  user : azurerm_logz_monitor__user list;
}
[@@deriving yojson_of]
(** azurerm_logz_monitor *)

let azurerm_logz_monitor ?company_name ?enabled ?enterprise_app_id
    ?tags ?timeouts ~location ~name ~resource_group_name ~plan ~user
    __resource_id =
  let __resource_type = "azurerm_logz_monitor" in
  let __resource =
    {
      company_name;
      enabled;
      enterprise_app_id;
      location;
      name;
      resource_group_name;
      tags;
      plan;
      timeouts;
      user;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_logz_monitor __resource);
  ()
