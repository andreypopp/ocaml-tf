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

type azurerm_extended_locations = {
  id : string prop option; [@option]
  location : string prop;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_extended_locations) -> ()

let yojson_of_azurerm_extended_locations =
  (function
   | { id = v_id; location = v_location; timeouts = v_timeouts } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_option yojson_of_timeouts v_timeouts in
         ("timeouts", arg) :: bnds
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
    : azurerm_extended_locations -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_extended_locations

[@@@deriving.end]

let timeouts ?read () : timeouts = { read }

let azurerm_extended_locations ?id ?timeouts ~location () :
    azurerm_extended_locations =
  { id; location; timeouts }

type t = {
  tf_name : string;
  extended_locations : string list prop;
  id : string prop;
  location : string prop;
}

let make ?id ?timeouts ~location __id =
  let __type = "azurerm_extended_locations" in
  let __attrs =
    ({
       tf_name = __id;
       extended_locations =
         Prop.computed __type __id "extended_locations";
       id = Prop.computed __type __id "id";
       location = Prop.computed __type __id "location";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_extended_locations
        (azurerm_extended_locations ?id ?timeouts ~location ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?timeouts ~location __id =
  let (r : _ Tf_core.resource) = make ?id ?timeouts ~location __id in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
