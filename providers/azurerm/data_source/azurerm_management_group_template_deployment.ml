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

type azurerm_management_group_template_deployment = {
  id : string prop option; [@option]
  management_group_id : string prop;
  name : string prop;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_management_group_template_deployment) -> ()

let yojson_of_azurerm_management_group_template_deployment =
  (function
   | {
       id = v_id;
       management_group_id = v_management_group_id;
       name = v_name;
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
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_management_group_id
         in
         ("management_group_id", arg) :: bnds
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
    : azurerm_management_group_template_deployment ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_management_group_template_deployment

[@@@deriving.end]

let timeouts ?read () : timeouts = { read }

let azurerm_management_group_template_deployment ?id ?timeouts
    ~management_group_id ~name () :
    azurerm_management_group_template_deployment =
  { id; management_group_id; name; timeouts }

type t = {
  tf_name : string;
  id : string prop;
  management_group_id : string prop;
  name : string prop;
  output_content : string prop;
}

let make ?id ?timeouts ~management_group_id ~name __id =
  let __type = "azurerm_management_group_template_deployment" in
  let __attrs =
    ({
       tf_name = __id;
       id = Prop.computed __type __id "id";
       management_group_id =
         Prop.computed __type __id "management_group_id";
       name = Prop.computed __type __id "name";
       output_content = Prop.computed __type __id "output_content";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_management_group_template_deployment
        (azurerm_management_group_template_deployment ?id ?timeouts
           ~management_group_id ~name ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?timeouts ~management_group_id ~name __id
    =
  let (r : _ Tf_core.resource) =
    make ?id ?timeouts ~management_group_id ~name __id
  in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
