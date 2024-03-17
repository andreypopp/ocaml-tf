(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_elastic_san__sku = {
  name : string;  (** name *)
  tier : string option; [@option]  (** tier *)
}
[@@deriving yojson_of]
(** azurerm_elastic_san__sku *)

type azurerm_elastic_san__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_elastic_san__timeouts *)

type azurerm_elastic_san = {
  base_size_in_tib : float;  (** base_size_in_tib *)
  extended_size_in_tib : float option; [@option]
      (** extended_size_in_tib *)
  id : string option; [@option]  (** id *)
  location : string;  (** location *)
  name : string;  (** name *)
  resource_group_name : string;  (** resource_group_name *)
  tags : (string * string) list option; [@option]  (** tags *)
  zones : string list option; [@option]  (** zones *)
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
