(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type azurerm_proximity_placement_group = {
  allowed_vm_sizes : string prop list option; [@option]
      (** allowed_vm_sizes *)
  id : string prop option; [@option]  (** id *)
  location : string prop;  (** location *)
  name : string prop;  (** name *)
  resource_group_name : string prop;  (** resource_group_name *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  zone : string prop option; [@option]  (** zone *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_proximity_placement_group *)

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_proximity_placement_group ?allowed_vm_sizes ?id ?tags
    ?zone ?timeouts ~location ~name ~resource_group_name () :
    azurerm_proximity_placement_group =
  {
    allowed_vm_sizes;
    id;
    location;
    name;
    resource_group_name;
    tags;
    zone;
    timeouts;
  }

type t = {
  allowed_vm_sizes : string list prop;
  id : string prop;
  location : string prop;
  name : string prop;
  resource_group_name : string prop;
  tags : (string * string) list prop;
  zone : string prop;
}

let make ?allowed_vm_sizes ?id ?tags ?zone ?timeouts ~location ~name
    ~resource_group_name __id =
  let __type = "azurerm_proximity_placement_group" in
  let __attrs =
    ({
       allowed_vm_sizes =
         Prop.computed __type __id "allowed_vm_sizes";
       id = Prop.computed __type __id "id";
       location = Prop.computed __type __id "location";
       name = Prop.computed __type __id "name";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
       tags = Prop.computed __type __id "tags";
       zone = Prop.computed __type __id "zone";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_proximity_placement_group
        (azurerm_proximity_placement_group ?allowed_vm_sizes ?id
           ?tags ?zone ?timeouts ~location ~name ~resource_group_name
           ());
    attrs = __attrs;
  }

let register ?tf_module ?allowed_vm_sizes ?id ?tags ?zone ?timeouts
    ~location ~name ~resource_group_name __id =
  let (r : _ Tf_core.resource) =
    make ?allowed_vm_sizes ?id ?tags ?zone ?timeouts ~location ~name
      ~resource_group_name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
