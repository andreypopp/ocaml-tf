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

type azurerm_network_service_tags = {
  id : string prop option; [@option]
  location : string prop;
  location_filter : string prop option; [@option]
  service : string prop;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_network_service_tags) -> ()

let yojson_of_azurerm_network_service_tags =
  (function
   | {
       id = v_id;
       location = v_location;
       location_filter = v_location_filter;
       service = v_service;
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
         let arg = yojson_of_prop yojson_of_string v_service in
         ("service", arg) :: bnds
       in
       let bnds =
         match v_location_filter with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "location_filter", arg in
             bnd :: bnds
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
    : azurerm_network_service_tags ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_network_service_tags

[@@@deriving.end]

let timeouts ?read () : timeouts = { read }

let azurerm_network_service_tags ?id ?location_filter ?timeouts
    ~location ~service () : azurerm_network_service_tags =
  { id; location; location_filter; service; timeouts }

type t = {
  tf_name : string;
  address_prefixes : string list prop;
  id : string prop;
  ipv4_cidrs : string list prop;
  ipv6_cidrs : string list prop;
  location : string prop;
  location_filter : string prop;
  name : string prop;
  service : string prop;
}

let make ?id ?location_filter ?timeouts ~location ~service __id =
  let __type = "azurerm_network_service_tags" in
  let __attrs =
    ({
       tf_name = __id;
       address_prefixes =
         Prop.computed __type __id "address_prefixes";
       id = Prop.computed __type __id "id";
       ipv4_cidrs = Prop.computed __type __id "ipv4_cidrs";
       ipv6_cidrs = Prop.computed __type __id "ipv6_cidrs";
       location = Prop.computed __type __id "location";
       location_filter = Prop.computed __type __id "location_filter";
       name = Prop.computed __type __id "name";
       service = Prop.computed __type __id "service";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_network_service_tags
        (azurerm_network_service_tags ?id ?location_filter ?timeouts
           ~location ~service ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?location_filter ?timeouts ~location
    ~service __id =
  let (r : _ Tf_core.resource) =
    make ?id ?location_filter ?timeouts ~location ~service __id
  in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
