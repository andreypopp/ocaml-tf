(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_iothub_certificate__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_iothub_certificate__timeouts *)

type azurerm_iothub_certificate = {
  certificate_content : string prop;  (** certificate_content *)
  id : string prop option; [@option]  (** id *)
  iothub_name : string prop;  (** iothub_name *)
  is_verified : bool prop option; [@option]  (** is_verified *)
  name : string prop;  (** name *)
  resource_group_name : string prop;  (** resource_group_name *)
  timeouts : azurerm_iothub_certificate__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_iothub_certificate *)

type t = {
  certificate_content : string prop;
  id : string prop;
  iothub_name : string prop;
  is_verified : bool prop;
  name : string prop;
  resource_group_name : string prop;
}

let azurerm_iothub_certificate ?id ?is_verified ?timeouts
    ~certificate_content ~iothub_name ~name ~resource_group_name
    __resource_id =
  let __resource_type = "azurerm_iothub_certificate" in
  let __resource =
    ({
       certificate_content;
       id;
       iothub_name;
       is_verified;
       name;
       resource_group_name;
       timeouts;
     }
      : azurerm_iothub_certificate)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_iothub_certificate __resource);
  let __resource_attributes =
    ({
       certificate_content =
         Prop.computed __resource_type __resource_id
           "certificate_content";
       id = Prop.computed __resource_type __resource_id "id";
       iothub_name =
         Prop.computed __resource_type __resource_id "iothub_name";
       is_verified =
         Prop.computed __resource_type __resource_id "is_verified";
       name = Prop.computed __resource_type __resource_id "name";
       resource_group_name =
         Prop.computed __resource_type __resource_id
           "resource_group_name";
     }
      : t)
  in
  __resource_attributes
