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

type gateway = {
  enabled : bool prop;
  password : string prop;
  username : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : gateway) -> ()

let yojson_of_gateway =
  (function
   | {
       enabled = v_enabled;
       password = v_password;
       username = v_username;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_username in
         ("username", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_password in
         ("password", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_enabled in
         ("enabled", arg) :: bnds
       in
       `Assoc bnds
    : gateway -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_gateway

[@@@deriving.end]

type azurerm_hdinsight_cluster = {
  id : string prop option; [@option]
  name : string prop;
  resource_group_name : string prop;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_hdinsight_cluster) -> ()

let yojson_of_azurerm_hdinsight_cluster =
  (function
   | {
       id = v_id;
       name = v_name;
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
    : azurerm_hdinsight_cluster -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_hdinsight_cluster

[@@@deriving.end]

let timeouts ?read () : timeouts = { read }

let azurerm_hdinsight_cluster ?id ?timeouts ~name
    ~resource_group_name () : azurerm_hdinsight_cluster =
  { id; name; resource_group_name; timeouts }

type t = {
  tf_name : string;
  cluster_id : string prop;
  cluster_version : string prop;
  component_versions : string Tf_core.assoc prop;
  edge_ssh_endpoint : string prop;
  gateway : gateway list prop;
  https_endpoint : string prop;
  id : string prop;
  kafka_rest_proxy_endpoint : string prop;
  kind : string prop;
  location : string prop;
  name : string prop;
  resource_group_name : string prop;
  ssh_endpoint : string prop;
  tags : string Tf_core.assoc prop;
  tier : string prop;
  tls_min_version : string prop;
}

let make ?id ?timeouts ~name ~resource_group_name __id =
  let __type = "azurerm_hdinsight_cluster" in
  let __attrs =
    ({
       tf_name = __id;
       cluster_id = Prop.computed __type __id "cluster_id";
       cluster_version = Prop.computed __type __id "cluster_version";
       component_versions =
         Prop.computed __type __id "component_versions";
       edge_ssh_endpoint =
         Prop.computed __type __id "edge_ssh_endpoint";
       gateway = Prop.computed __type __id "gateway";
       https_endpoint = Prop.computed __type __id "https_endpoint";
       id = Prop.computed __type __id "id";
       kafka_rest_proxy_endpoint =
         Prop.computed __type __id "kafka_rest_proxy_endpoint";
       kind = Prop.computed __type __id "kind";
       location = Prop.computed __type __id "location";
       name = Prop.computed __type __id "name";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
       ssh_endpoint = Prop.computed __type __id "ssh_endpoint";
       tags = Prop.computed __type __id "tags";
       tier = Prop.computed __type __id "tier";
       tls_min_version = Prop.computed __type __id "tls_min_version";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_hdinsight_cluster
        (azurerm_hdinsight_cluster ?id ?timeouts ~name
           ~resource_group_name ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?timeouts ~name ~resource_group_name __id
    =
  let (r : _ Tf_core.resource) =
    make ?id ?timeouts ~name ~resource_group_name __id
  in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
