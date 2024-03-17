(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_bastion_host__ip_configuration = {
  name : string prop;  (** name *)
  public_ip_address_id : string prop;  (** public_ip_address_id *)
  subnet_id : string prop;  (** subnet_id *)
}
[@@deriving yojson_of]
(** azurerm_bastion_host__ip_configuration *)

type azurerm_bastion_host__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_bastion_host__timeouts *)

type azurerm_bastion_host = {
  copy_paste_enabled : bool prop option; [@option]
      (** copy_paste_enabled *)
  file_copy_enabled : bool prop option; [@option]
      (** file_copy_enabled *)
  id : string prop option; [@option]  (** id *)
  ip_connect_enabled : bool prop option; [@option]
      (** ip_connect_enabled *)
  location : string prop;  (** location *)
  name : string prop;  (** name *)
  resource_group_name : string prop;  (** resource_group_name *)
  scale_units : float prop option; [@option]  (** scale_units *)
  shareable_link_enabled : bool prop option; [@option]
      (** shareable_link_enabled *)
  sku : string prop option; [@option]  (** sku *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tunneling_enabled : bool prop option; [@option]
      (** tunneling_enabled *)
  ip_configuration : azurerm_bastion_host__ip_configuration list;
  timeouts : azurerm_bastion_host__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_bastion_host *)

let azurerm_bastion_host ?copy_paste_enabled ?file_copy_enabled ?id
    ?ip_connect_enabled ?scale_units ?shareable_link_enabled ?sku
    ?tags ?tunneling_enabled ?timeouts ~location ~name
    ~resource_group_name ~ip_configuration __resource_id =
  let __resource_type = "azurerm_bastion_host" in
  let __resource =
    {
      copy_paste_enabled;
      file_copy_enabled;
      id;
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
