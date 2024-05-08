(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type routing_policy = {
  destinations : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  name : string prop;
  next_hop : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : routing_policy) -> ()

let yojson_of_routing_policy =
  (function
   | {
       destinations = v_destinations;
       name = v_name;
       next_hop = v_next_hop;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_next_hop in
         ("next_hop", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_destinations then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_destinations
           in
           let bnd = "destinations", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : routing_policy -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_routing_policy

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

type azurerm_virtual_hub_routing_intent = {
  id : string prop option; [@option]
  name : string prop;
  virtual_hub_id : string prop;
  routing_policy : routing_policy list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_virtual_hub_routing_intent) -> ()

let yojson_of_azurerm_virtual_hub_routing_intent =
  (function
   | {
       id = v_id;
       name = v_name;
       virtual_hub_id = v_virtual_hub_id;
       routing_policy = v_routing_policy;
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
         if Stdlib.( = ) [] v_routing_policy then bnds
         else
           let arg =
             (yojson_of_list yojson_of_routing_policy)
               v_routing_policy
           in
           let bnd = "routing_policy", arg in
           bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_virtual_hub_id
         in
         ("virtual_hub_id", arg) :: bnds
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
    : azurerm_virtual_hub_routing_intent ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_virtual_hub_routing_intent

[@@@deriving.end]

let routing_policy ~destinations ~name ~next_hop () : routing_policy
    =
  { destinations; name; next_hop }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_virtual_hub_routing_intent ?id ?timeouts ~name
    ~virtual_hub_id ~routing_policy () :
    azurerm_virtual_hub_routing_intent =
  { id; name; virtual_hub_id; routing_policy; timeouts }

type t = {
  tf_name : string;
  id : string prop;
  name : string prop;
  virtual_hub_id : string prop;
}

let make ?id ?timeouts ~name ~virtual_hub_id ~routing_policy __id =
  let __type = "azurerm_virtual_hub_routing_intent" in
  let __attrs =
    ({
       tf_name = __id;
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       virtual_hub_id = Prop.computed __type __id "virtual_hub_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_virtual_hub_routing_intent
        (azurerm_virtual_hub_routing_intent ?id ?timeouts ~name
           ~virtual_hub_id ~routing_policy ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?timeouts ~name ~virtual_hub_id
    ~routing_policy __id =
  let (r : _ Tf_core.resource) =
    make ?id ?timeouts ~name ~virtual_hub_id ~routing_policy __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
