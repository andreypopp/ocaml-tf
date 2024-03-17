(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_ip_group_cidr__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
}
[@@deriving yojson_of]
(** azurerm_ip_group_cidr__timeouts *)

type azurerm_ip_group_cidr = {
  cidr : string prop;  (** cidr *)
  id : string prop option; [@option]  (** id *)
  ip_group_id : string prop;  (** ip_group_id *)
  timeouts : azurerm_ip_group_cidr__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_ip_group_cidr *)

let azurerm_ip_group_cidr ?id ?timeouts ~cidr ~ip_group_id
    __resource_id =
  let __resource_type = "azurerm_ip_group_cidr" in
  let __resource = { cidr; id; ip_group_id; timeouts } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_ip_group_cidr __resource);
  ()
