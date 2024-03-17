(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type azurerm_netapp_volume_quota_rule__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_netapp_volume_quota_rule__timeouts *)

type azurerm_netapp_volume_quota_rule = {
  location : string;  (** location *)
  name : string;  (** name *)
  quota_size_in_kib : float;  (** quota_size_in_kib *)
  quota_target : string option; [@option]  (** quota_target *)
  quota_type : string;  (** quota_type *)
  volume_id : string;  (** volume_id *)
  timeouts : azurerm_netapp_volume_quota_rule__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_netapp_volume_quota_rule *)

let azurerm_netapp_volume_quota_rule ?quota_target ?timeouts
    ~location ~name ~quota_size_in_kib ~quota_type ~volume_id
    __resource_id =
  let __resource_type = "azurerm_netapp_volume_quota_rule" in
  let __resource =
    {
      location;
      name;
      quota_size_in_kib;
      quota_target;
      quota_type;
      volume_id;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_netapp_volume_quota_rule __resource);
  ()
