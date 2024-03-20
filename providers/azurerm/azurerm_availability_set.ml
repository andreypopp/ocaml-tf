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

type azurerm_availability_set = {
  id : string prop option; [@option]  (** id *)
  location : string prop;  (** location *)
  managed : bool prop option; [@option]  (** managed *)
  name : string prop;  (** name *)
  platform_fault_domain_count : float prop option; [@option]
      (** platform_fault_domain_count *)
  platform_update_domain_count : float prop option; [@option]
      (** platform_update_domain_count *)
  proximity_placement_group_id : string prop option; [@option]
      (** proximity_placement_group_id *)
  resource_group_name : string prop;  (** resource_group_name *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_availability_set *)

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_availability_set ?id ?managed
    ?platform_fault_domain_count ?platform_update_domain_count
    ?proximity_placement_group_id ?tags ?timeouts ~location ~name
    ~resource_group_name () : azurerm_availability_set =
  {
    id;
    location;
    managed;
    name;
    platform_fault_domain_count;
    platform_update_domain_count;
    proximity_placement_group_id;
    resource_group_name;
    tags;
    timeouts;
  }

type t = {
  id : string prop;
  location : string prop;
  managed : bool prop;
  name : string prop;
  platform_fault_domain_count : float prop;
  platform_update_domain_count : float prop;
  proximity_placement_group_id : string prop;
  resource_group_name : string prop;
  tags : (string * string) list prop;
}

let make ?id ?managed ?platform_fault_domain_count
    ?platform_update_domain_count ?proximity_placement_group_id ?tags
    ?timeouts ~location ~name ~resource_group_name __id =
  let __type = "azurerm_availability_set" in
  let __attrs =
    ({
       id = Prop.computed __type __id "id";
       location = Prop.computed __type __id "location";
       managed = Prop.computed __type __id "managed";
       name = Prop.computed __type __id "name";
       platform_fault_domain_count =
         Prop.computed __type __id "platform_fault_domain_count";
       platform_update_domain_count =
         Prop.computed __type __id "platform_update_domain_count";
       proximity_placement_group_id =
         Prop.computed __type __id "proximity_placement_group_id";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
       tags = Prop.computed __type __id "tags";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_availability_set
        (azurerm_availability_set ?id ?managed
           ?platform_fault_domain_count ?platform_update_domain_count
           ?proximity_placement_group_id ?tags ?timeouts ~location
           ~name ~resource_group_name ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?managed ?platform_fault_domain_count
    ?platform_update_domain_count ?proximity_placement_group_id ?tags
    ?timeouts ~location ~name ~resource_group_name __id =
  let (r : _ Tf_core.resource) =
    make ?id ?managed ?platform_fault_domain_count
      ?platform_update_domain_count ?proximity_placement_group_id
      ?tags ?timeouts ~location ~name ~resource_group_name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
