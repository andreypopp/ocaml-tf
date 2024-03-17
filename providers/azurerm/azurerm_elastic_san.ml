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

type t = {
  base_size_in_tib : float prop;
  extended_size_in_tib : float prop;
  id : string prop;
  location : string prop;
  name : string prop;
  resource_group_name : string prop;
  tags : (string * string) list prop;
  total_iops : float prop;
  total_mbps : float prop;
  total_size_in_tib : float prop;
  total_volume_size_in_gib : float prop;
  volume_group_count : float prop;
  zones : string list prop;
}

let azurerm_elastic_san ?extended_size_in_tib ?id ?tags ?zones
    ?timeouts ~base_size_in_tib ~location ~name ~resource_group_name
    ~sku __resource_id =
  let __resource_type = "azurerm_elastic_san" in
  let __resource =
    ({
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
      : azurerm_elastic_san)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_elastic_san __resource);
  let __resource_attributes =
    ({
       base_size_in_tib =
         Prop.computed __resource_type __resource_id
           "base_size_in_tib";
       extended_size_in_tib =
         Prop.computed __resource_type __resource_id
           "extended_size_in_tib";
       id = Prop.computed __resource_type __resource_id "id";
       location =
         Prop.computed __resource_type __resource_id "location";
       name = Prop.computed __resource_type __resource_id "name";
       resource_group_name =
         Prop.computed __resource_type __resource_id
           "resource_group_name";
       tags = Prop.computed __resource_type __resource_id "tags";
       total_iops =
         Prop.computed __resource_type __resource_id "total_iops";
       total_mbps =
         Prop.computed __resource_type __resource_id "total_mbps";
       total_size_in_tib =
         Prop.computed __resource_type __resource_id
           "total_size_in_tib";
       total_volume_size_in_gib =
         Prop.computed __resource_type __resource_id
           "total_volume_size_in_gib";
       volume_group_count =
         Prop.computed __resource_type __resource_id
           "volume_group_count";
       zones = Prop.computed __resource_type __resource_id "zones";
     }
      : t)
  in
  __resource_attributes
