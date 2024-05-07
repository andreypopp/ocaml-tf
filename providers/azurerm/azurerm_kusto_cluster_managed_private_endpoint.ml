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

type azurerm_kusto_cluster_managed_private_endpoint = {
  cluster_name : string prop;
  group_id : string prop;
  id : string prop option; [@option]
  name : string prop;
  private_link_resource_id : string prop;
  private_link_resource_region : string prop option; [@option]
  request_message : string prop option; [@option]
  resource_group_name : string prop;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : azurerm_kusto_cluster_managed_private_endpoint) -> ()

let yojson_of_azurerm_kusto_cluster_managed_private_endpoint =
  (function
   | {
       cluster_name = v_cluster_name;
       group_id = v_group_id;
       id = v_id;
       name = v_name;
       private_link_resource_id = v_private_link_resource_id;
       private_link_resource_region = v_private_link_resource_region;
       request_message = v_request_message;
       resource_group_name = v_resource_group_name;
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
           yojson_of_prop yojson_of_string v_resource_group_name
         in
         ("resource_group_name", arg) :: bnds
       in
       let bnds =
         match v_request_message with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "request_message", arg in
             bnd :: bnds
       in
       let bnds =
         match v_private_link_resource_region with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "private_link_resource_region", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_private_link_resource_id
         in
         ("private_link_resource_id", arg) :: bnds
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
         let arg = yojson_of_prop yojson_of_string v_group_id in
         ("group_id", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_cluster_name in
         ("cluster_name", arg) :: bnds
       in
       `Assoc bnds
    : azurerm_kusto_cluster_managed_private_endpoint ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_kusto_cluster_managed_private_endpoint

[@@@deriving.end]

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_kusto_cluster_managed_private_endpoint ?id
    ?private_link_resource_region ?request_message ?timeouts
    ~cluster_name ~group_id ~name ~private_link_resource_id
    ~resource_group_name () :
    azurerm_kusto_cluster_managed_private_endpoint =
  {
    cluster_name;
    group_id;
    id;
    name;
    private_link_resource_id;
    private_link_resource_region;
    request_message;
    resource_group_name;
    timeouts;
  }

type t = {
  tf_name : string;
  cluster_name : string prop;
  group_id : string prop;
  id : string prop;
  name : string prop;
  private_link_resource_id : string prop;
  private_link_resource_region : string prop;
  request_message : string prop;
  resource_group_name : string prop;
}

let make ?id ?private_link_resource_region ?request_message ?timeouts
    ~cluster_name ~group_id ~name ~private_link_resource_id
    ~resource_group_name __id =
  let __type = "azurerm_kusto_cluster_managed_private_endpoint" in
  let __attrs =
    ({
       tf_name = __id;
       cluster_name = Prop.computed __type __id "cluster_name";
       group_id = Prop.computed __type __id "group_id";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       private_link_resource_id =
         Prop.computed __type __id "private_link_resource_id";
       private_link_resource_region =
         Prop.computed __type __id "private_link_resource_region";
       request_message = Prop.computed __type __id "request_message";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_kusto_cluster_managed_private_endpoint
        (azurerm_kusto_cluster_managed_private_endpoint ?id
           ?private_link_resource_region ?request_message ?timeouts
           ~cluster_name ~group_id ~name ~private_link_resource_id
           ~resource_group_name ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?private_link_resource_region
    ?request_message ?timeouts ~cluster_name ~group_id ~name
    ~private_link_resource_id ~resource_group_name __id =
  let (r : _ Tf_core.resource) =
    make ?id ?private_link_resource_region ?request_message ?timeouts
      ~cluster_name ~group_id ~name ~private_link_resource_id
      ~resource_group_name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
