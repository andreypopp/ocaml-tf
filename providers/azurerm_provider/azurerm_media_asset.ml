(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_media_asset__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_media_asset__timeouts *)

type azurerm_media_asset = {
  alternate_id : string option; [@option]  (** alternate_id *)
  description : string option; [@option]  (** description *)
  media_services_account_name : string;
      (** media_services_account_name *)
  name : string;  (** name *)
  resource_group_name : string;  (** resource_group_name *)
  timeouts : azurerm_media_asset__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_media_asset *)

let azurerm_media_asset ?alternate_id ?description ?timeouts
    ~media_services_account_name ~name ~resource_group_name
    __resource_id =
  let __resource_type = "azurerm_media_asset" in
  let __resource =
    {
      alternate_id;
      description;
      media_services_account_name;
      name;
      resource_group_name;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_media_asset __resource);
  ()
