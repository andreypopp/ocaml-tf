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

type azurerm_dedicated_host_group = {
  automatic_placement_enabled : bool prop option; [@option]
      (** automatic_placement_enabled *)
  id : string prop option; [@option]  (** id *)
  location : string prop;  (** location *)
  name : string prop;  (** name *)
  platform_fault_domain_count : float prop;
      (** platform_fault_domain_count *)
  resource_group_name : string prop;  (** resource_group_name *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  zone : string prop option; [@option]  (** zone *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_dedicated_host_group *)

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_dedicated_host_group ?automatic_placement_enabled ?id
    ?tags ?zone ?timeouts ~location ~name
    ~platform_fault_domain_count ~resource_group_name () :
    azurerm_dedicated_host_group =
  {
    automatic_placement_enabled;
    id;
    location;
    name;
    platform_fault_domain_count;
    resource_group_name;
    tags;
    zone;
    timeouts;
  }

type t = {
  automatic_placement_enabled : bool prop;
  id : string prop;
  location : string prop;
  name : string prop;
  platform_fault_domain_count : float prop;
  resource_group_name : string prop;
  tags : (string * string) list prop;
  zone : string prop;
}

let make ?automatic_placement_enabled ?id ?tags ?zone ?timeouts
    ~location ~name ~platform_fault_domain_count ~resource_group_name
    __id =
  let __type = "azurerm_dedicated_host_group" in
  let __attrs =
    ({
       automatic_placement_enabled =
         Prop.computed __type __id "automatic_placement_enabled";
       id = Prop.computed __type __id "id";
       location = Prop.computed __type __id "location";
       name = Prop.computed __type __id "name";
       platform_fault_domain_count =
         Prop.computed __type __id "platform_fault_domain_count";
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
      yojson_of_azurerm_dedicated_host_group
        (azurerm_dedicated_host_group ?automatic_placement_enabled
           ?id ?tags ?zone ?timeouts ~location ~name
           ~platform_fault_domain_count ~resource_group_name ());
    attrs = __attrs;
  }

let register ?tf_module ?automatic_placement_enabled ?id ?tags ?zone
    ?timeouts ~location ~name ~platform_fault_domain_count
    ~resource_group_name __id =
  let (r : _ Tf_core.resource) =
    make ?automatic_placement_enabled ?id ?tags ?zone ?timeouts
      ~location ~name ~platform_fault_domain_count
      ~resource_group_name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
