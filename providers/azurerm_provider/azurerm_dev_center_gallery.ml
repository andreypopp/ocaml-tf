(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_dev_center_gallery__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
}
[@@deriving yojson_of]
(** azurerm_dev_center_gallery__timeouts *)

type azurerm_dev_center_gallery = {
  dev_center_id : string prop;  (** dev_center_id *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  shared_gallery_id : string prop;  (** shared_gallery_id *)
  timeouts : azurerm_dev_center_gallery__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_dev_center_gallery *)

let azurerm_dev_center_gallery ?id ?timeouts ~dev_center_id ~name
    ~shared_gallery_id __resource_id =
  let __resource_type = "azurerm_dev_center_gallery" in
  let __resource =
    { dev_center_id; id; name; shared_gallery_id; timeouts }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_dev_center_gallery __resource);
  ()
