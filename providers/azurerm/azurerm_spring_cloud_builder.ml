(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_spring_cloud_builder__build_pack_group = {
  build_pack_ids : string prop list option; [@option]
      (** build_pack_ids *)
  name : string prop;  (** name *)
}
[@@deriving yojson_of]
(** azurerm_spring_cloud_builder__build_pack_group *)

type azurerm_spring_cloud_builder__stack = {
  id : string prop;  (** id *)
  version : string prop;  (** version *)
}
[@@deriving yojson_of]
(** azurerm_spring_cloud_builder__stack *)

type azurerm_spring_cloud_builder__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_spring_cloud_builder__timeouts *)

type azurerm_spring_cloud_builder = {
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  spring_cloud_service_id : string prop;
      (** spring_cloud_service_id *)
  build_pack_group :
    azurerm_spring_cloud_builder__build_pack_group list;
  stack : azurerm_spring_cloud_builder__stack list;
  timeouts : azurerm_spring_cloud_builder__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_spring_cloud_builder *)

type t = {
  id : string prop;
  name : string prop;
  spring_cloud_service_id : string prop;
}

let azurerm_spring_cloud_builder ?id ?timeouts ~name
    ~spring_cloud_service_id ~build_pack_group ~stack __resource_id =
  let __resource_type = "azurerm_spring_cloud_builder" in
  let __resource =
    ({
       id;
       name;
       spring_cloud_service_id;
       build_pack_group;
       stack;
       timeouts;
     }
      : azurerm_spring_cloud_builder)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_spring_cloud_builder __resource);
  let __resource_attributes =
    ({
       id = Prop.computed __resource_type __resource_id "id";
       name = Prop.computed __resource_type __resource_id "name";
       spring_cloud_service_id =
         Prop.computed __resource_type __resource_id
           "spring_cloud_service_id";
     }
      : t)
  in
  __resource_attributes
