(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type azurerm_private_link_service__nat_ip_configuration = {
  name : string;  (** name *)
  primary : bool;  (** primary *)
  private_ip_address : string option; [@option]
      (** private_ip_address *)
  private_ip_address_version : string option; [@option]
      (** private_ip_address_version *)
  subnet_id : string;  (** subnet_id *)
}
[@@deriving yojson_of]
(** azurerm_private_link_service__nat_ip_configuration *)

type azurerm_private_link_service__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_private_link_service__timeouts *)

type azurerm_private_link_service = {
  auto_approval_subscription_ids : string list option; [@option]
      (** auto_approval_subscription_ids *)
  enable_proxy_protocol : bool option; [@option]
      (** enable_proxy_protocol *)
  fqdns : string list option; [@option]  (** fqdns *)
  load_balancer_frontend_ip_configuration_ids : string list;
      (** load_balancer_frontend_ip_configuration_ids *)
  location : string;  (** location *)
  name : string;  (** name *)
  resource_group_name : string;  (** resource_group_name *)
  tags : (string * string) list option; [@option]  (** tags *)
  visibility_subscription_ids : string list option; [@option]
      (** visibility_subscription_ids *)
  nat_ip_configuration :
    azurerm_private_link_service__nat_ip_configuration list;
  timeouts : azurerm_private_link_service__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_private_link_service *)

let azurerm_private_link_service ?auto_approval_subscription_ids
    ?enable_proxy_protocol ?fqdns ?tags ?visibility_subscription_ids
    ?timeouts ~load_balancer_frontend_ip_configuration_ids ~location
    ~name ~resource_group_name ~nat_ip_configuration __resource_id =
  let __resource_type = "azurerm_private_link_service" in
  let __resource =
    {
      auto_approval_subscription_ids;
      enable_proxy_protocol;
      fqdns;
      load_balancer_frontend_ip_configuration_ids;
      location;
      name;
      resource_group_name;
      tags;
      visibility_subscription_ids;
      nat_ip_configuration;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_private_link_service __resource);
  ()
