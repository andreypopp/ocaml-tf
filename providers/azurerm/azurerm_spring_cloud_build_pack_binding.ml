(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type launch = {
  properties : (string * string prop) list option; [@option]
      (** properties *)
  secrets : (string * string prop) list option; [@option]
      (** secrets *)
}
[@@deriving yojson_of]
(** launch *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type azurerm_spring_cloud_build_pack_binding = {
  binding_type : string prop option; [@option]  (** binding_type *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  spring_cloud_builder_id : string prop;
      (** spring_cloud_builder_id *)
  launch : launch list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_spring_cloud_build_pack_binding *)

let launch ?properties ?secrets () : launch = { properties; secrets }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_spring_cloud_build_pack_binding ?binding_type ?id
    ?timeouts ~name ~spring_cloud_builder_id ~launch () :
    azurerm_spring_cloud_build_pack_binding =
  {
    binding_type;
    id;
    name;
    spring_cloud_builder_id;
    launch;
    timeouts;
  }

type t = {
  binding_type : string prop;
  id : string prop;
  name : string prop;
  spring_cloud_builder_id : string prop;
}

let make ?binding_type ?id ?timeouts ~name ~spring_cloud_builder_id
    ~launch __id =
  let __type = "azurerm_spring_cloud_build_pack_binding" in
  let __attrs =
    ({
       binding_type = Prop.computed __type __id "binding_type";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       spring_cloud_builder_id =
         Prop.computed __type __id "spring_cloud_builder_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_spring_cloud_build_pack_binding
        (azurerm_spring_cloud_build_pack_binding ?binding_type ?id
           ?timeouts ~name ~spring_cloud_builder_id ~launch ());
    attrs = __attrs;
  }

let register ?tf_module ?binding_type ?id ?timeouts ~name
    ~spring_cloud_builder_id ~launch __id =
  let (r : _ Tf_core.resource) =
    make ?binding_type ?id ?timeouts ~name ~spring_cloud_builder_id
      ~launch __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
