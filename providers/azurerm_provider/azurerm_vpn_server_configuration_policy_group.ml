(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_vpn_server_configuration_policy_group__policy = {
  name : string prop;  (** name *)
  type_ : string prop; [@key "type"]  (** type *)
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** azurerm_vpn_server_configuration_policy_group__policy *)

type azurerm_vpn_server_configuration_policy_group__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_vpn_server_configuration_policy_group__timeouts *)

type azurerm_vpn_server_configuration_policy_group = {
  id : string prop option; [@option]  (** id *)
  is_default : bool prop option; [@option]  (** is_default *)
  name : string prop;  (** name *)
  priority : float prop option; [@option]  (** priority *)
  vpn_server_configuration_id : string prop;
      (** vpn_server_configuration_id *)
  policy :
    azurerm_vpn_server_configuration_policy_group__policy list;
  timeouts :
    azurerm_vpn_server_configuration_policy_group__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_vpn_server_configuration_policy_group *)

let azurerm_vpn_server_configuration_policy_group ?id ?is_default
    ?priority ?timeouts ~name ~vpn_server_configuration_id ~policy
    __resource_id =
  let __resource_type =
    "azurerm_vpn_server_configuration_policy_group"
  in
  let __resource =
    {
      id;
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
