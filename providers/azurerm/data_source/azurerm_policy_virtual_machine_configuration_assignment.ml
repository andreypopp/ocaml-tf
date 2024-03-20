(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = { read : string prop option [@option] }
[@@deriving_inline yojson_of]

let _ = fun (_ : timeouts) -> ()

let yojson_of_timeouts =
  (function
   | { read = v_read } ->
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
       `Assoc bnds
    : timeouts -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_timeouts

[@@@deriving.end]

type azurerm_policy_virtual_machine_configuration_assignment = {
  id : string prop option; [@option]
  name : string prop;
  resource_group_name : string prop;
  virtual_machine_name : string prop;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : azurerm_policy_virtual_machine_configuration_assignment) ->
  ()

let yojson_of_azurerm_policy_virtual_machine_configuration_assignment
    =
  (function
   | {
       id = v_id;
       name = v_name;
       resource_group_name = v_resource_group_name;
       virtual_machine_name = v_virtual_machine_name;
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
           yojson_of_prop yojson_of_string v_virtual_machine_name
         in
         ("virtual_machine_name", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_resource_group_name
         in
         ("resource_group_name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
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
    : azurerm_policy_virtual_machine_configuration_assignment ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_azurerm_policy_virtual_machine_configuration_assignment

[@@@deriving.end]

let timeouts ?read () : timeouts = { read }

let azurerm_policy_virtual_machine_configuration_assignment ?id
    ?timeouts ~name ~resource_group_name ~virtual_machine_name () :
    azurerm_policy_virtual_machine_configuration_assignment =
  { id; name; resource_group_name; virtual_machine_name; timeouts }

type t = {
  assignment_hash : string prop;
  compliance_status : string prop;
  content_hash : string prop;
  content_uri : string prop;
  id : string prop;
  last_compliance_status_checked : string prop;
  latest_report_id : string prop;
  name : string prop;
  resource_group_name : string prop;
  virtual_machine_name : string prop;
}

let make ?id ?timeouts ~name ~resource_group_name
    ~virtual_machine_name __id =
  let __type =
    "azurerm_policy_virtual_machine_configuration_assignment"
  in
  let __attrs =
    ({
       assignment_hash = Prop.computed __type __id "assignment_hash";
       compliance_status =
         Prop.computed __type __id "compliance_status";
       content_hash = Prop.computed __type __id "content_hash";
       content_uri = Prop.computed __type __id "content_uri";
       id = Prop.computed __type __id "id";
       last_compliance_status_checked =
         Prop.computed __type __id "last_compliance_status_checked";
       latest_report_id =
         Prop.computed __type __id "latest_report_id";
       name = Prop.computed __type __id "name";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
       virtual_machine_name =
         Prop.computed __type __id "virtual_machine_name";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_policy_virtual_machine_configuration_assignment
        (azurerm_policy_virtual_machine_configuration_assignment ?id
           ?timeouts ~name ~resource_group_name ~virtual_machine_name
           ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?timeouts ~name ~resource_group_name
    ~virtual_machine_name __id =
  let (r : _ Tf_core.resource) =
    make ?id ?timeouts ~name ~resource_group_name
      ~virtual_machine_name __id
  in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
