(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type build_pack_group = {
  build_pack_ids : string prop list option; [@option]
      (** build_pack_ids *)
  name : string prop;  (** name *)
}
[@@deriving yojson_of]
(** build_pack_group *)

type stack = {
  id : string prop;  (** id *)
  version : string prop;  (** version *)
}
[@@deriving yojson_of]
(** stack *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type azurerm_spring_cloud_builder = {
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  spring_cloud_service_id : string prop;
      (** spring_cloud_service_id *)
  build_pack_group : build_pack_group list;
  stack : stack list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_spring_cloud_builder *)

let build_pack_group ?build_pack_ids ~name () : build_pack_group =
  { build_pack_ids; name }

let stack ~id ~version () : stack = { id; version }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_spring_cloud_builder ?id ?timeouts ~name
    ~spring_cloud_service_id ~build_pack_group ~stack () :
    azurerm_spring_cloud_builder =
  {
    id;
    name;
    spring_cloud_service_id;
    build_pack_group;
    stack;
    timeouts;
  }

type t = {
  id : string prop;
  name : string prop;
  spring_cloud_service_id : string prop;
}

let register ?tf_module ?id ?timeouts ~name ~spring_cloud_service_id
    ~build_pack_group ~stack __resource_id =
  let __resource_type = "azurerm_spring_cloud_builder" in
  let __resource =
    azurerm_spring_cloud_builder ?id ?timeouts ~name
      ~spring_cloud_service_id ~build_pack_group ~stack ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
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
