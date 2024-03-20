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

type azurerm_storage_mover_agent = {
  arc_virtual_machine_id : string prop;
      (** arc_virtual_machine_id *)
  arc_virtual_machine_uuid : string prop;
      (** arc_virtual_machine_uuid *)
  description : string prop option; [@option]  (** description *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  storage_mover_id : string prop;  (** storage_mover_id *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_storage_mover_agent *)

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_storage_mover_agent ?description ?id ?timeouts
    ~arc_virtual_machine_id ~arc_virtual_machine_uuid ~name
    ~storage_mover_id () : azurerm_storage_mover_agent =
  {
    arc_virtual_machine_id;
    arc_virtual_machine_uuid;
    description;
    id;
    name;
    storage_mover_id;
    timeouts;
  }

type t = {
  arc_virtual_machine_id : string prop;
  arc_virtual_machine_uuid : string prop;
  description : string prop;
  id : string prop;
  name : string prop;
  storage_mover_id : string prop;
}

let make ?description ?id ?timeouts ~arc_virtual_machine_id
    ~arc_virtual_machine_uuid ~name ~storage_mover_id __id =
  let __type = "azurerm_storage_mover_agent" in
  let __attrs =
    ({
       arc_virtual_machine_id =
         Prop.computed __type __id "arc_virtual_machine_id";
       arc_virtual_machine_uuid =
         Prop.computed __type __id "arc_virtual_machine_uuid";
       description = Prop.computed __type __id "description";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       storage_mover_id =
         Prop.computed __type __id "storage_mover_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_storage_mover_agent
        (azurerm_storage_mover_agent ?description ?id ?timeouts
           ~arc_virtual_machine_id ~arc_virtual_machine_uuid ~name
           ~storage_mover_id ());
    attrs = __attrs;
  }

let register ?tf_module ?description ?id ?timeouts
    ~arc_virtual_machine_id ~arc_virtual_machine_uuid ~name
    ~storage_mover_id __id =
  let (r : _ Tf_core.resource) =
    make ?description ?id ?timeouts ~arc_virtual_machine_id
      ~arc_virtual_machine_uuid ~name ~storage_mover_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
