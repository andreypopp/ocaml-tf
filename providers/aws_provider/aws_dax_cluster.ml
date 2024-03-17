(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type aws_dax_cluster__server_side_encryption = {
  enabled : bool option; [@option]  (** enabled *)
}
[@@deriving yojson_of]
(** aws_dax_cluster__server_side_encryption *)

type aws_dax_cluster__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** aws_dax_cluster__timeouts *)

type aws_dax_cluster__nodes = {
  address : string;  (** address *)
  availability_zone : string;  (** availability_zone *)
  id : string;  (** id *)
  port : float;  (** port *)
}
[@@deriving yojson_of]

type aws_dax_cluster = {
  availability_zones : string list option; [@option]
      (** availability_zones *)
  cluster_endpoint_encryption_type : string option; [@option]
      (** cluster_endpoint_encryption_type *)
  cluster_name : string;  (** cluster_name *)
  description : string option; [@option]  (** description *)
  iam_role_arn : string;  (** iam_role_arn *)
  node_type : string;  (** node_type *)
  notification_topic_arn : string option; [@option]
      (** notification_topic_arn *)
  replication_factor : float;  (** replication_factor *)
  tags : (string * string) list option; [@option]  (** tags *)
  server_side_encryption :
    aws_dax_cluster__server_side_encryption list;
  timeouts : aws_dax_cluster__timeouts option;
}
[@@deriving yojson_of]
(** aws_dax_cluster *)

let aws_dax_cluster ?availability_zones
    ?cluster_endpoint_encryption_type ?description
    ?notification_topic_arn ?tags ?timeouts ~cluster_name
    ~iam_role_arn ~node_type ~replication_factor
    ~server_side_encryption __resource_id =
  let __resource_type = "aws_dax_cluster" in
  let __resource =
    {
      availability_zones;
      cluster_endpoint_encryption_type;
      cluster_name;
      description;
      iam_role_arn;
      node_type;
      notification_topic_arn;
      replication_factor;
      tags;
      server_side_encryption;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_dax_cluster __resource);
  ()
