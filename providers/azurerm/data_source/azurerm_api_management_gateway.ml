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

type location_data = {
  city : string prop;
  district : string prop;
  name : string prop;
  region : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : location_data) -> ()

let yojson_of_location_data =
  (function
   | {
       city = v_city;
       district = v_district;
       name = v_name;
       region = v_region;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_region in
         ("region", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_district in
         ("district", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_city in
         ("city", arg) :: bnds
       in
       `Assoc bnds
    : location_data -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_location_data

[@@@deriving.end]

type azurerm_api_management_gateway = {
  api_management_id : string prop;
  id : string prop option; [@option]
  name : string prop;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_api_management_gateway) -> ()

let yojson_of_azurerm_api_management_gateway =
  (function
   | {
       api_management_id = v_api_management_id;
       id = v_id;
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
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_api_management_id
         in
         ("api_management_id", arg) :: bnds
       in
       `Assoc bnds
    : azurerm_api_management_gateway ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_api_management_gateway

[@@@deriving.end]

let timeouts ?read () : timeouts = { read }

let azurerm_api_management_gateway ?id ?timeouts ~api_management_id
    ~name () : azurerm_api_management_gateway =
  { api_management_id; id; name; timeouts }

type t = {
  tf_name : string;
  api_management_id : string prop;
  description : string prop;
  id : string prop;
  location_data : location_data list prop;
  name : string prop;
}

let make ?id ?timeouts ~api_management_id ~name __id =
  let __type = "azurerm_api_management_gateway" in
  let __attrs =
    ({
       tf_name = __id;
       api_management_id =
         Prop.computed __type __id "api_management_id";
       description = Prop.computed __type __id "description";
       id = Prop.computed __type __id "id";
       location_data = Prop.computed __type __id "location_data";
       name = Prop.computed __type __id "name";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_api_management_gateway
        (azurerm_api_management_gateway ?id ?timeouts
           ~api_management_id ~name ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?timeouts ~api_management_id ~name __id =
  let (r : _ Tf_core.resource) =
    make ?id ?timeouts ~api_management_id ~name __id
  in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
