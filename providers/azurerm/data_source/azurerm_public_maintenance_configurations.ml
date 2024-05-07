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

type configs = {
  description : string prop;
  duration : string prop;
  id : string prop;
  location : string prop;
  maintenance_scope : string prop;
  name : string prop;
  recur_every : string prop;
  time_zone : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : configs) -> ()

let yojson_of_configs =
  (function
   | {
       description = v_description;
       duration = v_duration;
       id = v_id;
       location = v_location;
       maintenance_scope = v_maintenance_scope;
       name = v_name;
       recur_every = v_recur_every;
       time_zone = v_time_zone;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_time_zone in
         ("time_zone", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_recur_every in
         ("recur_every", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_maintenance_scope
         in
         ("maintenance_scope", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_location in
         ("location", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_id in
         ("id", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_duration in
         ("duration", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_description in
         ("description", arg) :: bnds
       in
       `Assoc bnds
    : configs -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_configs

[@@@deriving.end]

type azurerm_public_maintenance_configurations = {
  id : string prop option; [@option]
  location : string prop option; [@option]
  recur_every : string prop option; [@option]
  scope : string prop option; [@option]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_public_maintenance_configurations) -> ()

let yojson_of_azurerm_public_maintenance_configurations =
  (function
   | {
       id = v_id;
       location = v_location;
       recur_every = v_recur_every;
       scope = v_scope;
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
         match v_scope with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "scope", arg in
             bnd :: bnds
       in
       let bnds =
         match v_recur_every with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "recur_every", arg in
             bnd :: bnds
       in
       let bnds =
         match v_location with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "location", arg in
             bnd :: bnds
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
    : azurerm_public_maintenance_configurations ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_public_maintenance_configurations

[@@@deriving.end]

let timeouts ?read () : timeouts = { read }

let azurerm_public_maintenance_configurations ?id ?location
    ?recur_every ?scope ?timeouts () :
    azurerm_public_maintenance_configurations =
  { id; location; recur_every; scope; timeouts }

type t = {
  tf_name : string;
  configs : configs list prop;
  id : string prop;
  location : string prop;
  recur_every : string prop;
  scope : string prop;
}

let make ?id ?location ?recur_every ?scope ?timeouts __id =
  let __type = "azurerm_public_maintenance_configurations" in
  let __attrs =
    ({
       tf_name = __id;
       configs = Prop.computed __type __id "configs";
       id = Prop.computed __type __id "id";
       location = Prop.computed __type __id "location";
       recur_every = Prop.computed __type __id "recur_every";
       scope = Prop.computed __type __id "scope";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_public_maintenance_configurations
        (azurerm_public_maintenance_configurations ?id ?location
           ?recur_every ?scope ?timeouts ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?location ?recur_every ?scope ?timeouts
    __id =
  let (r : _ Tf_core.resource) =
    make ?id ?location ?recur_every ?scope ?timeouts __id
  in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
