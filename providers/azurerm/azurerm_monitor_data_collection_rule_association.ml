(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

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

type azurerm_monitor_data_collection_rule_association = {
  data_collection_endpoint_id : string prop option; [@option]
  data_collection_rule_id : string prop option; [@option]
  description : string prop option; [@option]
  id : string prop option; [@option]
  name : string prop option; [@option]
  target_resource_id : string prop;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : azurerm_monitor_data_collection_rule_association) -> ()

let yojson_of_azurerm_monitor_data_collection_rule_association =
  (function
   | {
       data_collection_endpoint_id = v_data_collection_endpoint_id;
       data_collection_rule_id = v_data_collection_rule_id;
       description = v_description;
       id = v_id;
       name = v_name;
       target_resource_id = v_target_resource_id;
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
           yojson_of_prop yojson_of_string v_target_resource_id
         in
         ("target_resource_id", arg) :: bnds
       in
       let bnds =
         match v_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "name", arg in
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
       let bnds =
         match v_description with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "description", arg in
             bnd :: bnds
       in
       let bnds =
         match v_data_collection_rule_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "data_collection_rule_id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_data_collection_endpoint_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "data_collection_endpoint_id", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : azurerm_monitor_data_collection_rule_association ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_monitor_data_collection_rule_association

[@@@deriving.end]

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_monitor_data_collection_rule_association
    ?data_collection_endpoint_id ?data_collection_rule_id
    ?description ?id ?name ?timeouts ~target_resource_id () :
    azurerm_monitor_data_collection_rule_association =
  {
    data_collection_endpoint_id;
    data_collection_rule_id;
    description;
    id;
    name;
    target_resource_id;
    timeouts;
  }

type t = {
  data_collection_endpoint_id : string prop;
  data_collection_rule_id : string prop;
  description : string prop;
  id : string prop;
  name : string prop;
  target_resource_id : string prop;
}

let make ?data_collection_endpoint_id ?data_collection_rule_id
    ?description ?id ?name ?timeouts ~target_resource_id __id =
  let __type = "azurerm_monitor_data_collection_rule_association" in
  let __attrs =
    ({
       data_collection_endpoint_id =
         Prop.computed __type __id "data_collection_endpoint_id";
       data_collection_rule_id =
         Prop.computed __type __id "data_collection_rule_id";
       description = Prop.computed __type __id "description";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       target_resource_id =
         Prop.computed __type __id "target_resource_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_monitor_data_collection_rule_association
        (azurerm_monitor_data_collection_rule_association
           ?data_collection_endpoint_id ?data_collection_rule_id
           ?description ?id ?name ?timeouts ~target_resource_id ());
    attrs = __attrs;
  }

let register ?tf_module ?data_collection_endpoint_id
    ?data_collection_rule_id ?description ?id ?name ?timeouts
    ~target_resource_id __id =
  let (r : _ Tf_core.resource) =
    make ?data_collection_endpoint_id ?data_collection_rule_id
      ?description ?id ?name ?timeouts ~target_resource_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
