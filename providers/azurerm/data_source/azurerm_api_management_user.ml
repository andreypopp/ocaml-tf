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

type azurerm_api_management_user = {
  api_management_name : string prop;
  id : string prop option; [@option]
  resource_group_name : string prop;
  user_id : string prop;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_api_management_user) -> ()

let yojson_of_azurerm_api_management_user =
  (function
   | {
       api_management_name = v_api_management_name;
       id = v_id;
       resource_group_name = v_resource_group_name;
       user_id = v_user_id;
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
         let arg = yojson_of_prop yojson_of_string v_user_id in
         ("user_id", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_resource_group_name
         in
         ("resource_group_name", arg) :: bnds
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
           yojson_of_prop yojson_of_string v_api_management_name
         in
         ("api_management_name", arg) :: bnds
       in
       `Assoc bnds
    : azurerm_api_management_user ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_api_management_user

[@@@deriving.end]

let timeouts ?read () : timeouts = { read }

let azurerm_api_management_user ?id ?timeouts ~api_management_name
    ~resource_group_name ~user_id () : azurerm_api_management_user =
  { api_management_name; id; resource_group_name; user_id; timeouts }

type t = {
  tf_name : string;
  api_management_name : string prop;
  email : string prop;
  first_name : string prop;
  id : string prop;
  last_name : string prop;
  note : string prop;
  resource_group_name : string prop;
  state : string prop;
  user_id : string prop;
}

let make ?id ?timeouts ~api_management_name ~resource_group_name
    ~user_id __id =
  let __type = "azurerm_api_management_user" in
  let __attrs =
    ({
       tf_name = __id;
       api_management_name =
         Prop.computed __type __id "api_management_name";
       email = Prop.computed __type __id "email";
       first_name = Prop.computed __type __id "first_name";
       id = Prop.computed __type __id "id";
       last_name = Prop.computed __type __id "last_name";
       note = Prop.computed __type __id "note";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
       state = Prop.computed __type __id "state";
       user_id = Prop.computed __type __id "user_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_api_management_user
        (azurerm_api_management_user ?id ?timeouts
           ~api_management_name ~resource_group_name ~user_id ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?timeouts ~api_management_name
    ~resource_group_name ~user_id __id =
  let (r : _ Tf_core.resource) =
    make ?id ?timeouts ~api_management_name ~resource_group_name
      ~user_id __id
  in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
