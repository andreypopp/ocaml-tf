(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  create : string prop option; [@option]
  delete : string prop option; [@option]
  read : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : timeouts) -> ()

let yojson_of_timeouts =
  (function
   | { create = v_create; delete = v_delete; read = v_read } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_read with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "read", arg in
             bnd :: bnds
       in
       let bnds =
         match v_delete with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "delete", arg in
             bnd :: bnds
       in
       let bnds =
         match v_create with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "create", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : timeouts -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_timeouts

[@@@deriving.end]

type azurerm_maintenance_assignment_virtual_machine_scale_set = {
  id : string prop option; [@option]
  location : string prop;
  maintenance_configuration_id : string prop;
  virtual_machine_scale_set_id : string prop;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : azurerm_maintenance_assignment_virtual_machine_scale_set) ->
  ()

let yojson_of_azurerm_maintenance_assignment_virtual_machine_scale_set
    =
  (function
   | {
       id = v_id;
       location = v_location;
       maintenance_configuration_id = v_maintenance_configuration_id;
       virtual_machine_scale_set_id = v_virtual_machine_scale_set_id;
       timeouts = v_timeouts;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_option yojson_of_timeouts v_timeouts in
         ("timeouts", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string
             v_virtual_machine_scale_set_id
         in
         ("virtual_machine_scale_set_id", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string
             v_maintenance_configuration_id
         in
         ("maintenance_configuration_id", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_location in
         ("location", arg) :: bnds
       in
       let bnds =
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : azurerm_maintenance_assignment_virtual_machine_scale_set ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_azurerm_maintenance_assignment_virtual_machine_scale_set

[@@@deriving.end]

let timeouts ?create ?delete ?read () : timeouts =
  { create; delete; read }

let azurerm_maintenance_assignment_virtual_machine_scale_set ?id
    ?timeouts ~location ~maintenance_configuration_id
    ~virtual_machine_scale_set_id () :
    azurerm_maintenance_assignment_virtual_machine_scale_set =
  {
    id;
    location;
    maintenance_configuration_id;
    virtual_machine_scale_set_id;
    timeouts;
  }

type t = {
  id : string prop;
  location : string prop;
  maintenance_configuration_id : string prop;
  virtual_machine_scale_set_id : string prop;
}

let make ?id ?timeouts ~location ~maintenance_configuration_id
    ~virtual_machine_scale_set_id __id =
  let __type =
    "azurerm_maintenance_assignment_virtual_machine_scale_set"
  in
  let __attrs =
    ({
       id = Prop.computed __type __id "id";
       location = Prop.computed __type __id "location";
       maintenance_configuration_id =
         Prop.computed __type __id "maintenance_configuration_id";
       virtual_machine_scale_set_id =
         Prop.computed __type __id "virtual_machine_scale_set_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_maintenance_assignment_virtual_machine_scale_set
        (azurerm_maintenance_assignment_virtual_machine_scale_set ?id
           ?timeouts ~location ~maintenance_configuration_id
           ~virtual_machine_scale_set_id ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?timeouts ~location
    ~maintenance_configuration_id ~virtual_machine_scale_set_id __id
    =
  let (r : _ Tf_core.resource) =
    make ?id ?timeouts ~location ~maintenance_configuration_id
      ~virtual_machine_scale_set_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
