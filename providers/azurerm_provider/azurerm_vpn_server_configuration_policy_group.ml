(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type azurerm_vpn_server_configuration_policy_group__policy = {
  name : string;  (** name *)
  type_ : string; [@key "type"]  (** type *)
  value : string;  (** value *)
}
[@@deriving yojson_of]
(** azurerm_vpn_server_configuration_policy_group__policy *)

type azurerm_vpn_server_configuration_policy_group__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_vpn_server_configuration_policy_group__timeouts *)

type azurerm_vpn_server_configuration_policy_group = {
  is_default : bool option; [@option]  (** is_default *)
  name : string;  (** name *)
  priority : float option; [@option]  (** priority *)
  vpn_server_configuration_id : string;
      (** vpn_server_configuration_id *)
  policy :
    azurerm_vpn_server_configuration_policy_group__policy list;
  timeouts :
    azurerm_vpn_server_configuration_policy_group__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_vpn_server_configuration_policy_group *)

let azurerm_vpn_server_configuration_policy_group ?is_default
    ?priority ?timeouts ~name ~vpn_server_configuration_id ~policy
    __resource_id =
  let __resource_type =
    "azurerm_vpn_server_configuration_policy_group"
  in
  let __resource =
    {
      is_default;
      name;
      priority;
      vpn_server_configuration_id;
      policy;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_vpn_server_configuration_policy_group
       __resource);
  ()
