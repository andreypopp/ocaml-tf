(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_elastic_san__sku = {
  name : string prop;  (** name *)
  tier : string prop option; [@option]  (** tier *)
}
[@@deriving yojson_of]
(** azurerm_elastic_san__sku *)

type azurerm_elastic_san__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_elastic_san__timeouts *)

type azurerm_elastic_san = {
  base_size_in_tib : float prop;  (** base_size_in_tib *)
  extended_size_in_tib : float prop option; [@option]
      (** extended_size_in_tib *)
  id : string prop option; [@option]  (** id *)
  location : string prop;  (** location *)
  name : string prop;  (** name *)
  resource_group_name : string prop;  (** resource_group_name *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  zones : string prop list option; [@option]  (** zones *)
  sku : azurerm_elastic_san__sku list;
  timeouts : azurerm_elastic_san__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_elastic_san *)

let azurerm_elastic_san ?extended_size_in_tib ?id ?tags ?zones
    ?timeouts ~base_size_in_tib ~location ~name ~resource_group_name
    ~sku __resource_id =
  let __resource_type = "azurerm_elastic_san" in
  let __resource =
    {
      base_size_in_tib;
      extended_size_in_tib;
      id;
      location;
      name;
      resource_group_name;
      tags;
      zones;
      sku;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_elastic_san __resource);
  ()
