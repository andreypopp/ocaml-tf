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

type azurerm_stream_analytics_managed_private_endpoint = {
  id : string prop option; [@option]
  name : string prop;
  resource_group_name : string prop;
  stream_analytics_cluster_name : string prop;
  subresource_name : string prop;
  target_resource_id : string prop;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : azurerm_stream_analytics_managed_private_endpoint) -> ()

let yojson_of_azurerm_stream_analytics_managed_private_endpoint =
  (function
   | {
       id = v_id;
       name = v_name;
       resource_group_name = v_resource_group_name;
       stream_analytics_cluster_name =
         v_stream_analytics_cluster_name;
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
         let arg =
           yojson_of_prop yojson_of_string v_subresource_name
         in
         ("subresource_name", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string
             v_stream_analytics_cluster_name
         in
         ("stream_analytics_cluster_name", arg) :: bnds
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
       `Assoc bnds
    : azurerm_stream_analytics_managed_private_endpoint ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_stream_analytics_managed_private_endpoint

[@@@deriving.end]

let timeouts ?create ?delete ?read () : timeouts =
  { create; delete; read }

let azurerm_stream_analytics_managed_private_endpoint ?id ?timeouts
    ~name ~resource_group_name ~stream_analytics_cluster_name
    ~subresource_name ~target_resource_id () :
    azurerm_stream_analytics_managed_private_endpoint =
  {
    id;
    name;
    resource_group_name;
    stream_analytics_cluster_name;
    subresource_name;
    target_resource_id;
    timeouts;
  }

type t = {
  tf_name : string;
  id : string prop;
  name : string prop;
  resource_group_name : string prop;
  stream_analytics_cluster_name : string prop;
  subresource_name : string prop;
  target_resource_id : string prop;
}

let make ?id ?timeouts ~name ~resource_group_name
    ~stream_analytics_cluster_name ~subresource_name
    ~target_resource_id __id =
  let __type = "azurerm_stream_analytics_managed_private_endpoint" in
  let __attrs =
    ({
       tf_name = __id;
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
       stream_analytics_cluster_name =
         Prop.computed __type __id "stream_analytics_cluster_name";
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
      yojson_of_azurerm_stream_analytics_managed_private_endpoint
        (azurerm_stream_analytics_managed_private_endpoint ?id
           ?timeouts ~name ~resource_group_name
           ~stream_analytics_cluster_name ~subresource_name
           ~target_resource_id ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?timeouts ~name ~resource_group_name
    ~stream_analytics_cluster_name ~subresource_name
    ~target_resource_id __id =
  let (r : _ Tf_core.resource) =
    make ?id ?timeouts ~name ~resource_group_name
      ~stream_analytics_cluster_name ~subresource_name
      ~target_resource_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
