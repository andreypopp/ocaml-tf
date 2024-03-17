(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_spring_cloud_build_pack_binding__launch = {
  properties : (string * string prop) list option; [@option]
      (** properties *)
  secrets : (string * string prop) list option; [@option]
      (** secrets *)
}
[@@deriving yojson_of]
(** azurerm_spring_cloud_build_pack_binding__launch *)

type azurerm_spring_cloud_build_pack_binding__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_spring_cloud_build_pack_binding__timeouts *)

type azurerm_spring_cloud_build_pack_binding = {
  binding_type : string prop option; [@option]  (** binding_type *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  spring_cloud_builder_id : string prop;
      (** spring_cloud_builder_id *)
  launch : azurerm_spring_cloud_build_pack_binding__launch list;
  timeouts : azurerm_spring_cloud_build_pack_binding__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_spring_cloud_build_pack_binding *)

let azurerm_spring_cloud_build_pack_binding ?binding_type ?id
    ?timeouts ~name ~spring_cloud_builder_id ~launch __resource_id =
  let __resource_type = "azurerm_spring_cloud_build_pack_binding" in
  let __resource =
    {
      binding_type;
      id;
      name;
      spring_cloud_builder_id;
      launch;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_spring_cloud_build_pack_binding __resource);
  ()
