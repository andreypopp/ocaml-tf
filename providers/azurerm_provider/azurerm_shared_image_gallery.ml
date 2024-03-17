(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_shared_image_gallery__sharing__community_gallery = {
  eula : string;  (** eula *)
  name : string;  (** name *)
  prefix : string;  (** prefix *)
  publisher_email : string;  (** publisher_email *)
  publisher_uri : string;  (** publisher_uri *)
}
[@@deriving yojson_of]
(** azurerm_shared_image_gallery__sharing__community_gallery *)

type azurerm_shared_image_gallery__sharing = {
  permission : string;  (** permission *)
  community_gallery :
    azurerm_shared_image_gallery__sharing__community_gallery list;
}
[@@deriving yojson_of]
(** azurerm_shared_image_gallery__sharing *)

type azurerm_shared_image_gallery__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_shared_image_gallery__timeouts *)

type azurerm_shared_image_gallery = {
  description : string option; [@option]  (** description *)
  id : string option; [@option]  (** id *)
  location : string;  (** location *)
  name : string;  (** name *)
  resource_group_name : string;  (** resource_group_name *)
  tags : (string * string) list option; [@option]  (** tags *)
  sharing : azurerm_shared_image_gallery__sharing list;
  timeouts : azurerm_shared_image_gallery__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_shared_image_gallery *)

let azurerm_shared_image_gallery ?description ?id ?tags ?timeouts
    ~location ~name ~resource_group_name ~sharing __resource_id =
  let __resource_type = "azurerm_shared_image_gallery" in
  let __resource =
    {
      description;
      id;
      location;
      name;
      resource_group_name;
      tags;
      sharing;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_shared_image_gallery __resource);
  ()
