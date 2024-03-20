(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type server_side_encryption = {
  enabled : bool prop option; [@option]  (** enabled *)
}
[@@deriving yojson_of]
(** server_side_encryption *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type nodes = {
  address : string prop;  (** address *)
  availability_zone : string prop;  (** availability_zone *)
  id : string prop;  (** id *)
  port : float prop;  (** port *)
}
[@@deriving yojson_of]

type aws_dax_cluster = {
  availability_zones : string prop list option; [@option]
      (** availability_zones *)
  cluster_endpoint_encryption_type : string prop option; [@option]
      (** cluster_endpoint_encryption_type *)
  cluster_name : string prop;  (** cluster_name *)
  description : string prop option; [@option]  (** description *)
  iam_role_arn : string prop;  (** iam_role_arn *)
  id : string prop option; [@option]  (** id *)
  maintenance_window : string prop option; [@option]
      (** maintenance_window *)
  node_type : string prop;  (** node_type *)
  notification_topic_arn : string prop option; [@option]
      (** notification_topic_arn *)
  parameter_group_name : string prop option; [@option]
      (** parameter_group_name *)
  replication_factor : float prop;  (** replication_factor *)
  security_group_ids : string prop list option; [@option]
      (** security_group_ids *)
  subnet_group_name : string prop option; [@option]
      (** subnet_group_name *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  server_side_encryption : server_side_encryption list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** aws_dax_cluster *)

let server_side_encryption ?enabled () : server_side_encryption =
  { enabled }

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let aws_dax_cluster ?availability_zones
    ?cluster_endpoint_encryption_type ?description ?id
    ?maintenance_window ?notification_topic_arn ?parameter_group_name
    ?security_group_ids ?subnet_group_name ?tags ?tags_all ?timeouts
    ~cluster_name ~iam_role_arn ~node_type ~replication_factor
    ~server_side_encryption () : aws_dax_cluster =
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
    ?tags ?tags_all ?timeouts ~cluster_name ~iam_role_arn ~node_type
    ~replication_factor ~server_side_encryption __id =
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
           ?subnet_group_name ?tags ?tags_all ?timeouts ~cluster_name
           ~iam_role_arn ~node_type ~replication_factor
           ~server_side_encryption ());
    attrs = __attrs;
  }

let register ?tf_module ?availability_zones
    ?cluster_endpoint_encryption_type ?description ?id
    ?maintenance_window ?notification_topic_arn ?parameter_group_name
    ?security_group_ids ?subnet_group_name ?tags ?tags_all ?timeouts
    ~cluster_name ~iam_role_arn ~node_type ~replication_factor
    ~server_side_encryption __id =
  let (r : _ Tf_core.resource) =
    make ?availability_zones ?cluster_endpoint_encryption_type
      ?description ?id ?maintenance_window ?notification_topic_arn
      ?parameter_group_name ?security_group_ids ?subnet_group_name
      ?tags ?tags_all ?timeouts ~cluster_name ~iam_role_arn
      ~node_type ~replication_factor ~server_side_encryption __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
