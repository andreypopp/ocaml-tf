(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_netapp_volume_quota_rule__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_netapp_volume_quota_rule__timeouts *)

type azurerm_netapp_volume_quota_rule = {
  id : string prop option; [@option]  (** id *)
  location : string prop;  (** location *)
  name : string prop;  (** name *)
  quota_size_in_kib : float prop;  (** quota_size_in_kib *)
  quota_target : string prop option; [@option]  (** quota_target *)
  quota_type : string prop;  (** quota_type *)
  volume_id : string prop;  (** volume_id *)
  timeouts : azurerm_netapp_volume_quota_rule__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_netapp_volume_quota_rule *)

type t = {
  id : string prop;
  location : string prop;
  name : string prop;
  quota_size_in_kib : float prop;
  quota_target : string prop;
  quota_type : string prop;
  volume_id : string prop;
}

let azurerm_netapp_volume_quota_rule ?id ?quota_target ?timeouts
    ~location ~name ~quota_size_in_kib ~quota_type ~volume_id
    __resource_id =
  let __resource_type = "azurerm_netapp_volume_quota_rule" in
  let __resource =
    ({
       id;
       location;
       name;
       quota_size_in_kib;
       quota_target;
       quota_type;
       volume_id;
       timeouts;
     }
      : azurerm_netapp_volume_quota_rule)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_netapp_volume_quota_rule __resource);
  let __resource_attributes =
    ({
       id = Prop.computed __resource_type __resource_id "id";
       location =
         Prop.computed __resource_type __resource_id "location";
       name = Prop.computed __resource_type __resource_id "name";
       quota_size_in_kib =
         Prop.computed __resource_type __resource_id
           "quota_size_in_kib";
       quota_target =
         Prop.computed __resource_type __resource_id "quota_target";
       quota_type =
         Prop.computed __resource_type __resource_id "quota_type";
       volume_id =
         Prop.computed __resource_type __resource_id "volume_id";
     }
      : t)
  in
  __resource_attributes
