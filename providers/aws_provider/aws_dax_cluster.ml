(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_dax_cluster__server_side_encryption = {
  enabled : bool prop option; [@option]  (** enabled *)
}
[@@deriving yojson_of]
(** aws_dax_cluster__server_side_encryption *)

type aws_dax_cluster__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** aws_dax_cluster__timeouts *)

type aws_dax_cluster__nodes = {
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
  server_side_encryption :
    aws_dax_cluster__server_side_encryption list;
  timeouts : aws_dax_cluster__timeouts option;
}
[@@deriving yojson_of]
(** aws_dax_cluster *)

let aws_dax_cluster ?availability_zones
    ?cluster_endpoint_encryption_type ?description ?id
    ?maintenance_window ?notification_topic_arn ?parameter_group_name
    ?security_group_ids ?subnet_group_name ?tags ?tags_all ?timeouts
    ~cluster_name ~iam_role_arn ~node_type ~replication_factor
    ~server_side_encryption __resource_id =
  let __resource_type = "aws_dax_cluster" in
  let __resource =
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
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_dax_cluster __resource);
  ()
