(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type policy = {
  name : string prop;  (** name *)
  type_ : string prop; [@key "type"]  (** type *)
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** policy *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type azurerm_vpn_server_configuration_policy_group = {
  id : string prop option; [@option]  (** id *)
  is_default : bool prop option; [@option]  (** is_default *)
  name : string prop;  (** name *)
  priority : float prop option; [@option]  (** priority *)
  vpn_server_configuration_id : string prop;
      (** vpn_server_configuration_id *)
  policy : policy list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_vpn_server_configuration_policy_group *)

let policy ~name ~type_ ~value () : policy = { name; type_; value }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_vpn_server_configuration_policy_group ?id ?is_default
    ?priority ?timeouts ~name ~vpn_server_configuration_id ~policy ()
    : azurerm_vpn_server_configuration_policy_group =
  {
    id;
    is_default;
    name;
    priority;
    vpn_server_configuration_id;
    policy;
    timeouts;
  }

type t = {
  id : string prop;
  is_default : bool prop;
  name : string prop;
  priority : float prop;
  vpn_server_configuration_id : string prop;
}

let register ?tf_module ?id ?is_default ?priority ?timeouts ~name
    ~vpn_server_configuration_id ~policy __resource_id =
  let __resource_type =
    "azurerm_vpn_server_configuration_policy_group"
  in
  let __resource =
    azurerm_vpn_server_configuration_policy_group ?id ?is_default
      ?priority ?timeouts ~name ~vpn_server_configuration_id ~policy
      ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_vpn_server_configuration_policy_group
       __resource);
  let __resource_attributes =
    ({
       id = Prop.computed __resource_type __resource_id "id";
       is_default =
         Prop.computed __resource_type __resource_id "is_default";
       name = Prop.computed __resource_type __resource_id "name";
       priority =
         Prop.computed __resource_type __resource_id "priority";
       vpn_server_configuration_id =
         Prop.computed __resource_type __resource_id
           "vpn_server_configuration_id";
     }
      : t)
  in
  __resource_attributes
