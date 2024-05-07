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

type azurerm_automation_variable_int = {
  automation_account_name : string prop;
  id : string prop option; [@option]
  name : string prop;
  resource_group_name : string prop;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_automation_variable_int) -> ()

let yojson_of_azurerm_automation_variable_int =
  (function
   | {
       automation_account_name = v_automation_account_name;
       id = v_id;
       name = v_name;
       resource_group_name = v_resource_group_name;
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
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_automation_account_name
         in
         ("automation_account_name", arg) :: bnds
       in
       `Assoc bnds
    : azurerm_automation_variable_int ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_automation_variable_int

[@@@deriving.end]

let timeouts ?read () : timeouts = { read }

let azurerm_automation_variable_int ?id ?timeouts
    ~automation_account_name ~name ~resource_group_name () :
    azurerm_automation_variable_int =
  {
    automation_account_name;
    id;
    name;
    resource_group_name;
    timeouts;
  }

type t = {
  tf_name : string;
  automation_account_name : string prop;
  description : string prop;
  encrypted : bool prop;
  id : string prop;
  name : string prop;
  resource_group_name : string prop;
  value : float prop;
}

let make ?id ?timeouts ~automation_account_name ~name
    ~resource_group_name __id =
  let __type = "azurerm_automation_variable_int" in
  let __attrs =
    ({
       tf_name = __id;
       automation_account_name =
         Prop.computed __type __id "automation_account_name";
       description = Prop.computed __type __id "description";
       encrypted = Prop.computed __type __id "encrypted";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
       value = Prop.computed __type __id "value";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_automation_variable_int
        (azurerm_automation_variable_int ?id ?timeouts
           ~automation_account_name ~name ~resource_group_name ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?timeouts ~automation_account_name ~name
    ~resource_group_name __id =
  let (r : _ Tf_core.resource) =
    make ?id ?timeouts ~automation_account_name ~name
      ~resource_group_name __id
  in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
