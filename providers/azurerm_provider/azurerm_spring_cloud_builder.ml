(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type azurerm_spring_cloud_builder__build_pack_group = {
  build_pack_ids : string list option; [@option]
      (** build_pack_ids *)
  name : string;  (** name *)
}
[@@deriving yojson_of]
(** azurerm_spring_cloud_builder__build_pack_group *)

type azurerm_spring_cloud_builder__stack = {
  id : string;  (** id *)
  version : string;  (** version *)
}
[@@deriving yojson_of]
(** azurerm_spring_cloud_builder__stack *)

type azurerm_spring_cloud_builder__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_spring_cloud_builder__timeouts *)

type azurerm_spring_cloud_builder = {
  name : string;  (** name *)
  spring_cloud_service_id : string;  (** spring_cloud_service_id *)
  build_pack_group :
    azurerm_spring_cloud_builder__build_pack_group list;
  stack : azurerm_spring_cloud_builder__stack list;
  timeouts : azurerm_spring_cloud_builder__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_spring_cloud_builder *)

let azurerm_spring_cloud_builder ?timeouts ~name
    ~spring_cloud_service_id ~build_pack_group ~stack __resource_id =
  let __resource_type = "azurerm_spring_cloud_builder" in
  let __resource =
    {
      name;
      spring_cloud_service_id;
      build_pack_group;
      stack;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_spring_cloud_builder __resource);
  ()
