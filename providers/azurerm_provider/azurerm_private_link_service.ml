(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_private_link_service__nat_ip_configuration = {
  name : string prop;  (** name *)
  primary : bool prop;  (** primary *)
  private_ip_address : string prop option; [@option]
      (** private_ip_address *)
  private_ip_address_version : string prop option; [@option]
      (** private_ip_address_version *)
  subnet_id : string prop;  (** subnet_id *)
}
[@@deriving yojson_of]
(** azurerm_private_link_service__nat_ip_configuration *)

type azurerm_private_link_service__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_private_link_service__timeouts *)

type azurerm_private_link_service = {
  auto_approval_subscription_ids : string prop list option; [@option]
      (** auto_approval_subscription_ids *)
  enable_proxy_protocol : bool prop option; [@option]
      (** enable_proxy_protocol *)
  fqdns : string prop list option; [@option]  (** fqdns *)
  id : string prop option; [@option]  (** id *)
  load_balancer_frontend_ip_configuration_ids : string prop list;
      (** load_balancer_frontend_ip_configuration_ids *)
  location : string prop;  (** location *)
  name : string prop;  (** name *)
  resource_group_name : string prop;  (** resource_group_name *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  visibility_subscription_ids : string prop list option; [@option]
      (** visibility_subscription_ids *)
  nat_ip_configuration :
    azurerm_private_link_service__nat_ip_configuration list;
  timeouts : azurerm_private_link_service__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_private_link_service *)

let azurerm_private_link_service ?auto_approval_subscription_ids
    ?enable_proxy_protocol ?fqdns ?id ?tags
    ?visibility_subscription_ids ?timeouts
    ~load_balancer_frontend_ip_configuration_ids ~location ~name
    ~resource_group_name ~nat_ip_configuration __resource_id =
  let __resource_type = "azurerm_private_link_service" in
  let __resource =
    {
      auto_approval_subscription_ids;
      enable_proxy_protocol;
      fqdns;
      id;
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
