(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type server_side_encryption = {
  enabled : bool prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : server_side_encryption) -> ()

let yojson_of_server_side_encryption =
  (function
   | { enabled = v_enabled } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "enabled", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : server_side_encryption -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_server_side_encryption

[@@@deriving.end]

type timeouts = {
  create : string prop option; [@option]
  delete : string prop option; [@option]
  update : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : timeouts) -> ()

let yojson_of_timeouts =
  (function
   | { create = v_create; delete = v_delete; update = v_update } ->
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

type nodes = {
  address : string prop;
  availability_zone : string prop;
  id : string prop;
  port : float prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : nodes) -> ()

let yojson_of_nodes =
  (function
   | {
       address = v_address;
       availability_zone = v_availability_zone;
       id = v_id;
       port = v_port;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_port in
         ("port", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_id in
         ("id", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_availability_zone
         in
         ("availability_zone", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_address in
         ("address", arg) :: bnds
       in
       `Assoc bnds
    : nodes -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_nodes

[@@@deriving.end]

type aws_dax_cluster = {
  availability_zones : string prop list option; [@option]
  cluster_endpoint_encryption_type : string prop option; [@option]
  cluster_name : string prop;
  description : string prop option; [@option]
  iam_role_arn : string prop;
  id : string prop option; [@option]
  maintenance_window : string prop option; [@option]
  node_type : string prop;
  notification_topic_arn : string prop option; [@option]
  parameter_group_name : string prop option; [@option]
  replication_factor : float prop;
  security_group_ids : string prop list option; [@option]
  subnet_group_name : string prop option; [@option]
  tags : (string * string prop) list option; [@option]
  tags_all : (string * string prop) list option; [@option]
  server_side_encryption : server_side_encryption list;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_dax_cluster) -> ()

let yojson_of_aws_dax_cluster =
  (function
   | {
       availability_zones = v_availability_zones;
       cluster_endpoint_encryption_type =
         v_cluster_endpoint_encryption_type;
       cluster_name = v_cluster_name;
       description = v_description;
       iam_role_arn = v_iam_role_arn;
       id = v_id;
       maintenance_window = v_maintenance_window;
       node_type = v_node_type;
       notification_topic_arn = v_notification_topic_arn;
       parameter_group_name = v_parameter_group_name;
       replication_factor = v_replication_factor;
       security_group_ids = v_security_group_ids;
       subnet_group_name = v_subnet_group_name;
       tags = v_tags;
       tags_all = v_tags_all;
       server_side_encryption = v_server_side_encryption;
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
           yojson_of_list yojson_of_server_side_encryption
             v_server_side_encryption
         in
         ("server_side_encryption", arg) :: bnds
       in
       let bnds =
         match v_tags_all with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list
                 (function
                   | v0, v1 ->
                       let v0 = yojson_of_string v0
                       and v1 = yojson_of_prop yojson_of_string v1 in
                       `List [ v0; v1 ])
                 v
             in
             let bnd = "tags_all", arg in
             bnd :: bnds
       in
       let bnds =
         match v_tags with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list
                 (function
                   | v0, v1 ->
                       let v0 = yojson_of_string v0
                       and v1 = yojson_of_prop yojson_of_string v1 in
                       `List [ v0; v1 ])
                 v
             in
             let bnd = "tags", arg in
             bnd :: bnds
       in
       let bnds =
         match v_subnet_group_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "subnet_group_name", arg in
             bnd :: bnds
       in
       let bnds =
         match v_security_group_ids with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "security_group_ids", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_float v_replication_factor
         in
         ("replication_factor", arg) :: bnds
       in
       let bnds =
         match v_parameter_group_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "parameter_group_name", arg in
             bnd :: bnds
       in
       let bnds =
         match v_notification_topic_arn with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "notification_topic_arn", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_node_type in
         ("node_type", arg) :: bnds
       in
       let bnds =
         match v_maintenance_window with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "maintenance_window", arg in
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
         let arg = yojson_of_prop yojson_of_string v_iam_role_arn in
         ("iam_role_arn", arg) :: bnds
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
         let arg = yojson_of_prop yojson_of_string v_cluster_name in
         ("cluster_name", arg) :: bnds
       in
       let bnds =
         match v_cluster_endpoint_encryption_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "cluster_endpoint_encryption_type", arg in
             bnd :: bnds
       in
       let bnds =
         match v_availability_zones with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "availability_zones", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : aws_dax_cluster -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_dax_cluster

[@@@deriving.end]

let server_side_encryption ?enabled () : server_side_encryption =
  { enabled }

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let aws_dax_cluster ?availability_zones
    ?cluster_endpoint_encryption_type ?description ?id
    ?maintenance_window ?notification_topic_arn ?parameter_group_name
    ?security_group_ids ?subnet_group_name ?tags ?tags_all
    ?(server_side_encryption = []) ?timeouts ~cluster_name
    ~iam_role_arn ~node_type ~replication_factor () : aws_dax_cluster
    =
  {
    availability_zones;
    cluster_endpoint_encryption_type;
    cluster_name;
    description;
    iam_role_arn;
    id;
    maintenance_window;
    node_type;
    notification_topic_arn;
    parameter_group_name;
    replication_factor;
    security_group_ids;
    subnet_group_name;
    tags;
    tags_all;
    server_side_encryption;
    timeouts;
  }

type t = {
  arn : string prop;
  availability_zones : string list prop;
  cluster_address : string prop;
  cluster_endpoint_encryption_type : string prop;
  cluster_name : string prop;
  configuration_endpoint : string prop;
  description : string prop;
  iam_role_arn : string prop;
  id : string prop;
  maintenance_window : string prop;
  node_type : string prop;
  nodes : nodes list prop;
  notification_topic_arn : string prop;
  parameter_group_name : string prop;
  port : float prop;
  replication_factor : float prop;
  security_group_ids : string list prop;
  subnet_group_name : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

let make ?availability_zones ?cluster_endpoint_encryption_type
    ?description ?id ?maintenance_window ?notification_topic_arn
    ?parameter_group_name ?security_group_ids ?subnet_group_name
    ?tags ?tags_all ?(server_side_encryption = []) ?timeouts
    ~cluster_name ~iam_role_arn ~node_type ~replication_factor __id =
  let __type = "aws_dax_cluster" in
  let __attrs =
    ({
       arn = Prop.computed __type __id "arn";
       availability_zones =
         Prop.computed __type __id "availability_zones";
       cluster_address = Prop.computed __type __id "cluster_address";
       cluster_endpoint_encryption_type =
         Prop.computed __type __id "cluster_endpoint_encryption_type";
       cluster_name = Prop.computed __type __id "cluster_name";
       configuration_endpoint =
         Prop.computed __type __id "configuration_endpoint";
       description = Prop.computed __type __id "description";
       iam_role_arn = Prop.computed __type __id "iam_role_arn";
       id = Prop.computed __type __id "id";
       maintenance_window =
         Prop.computed __type __id "maintenance_window";
       node_type = Prop.computed __type __id "node_type";
       nodes = Prop.computed __type __id "nodes";
       notification_topic_arn =
         Prop.computed __type __id "notification_topic_arn";
       parameter_group_name =
         Prop.computed __type __id "parameter_group_name";
       port = Prop.computed __type __id "port";
       replication_factor =
         Prop.computed __type __id "replication_factor";
       security_group_ids =
         Prop.computed __type __id "security_group_ids";
       subnet_group_name =
         Prop.computed __type __id "subnet_group_name";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_dax_cluster
        (aws_dax_cluster ?availability_zones
           ?cluster_endpoint_encryption_type ?description ?id
           ?maintenance_window ?notification_topic_arn
           ?parameter_group_name ?security_group_ids
           ?subnet_group_name ?tags ?tags_all ~server_side_encryption
           ?timeouts ~cluster_name ~iam_role_arn ~node_type
           ~replication_factor ());
    attrs = __attrs;
  }

let register ?tf_module ?availability_zones
    ?cluster_endpoint_encryption_type ?description ?id
    ?maintenance_window ?notification_topic_arn ?parameter_group_name
    ?security_group_ids ?subnet_group_name ?tags ?tags_all
    ?(server_side_encryption = []) ?timeouts ~cluster_name
    ~iam_role_arn ~node_type ~replication_factor __id =
  let (r : _ Tf_core.resource) =
    make ?availability_zones ?cluster_endpoint_encryption_type
      ?description ?id ?maintenance_window ?notification_topic_arn
      ?parameter_group_name ?security_group_ids ?subnet_group_name
      ?tags ?tags_all ~server_side_encryption ?timeouts ~cluster_name
      ~iam_role_arn ~node_type ~replication_factor __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
