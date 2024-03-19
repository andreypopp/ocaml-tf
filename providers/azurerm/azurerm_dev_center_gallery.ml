(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
}
[@@deriving yojson_of]
(** timeouts *)

type azurerm_dev_center_gallery = {
  dev_center_id : string prop;  (** dev_center_id *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  shared_gallery_id : string prop;  (** shared_gallery_id *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_dev_center_gallery *)

let timeouts ?create ?delete ?read () : timeouts =
  { create; delete; read }

let azurerm_dev_center_gallery ?id ?timeouts ~dev_center_id ~name
    ~shared_gallery_id () : azurerm_dev_center_gallery =
  { dev_center_id; id; name; shared_gallery_id; timeouts }

type t = {
  dev_center_id : string prop;
  id : string prop;
  name : string prop;
  shared_gallery_id : string prop;
}

let register ?tf_module ?id ?timeouts ~dev_center_id ~name
    ~shared_gallery_id __resource_id =
  let __resource_type = "azurerm_dev_center_gallery" in
  let __resource =
    azurerm_dev_center_gallery ?id ?timeouts ~dev_center_id ~name
      ~shared_gallery_id ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_dev_center_gallery __resource);
  let __resource_attributes =
    ({
       dev_center_id =
         Prop.computed __resource_type __resource_id "dev_center_id";
       id = Prop.computed __resource_type __resource_id "id";
       name = Prop.computed __resource_type __resource_id "name";
       shared_gallery_id =
         Prop.computed __resource_type __resource_id
           "shared_gallery_id";
     }
      : t)
  in
  __resource_attributes
