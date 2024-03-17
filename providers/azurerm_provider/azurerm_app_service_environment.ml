(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type azurerm_app_service_environment__cluster_setting = {
  name : string;  (** name *)
  value : string;  (** value *)
}
[@@deriving yojson_of]
(** azurerm_app_service_environment__cluster_setting *)

type azurerm_app_service_environment__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_app_service_environment__timeouts *)

type azurerm_app_service_environment = {
  allowed_user_ip_cidrs : string list option; [@option]
      (** allowed_user_ip_cidrs *)
  front_end_scale_factor : float option; [@option]
      (** front_end_scale_factor *)
  internal_load_balancing_mode : string option; [@option]
      (** internal_load_balancing_mode *)
  name : string;  (** name *)
  pricing_tier : string option; [@option]  (** pricing_tier *)
  resource_group_name : string;  (** resource_group_name *)
  subnet_id : string;  (** subnet_id *)
  tags : (string * string) list option; [@option]  (** tags *)
  cluster_setting :
    azurerm_app_service_environment__cluster_setting list;
  timeouts : azurerm_app_service_environment__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_app_service_environment *)

let azurerm_app_service_environment ?allowed_user_ip_cidrs
    ?front_end_scale_factor ?internal_load_balancing_mode
    ?pricing_tier ?tags ?timeouts ~name ~resource_group_name
    ~subnet_id ~cluster_setting __resource_id =
  let __resource_type = "azurerm_app_service_environment" in
  let __resource =
    {
      allowed_user_ip_cidrs;
      front_end_scale_factor;
      internal_load_balancing_mode;
      name;
      pricing_tier;
      resource_group_name;
      subnet_id;
      tags;
      cluster_setting;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_app_service_environment __resource);
  ()
