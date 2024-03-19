(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

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

let register ?tf_module ?availability_zones
    ?cluster_endpoint_encryption_type ?description ?id
    ?maintenance_window ?notification_topic_arn ?parameter_group_name
    ?security_group_ids ?subnet_group_name ?tags ?tags_all ?timeouts
    ~cluster_name ~iam_role_arn ~node_type ~replication_factor
    ~server_side_encryption __resource_id =
  let __resource_type = "aws_dax_cluster" in
  let __resource =
    aws_dax_cluster ?availability_zones
      ?cluster_endpoint_encryption_type ?description ?id
      ?maintenance_window ?notification_topic_arn
      ?parameter_group_name ?security_group_ids ?subnet_group_name
      ?tags ?tags_all ?timeouts ~cluster_name ~iam_role_arn
      ~node_type ~replication_factor ~server_side_encryption ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_dax_cluster __resource);
  let __resource_attributes =
    ({
       arn = Prop.computed __resource_type __resource_id "arn";
       availability_zones =
         Prop.computed __resource_type __resource_id
           "availability_zones";
       cluster_address =
         Prop.computed __resource_type __resource_id
           "cluster_address";
       cluster_endpoint_encryption_type =
         Prop.computed __resource_type __resource_id
           "cluster_endpoint_encryption_type";
       cluster_name =
         Prop.computed __resource_type __resource_id "cluster_name";
       configuration_endpoint =
         Prop.computed __resource_type __resource_id
           "configuration_endpoint";
       description =
         Prop.computed __resource_type __resource_id "description";
       iam_role_arn =
         Prop.computed __resource_type __resource_id "iam_role_arn";
       id = Prop.computed __resource_type __resource_id "id";
       maintenance_window =
         Prop.computed __resource_type __resource_id
           "maintenance_window";
       node_type =
         Prop.computed __resource_type __resource_id "node_type";
       nodes = Prop.computed __resource_type __resource_id "nodes";
       notification_topic_arn =
         Prop.computed __resource_type __resource_id
           "notification_topic_arn";
       parameter_group_name =
         Prop.computed __resource_type __resource_id
           "parameter_group_name";
       port = Prop.computed __resource_type __resource_id "port";
       replication_factor =
         Prop.computed __resource_type __resource_id
           "replication_factor";
       security_group_ids =
         Prop.computed __resource_type __resource_id
           "security_group_ids";
       subnet_group_name =
         Prop.computed __resource_type __resource_id
           "subnet_group_name";
       tags = Prop.computed __resource_type __resource_id "tags";
       tags_all =
         Prop.computed __resource_type __resource_id "tags_all";
     }
      : t)
  in
  __resource_attributes
