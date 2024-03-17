(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_public_ip_prefix__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_public_ip_prefix__timeouts *)

type azurerm_public_ip_prefix = {
  id : string prop option; [@option]  (** id *)
  ip_version : string prop option; [@option]  (** ip_version *)
  location : string prop;  (** location *)
  name : string prop;  (** name *)
  prefix_length : float prop option; [@option]  (** prefix_length *)
  resource_group_name : string prop;  (** resource_group_name *)
  sku : string prop option; [@option]  (** sku *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  zones : string prop list option; [@option]  (** zones *)
  timeouts : azurerm_public_ip_prefix__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_public_ip_prefix *)

let azurerm_public_ip_prefix ?id ?ip_version ?prefix_length ?sku
    ?tags ?zones ?timeouts ~location ~name ~resource_group_name
    __resource_id =
  let __resource_type = "azurerm_public_ip_prefix" in
  let __resource =
    {
      id;
      ip_version;
      location;
      name;
      prefix_length;
      resource_group_name;
      sku;
      tags;
      zones;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_public_ip_prefix __resource);
  ()
