(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
}
[@@deriving yojson_of]
(** timeouts *)

type azurerm_maintenance_assignment_virtual_machine = {
  id : string prop option; [@option]  (** id *)
  location : string prop;  (** location *)
  maintenance_configuration_id : string prop;
      (** maintenance_configuration_id *)
  virtual_machine_id : string prop;  (** virtual_machine_id *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_maintenance_assignment_virtual_machine *)

let timeouts ?create ?delete ?read () : timeouts =
  { create; delete; read }

let azurerm_maintenance_assignment_virtual_machine ?id ?timeouts
    ~location ~maintenance_configuration_id ~virtual_machine_id () :
    azurerm_maintenance_assignment_virtual_machine =
  {
    id;
    location;
    maintenance_configuration_id;
    virtual_machine_id;
    timeouts;
  }

type t = {
  id : string prop;
  location : string prop;
  maintenance_configuration_id : string prop;
  virtual_machine_id : string prop;
}

let make ?id ?timeouts ~location ~maintenance_configuration_id
    ~virtual_machine_id __id =
  let __type = "azurerm_maintenance_assignment_virtual_machine" in
  let __attrs =
    ({
       id = Prop.computed __type __id "id";
       location = Prop.computed __type __id "location";
       maintenance_configuration_id =
         Prop.computed __type __id "maintenance_configuration_id";
       virtual_machine_id =
         Prop.computed __type __id "virtual_machine_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_maintenance_assignment_virtual_machine
        (azurerm_maintenance_assignment_virtual_machine ?id ?timeouts
           ~location ~maintenance_configuration_id
           ~virtual_machine_id ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?timeouts ~location
    ~maintenance_configuration_id ~virtual_machine_id __id =
  let (r : _ Tf_core.resource) =
    make ?id ?timeouts ~location ~maintenance_configuration_id
      ~virtual_machine_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
