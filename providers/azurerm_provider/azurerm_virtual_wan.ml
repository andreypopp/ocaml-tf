(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_virtual_wan__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_virtual_wan__timeouts *)

type azurerm_virtual_wan = {
  allow_branch_to_branch_traffic : bool option; [@option]
      (** allow_branch_to_branch_traffic *)
  disable_vpn_encryption : bool option; [@option]
      (** disable_vpn_encryption *)
  id : string option; [@option]  (** id *)
  location : string;  (** location *)
  name : string;  (** name *)
  office365_local_breakout_category : string option; [@option]
      (** office365_local_breakout_category *)
  resource_group_name : string;  (** resource_group_name *)
  tags : (string * string) list option; [@option]  (** tags *)
  type_ : string option; [@option] [@key "type"]  (** type *)
  timeouts : azurerm_virtual_wan__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_virtual_wan *)

let azurerm_virtual_wan ?allow_branch_to_branch_traffic
    ?disable_vpn_encryption ?id ?office365_local_breakout_category
    ?tags ?type_ ?timeouts ~location ~name ~resource_group_name
    __resource_id =
  let __resource_type = "azurerm_virtual_wan" in
  let __resource =
    {
      allow_branch_to_branch_traffic;
      disable_vpn_encryption;
      id;
      location;
      name;
      office365_local_breakout_category;
      resource_group_name;
      tags;
      type_;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_virtual_wan __resource);
  ()
