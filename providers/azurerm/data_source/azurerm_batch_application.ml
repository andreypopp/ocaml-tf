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

type azurerm_batch_application = {
  account_name : string prop;
  id : string prop option; [@option]
  name : string prop;
  resource_group_name : string prop;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_batch_application) -> ()

let yojson_of_azurerm_batch_application =
  (function
   | {
       account_name = v_account_name;
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
         let arg = yojson_of_prop yojson_of_string v_account_name in
         ("account_name", arg) :: bnds
       in
       `Assoc bnds
    : azurerm_batch_application -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_batch_application

[@@@deriving.end]

let timeouts ?read () : timeouts = { read }

let azurerm_batch_application ?id ?timeouts ~account_name ~name
    ~resource_group_name () : azurerm_batch_application =
  { account_name; id; name; resource_group_name; timeouts }

type t = {
  tf_name : string;
  account_name : string prop;
  allow_updates : bool prop;
  default_version : string prop;
  display_name : string prop;
  id : string prop;
  name : string prop;
  resource_group_name : string prop;
}

let make ?id ?timeouts ~account_name ~name ~resource_group_name __id
    =
  let __type = "azurerm_batch_application" in
  let __attrs =
    ({
       tf_name = __id;
       account_name = Prop.computed __type __id "account_name";
       allow_updates = Prop.computed __type __id "allow_updates";
       default_version = Prop.computed __type __id "default_version";
       display_name = Prop.computed __type __id "display_name";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_batch_application
        (azurerm_batch_application ?id ?timeouts ~account_name ~name
           ~resource_group_name ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?timeouts ~account_name ~name
    ~resource_group_name __id =
  let (r : _ Tf_core.resource) =
    make ?id ?timeouts ~account_name ~name ~resource_group_name __id
  in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
