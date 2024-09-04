(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type ipfx_emission = {
  destination_types : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : ipfx_emission) -> ()

let yojson_of_ipfx_emission =
  (function
   | { destination_types = v_destination_types } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_destination_types then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_destination_types
           in
           let bnd = "destination_types", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : ipfx_emission -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_ipfx_emission

[@@@deriving.end]

type ipfx_ingestion = {
  source_resource_ids : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : ipfx_ingestion) -> ()

let yojson_of_ipfx_ingestion =
  (function
   | { source_resource_ids = v_source_resource_ids } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_source_resource_ids then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_source_resource_ids
           in
           let bnd = "source_resource_ids", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : ipfx_ingestion -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_ipfx_ingestion

[@@@deriving.end]

type timeouts = {
  create : string prop option; [@option]
  delete : string prop option; [@option]
  read : string prop option; [@option]
  update : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : timeouts) -> ()

let yojson_of_timeouts =
  (function
   | {
       create = v_create;
       delete = v_delete;
       read = v_read;
       update = v_update;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_update with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "update", arg in
             bnd :: bnds
       in
       let bnds =
         match v_read with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "read", arg in
             bnd :: bnds
       in
       let bnds =
         match v_delete with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "delete", arg in
             bnd :: bnds
       in
       let bnds =
         match v_create with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "create", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : timeouts -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_timeouts

[@@@deriving.end]

type azurerm_network_function_collector_policy = {
  id : string prop option; [@option]
  location : string prop;
  name : string prop;
  tags : string prop Tf_core.assoc option; [@option]
  traffic_collector_id : string prop;
  ipfx_emission : ipfx_emission list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  ipfx_ingestion : ipfx_ingestion list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_network_function_collector_policy) -> ()

let yojson_of_azurerm_network_function_collector_policy =
  (function
   | {
       id = v_id;
       location = v_location;
       name = v_name;
       tags = v_tags;
       traffic_collector_id = v_traffic_collector_id;
       ipfx_emission = v_ipfx_emission;
       ipfx_ingestion = v_ipfx_ingestion;
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
         if Stdlib.( = ) [] v_ipfx_ingestion then bnds
         else
           let arg =
             (yojson_of_list yojson_of_ipfx_ingestion)
               v_ipfx_ingestion
           in
           let bnd = "ipfx_ingestion", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_ipfx_emission then bnds
         else
           let arg =
             (yojson_of_list yojson_of_ipfx_emission) v_ipfx_emission
           in
           let bnd = "ipfx_emission", arg in
           bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_traffic_collector_id
         in
         ("traffic_collector_id", arg) :: bnds
       in
       let bnds =
         match v_tags with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               Tf_core.yojson_of_assoc
                 (yojson_of_prop yojson_of_string)
                 v
             in
             let bnd = "tags", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
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
    : azurerm_network_function_collector_policy ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_network_function_collector_policy

[@@@deriving.end]

let ipfx_emission ~destination_types () : ipfx_emission =
  { destination_types }

let ipfx_ingestion ~source_resource_ids () : ipfx_ingestion =
  { source_resource_ids }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_network_function_collector_policy ?id ?tags ?timeouts
    ~location ~name ~traffic_collector_id ~ipfx_emission
    ~ipfx_ingestion () : azurerm_network_function_collector_policy =
  {
    id;
    location;
    name;
    tags;
    traffic_collector_id;
    ipfx_emission;
    ipfx_ingestion;
    timeouts;
  }

type t = {
  tf_name : string;
  id : string prop;
  location : string prop;
  name : string prop;
  tags : string Tf_core.assoc prop;
  traffic_collector_id : string prop;
}

let make ?id ?tags ?timeouts ~location ~name ~traffic_collector_id
    ~ipfx_emission ~ipfx_ingestion __id =
  let __type = "azurerm_network_function_collector_policy" in
  let __attrs =
    ({
       tf_name = __id;
       id = Prop.computed __type __id "id";
       location = Prop.computed __type __id "location";
       name = Prop.computed __type __id "name";
       tags = Prop.computed __type __id "tags";
       traffic_collector_id =
         Prop.computed __type __id "traffic_collector_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_network_function_collector_policy
        (azurerm_network_function_collector_policy ?id ?tags
           ?timeouts ~location ~name ~traffic_collector_id
           ~ipfx_emission ~ipfx_ingestion ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?tags ?timeouts ~location ~name
    ~traffic_collector_id ~ipfx_emission ~ipfx_ingestion __id =
  let (r : _ Tf_core.resource) =
    make ?id ?tags ?timeouts ~location ~name ~traffic_collector_id
      ~ipfx_emission ~ipfx_ingestion __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
