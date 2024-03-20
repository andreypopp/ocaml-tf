(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
}
[@@deriving yojson_of]
(** timeouts *)

type azurerm_maintenance_assignment_dedicated_host = {
  dedicated_host_id : string prop;  (** dedicated_host_id *)
  id : string prop option; [@option]  (** id *)
  location : string prop;  (** location *)
  maintenance_configuration_id : string prop;
      (** maintenance_configuration_id *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_maintenance_assignment_dedicated_host *)

let timeouts ?create ?delete ?read () : timeouts =
  { create; delete; read }

let azurerm_maintenance_assignment_dedicated_host ?id ?timeouts
    ~dedicated_host_id ~location ~maintenance_configuration_id () :
    azurerm_maintenance_assignment_dedicated_host =
  {
    dedicated_host_id;
    id;
    location;
    maintenance_configuration_id;
    timeouts;
  }

type t = {
  dedicated_host_id : string prop;
  id : string prop;
  location : string prop;
  maintenance_configuration_id : string prop;
}

let make ?id ?timeouts ~dedicated_host_id ~location
    ~maintenance_configuration_id __id =
  let __type = "azurerm_maintenance_assignment_dedicated_host" in
  let __attrs =
    ({
       dedicated_host_id =
         Prop.computed __type __id "dedicated_host_id";
       id = Prop.computed __type __id "id";
       location = Prop.computed __type __id "location";
       maintenance_configuration_id =
         Prop.computed __type __id "maintenance_configuration_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_maintenance_assignment_dedicated_host
        (azurerm_maintenance_assignment_dedicated_host ?id ?timeouts
           ~dedicated_host_id ~location ~maintenance_configuration_id
           ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?timeouts ~dedicated_host_id ~location
    ~maintenance_configuration_id __id =
  let (r : _ Tf_core.resource) =
    make ?id ?timeouts ~dedicated_host_id ~location
      ~maintenance_configuration_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
