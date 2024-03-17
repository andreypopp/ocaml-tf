(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_shared_image_gallery__sharing__community_gallery = {
  eula : string prop;  (** eula *)
  name : string prop;  (** name *)
  prefix : string prop;  (** prefix *)
  publisher_email : string prop;  (** publisher_email *)
  publisher_uri : string prop;  (** publisher_uri *)
}
[@@deriving yojson_of]
(** azurerm_shared_image_gallery__sharing__community_gallery *)

type azurerm_shared_image_gallery__sharing = {
  permission : string prop;  (** permission *)
  community_gallery :
    azurerm_shared_image_gallery__sharing__community_gallery list;
}
[@@deriving yojson_of]
(** azurerm_shared_image_gallery__sharing *)

type azurerm_shared_image_gallery__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_shared_image_gallery__timeouts *)

type azurerm_shared_image_gallery = {
  description : string prop option; [@option]  (** description *)
  id : string prop option; [@option]  (** id *)
  location : string prop;  (** location *)
  name : string prop;  (** name *)
  resource_group_name : string prop;  (** resource_group_name *)
  tags : (string * string prop) list option; [@option]  (** tags *)
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
