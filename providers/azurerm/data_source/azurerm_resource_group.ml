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

type azurerm_resource_group = {
  id : string prop option; [@option]
  name : string prop;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_resource_group) -> ()

let yojson_of_azurerm_resource_group =
  (function
   | { id = v_id; name = v_name; timeouts = v_timeouts } ->
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
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : azurerm_resource_group -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_resource_group

[@@@deriving.end]

let timeouts ?read () : timeouts = { read }

let azurerm_resource_group ?id ?timeouts ~name () :
    azurerm_resource_group =
  { id; name; timeouts }

type t = {
  tf_name : string;
  id : string prop;
  location : string prop;
  managed_by : string prop;
  name : string prop;
  tags : (string * string) list prop;
}

let make ?id ?timeouts ~name __id =
  let __type = "azurerm_resource_group" in
  let __attrs =
    ({
       tf_name = __id;
       id = Prop.computed __type __id "id";
       location = Prop.computed __type __id "location";
       managed_by = Prop.computed __type __id "managed_by";
       name = Prop.computed __type __id "name";
       tags = Prop.computed __type __id "tags";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_resource_group
        (azurerm_resource_group ?id ?timeouts ~name ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?timeouts ~name __id =
  let (r : _ Tf_core.resource) = make ?id ?timeouts ~name __id in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
