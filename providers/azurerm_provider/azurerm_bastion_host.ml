(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type azurerm_bastion_host__ip_configuration = {
  name : string;  (** name *)
  public_ip_address_id : string;  (** public_ip_address_id *)
  subnet_id : string;  (** subnet_id *)
}
[@@deriving yojson_of]
(** azurerm_bastion_host__ip_configuration *)

type azurerm_bastion_host__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_bastion_host__timeouts *)

type azurerm_bastion_host = {
  copy_paste_enabled : bool option; [@option]
      (** copy_paste_enabled *)
  file_copy_enabled : bool option; [@option]
      (** file_copy_enabled *)
  ip_connect_enabled : bool option; [@option]
      (** ip_connect_enabled *)
  location : string;  (** location *)
  name : string;  (** name *)
  resource_group_name : string;  (** resource_group_name *)
  scale_units : float option; [@option]  (** scale_units *)
  shareable_link_enabled : bool option; [@option]
      (** shareable_link_enabled *)
  sku : string option; [@option]  (** sku *)
  tags : (string * string) list option; [@option]  (** tags *)
  tunneling_enabled : bool option; [@option]
      (** tunneling_enabled *)
  ip_configuration : azurerm_bastion_host__ip_configuration list;
  timeouts : azurerm_bastion_host__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_bastion_host *)

let azurerm_bastion_host ?copy_paste_enabled ?file_copy_enabled
    ?ip_connect_enabled ?scale_units ?shareable_link_enabled ?sku
    ?tags ?tunneling_enabled ?timeouts ~location ~name
    ~resource_group_name ~ip_configuration __resource_id =
  let __resource_type = "azurerm_bastion_host" in
  let __resource =
    {
      copy_paste_enabled;
      file_copy_enabled;
      ip_connect_enabled;
      location;
      name;
      resource_group_name;
      scale_units;
      shareable_link_enabled;
      sku;
      tags;
      tunneling_enabled;
      ip_configuration;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_bastion_host __resource);
  ()
