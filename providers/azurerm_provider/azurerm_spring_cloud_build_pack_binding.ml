(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type azurerm_spring_cloud_build_pack_binding__launch = {
  properties : (string * string) list option; [@option]
      (** properties *)
  secrets : (string * string) list option; [@option]  (** secrets *)
}
[@@deriving yojson_of]
(** azurerm_spring_cloud_build_pack_binding__launch *)

type azurerm_spring_cloud_build_pack_binding__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_spring_cloud_build_pack_binding__timeouts *)

type azurerm_spring_cloud_build_pack_binding = {
  binding_type : string option; [@option]  (** binding_type *)
  name : string;  (** name *)
  spring_cloud_builder_id : string;  (** spring_cloud_builder_id *)
  launch : azurerm_spring_cloud_build_pack_binding__launch list;
  timeouts : azurerm_spring_cloud_build_pack_binding__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_spring_cloud_build_pack_binding *)

let azurerm_spring_cloud_build_pack_binding ?binding_type ?timeouts
    ~name ~spring_cloud_builder_id ~launch __resource_id =
  let __resource_type = "azurerm_spring_cloud_build_pack_binding" in
  let __resource =
    { binding_type; name; spring_cloud_builder_id; launch; timeouts }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_spring_cloud_build_pack_binding __resource);
  ()
