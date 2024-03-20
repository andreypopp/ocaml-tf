(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  create : string prop option; [@option]
  delete : string prop option; [@option]
  read : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : timeouts) -> ()

let yojson_of_timeouts =
  (function
   | { create = v_create; delete = v_delete; read = v_read } ->
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

type azurerm_data_factory_managed_private_endpoint = {
  data_factory_id : string prop;
  fqdns : string prop list option; [@option]
  id : string prop option; [@option]
  name : string prop;
  subresource_name : string prop option; [@option]
  target_resource_id : string prop;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_data_factory_managed_private_endpoint) -> ()

let yojson_of_azurerm_data_factory_managed_private_endpoint =
  (function
   | {
       data_factory_id = v_data_factory_id;
       fqdns = v_fqdns;
       id = v_id;
       name = v_name;
       subresource_name = v_subresource_name;
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
         match v_subresource_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "subresource_name", arg in
             bnd :: bnds
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
         match v_fqdns with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "fqdns", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_data_factory_id
         in
         ("data_factory_id", arg) :: bnds
       in
       `Assoc bnds
    : azurerm_data_factory_managed_private_endpoint ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_data_factory_managed_private_endpoint

[@@@deriving.end]

let timeouts ?create ?delete ?read () : timeouts =
  { create; delete; read }

let azurerm_data_factory_managed_private_endpoint ?fqdns ?id
    ?subresource_name ?timeouts ~data_factory_id ~name
    ~target_resource_id () :
    azurerm_data_factory_managed_private_endpoint =
  {
    data_factory_id;
    fqdns;
    id;
    name;
    subresource_name;
    target_resource_id;
    timeouts;
  }

type t = {
  data_factory_id : string prop;
  fqdns : string list prop;
  id : string prop;
  name : string prop;
  subresource_name : string prop;
  target_resource_id : string prop;
}

let make ?fqdns ?id ?subresource_name ?timeouts ~data_factory_id
    ~name ~target_resource_id __id =
  let __type = "azurerm_data_factory_managed_private_endpoint" in
  let __attrs =
    ({
       data_factory_id = Prop.computed __type __id "data_factory_id";
       fqdns = Prop.computed __type __id "fqdns";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       subresource_name =
         Prop.computed __type __id "subresource_name";
       target_resource_id =
         Prop.computed __type __id "target_resource_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_data_factory_managed_private_endpoint
        (azurerm_data_factory_managed_private_endpoint ?fqdns ?id
           ?subresource_name ?timeouts ~data_factory_id ~name
           ~target_resource_id ());
    attrs = __attrs;
  }

let register ?tf_module ?fqdns ?id ?subresource_name ?timeouts
    ~data_factory_id ~name ~target_resource_id __id =
  let (r : _ Tf_core.resource) =
    make ?fqdns ?id ?subresource_name ?timeouts ~data_factory_id
      ~name ~target_resource_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
