(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type aws_redshift_cluster__logging = {
  bucket_name : string option; [@option]  (** bucket_name *)
  enable : bool;  (** enable *)
  log_destination_type : string option; [@option]
      (** log_destination_type *)
  log_exports : string list option; [@option]  (** log_exports *)
  s3_key_prefix : string option; [@option]  (** s3_key_prefix *)
}
[@@deriving yojson_of]
(** aws_redshift_cluster__logging *)

type aws_redshift_cluster__snapshot_copy = {
  destination_region : string;  (** destination_region *)
  grant_name : string option; [@option]  (** grant_name *)
  retention_period : float option; [@option]  (** retention_period *)
}
[@@deriving yojson_of]
(** aws_redshift_cluster__snapshot_copy *)

type aws_redshift_cluster__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** aws_redshift_cluster__timeouts *)

type aws_redshift_cluster__cluster_nodes = {
  node_role : string;  (** node_role *)
  private_ip_address : string;  (** private_ip_address *)
  public_ip_address : string;  (** public_ip_address *)
}
[@@deriving yojson_of]

type aws_redshift_cluster = {
  allow_version_upgrade : bool option; [@option]
      (** allow_version_upgrade *)
  apply_immediately : bool option; [@option]
      (** apply_immediately *)
  automated_snapshot_retention_period : float option; [@option]
      (** automated_snapshot_retention_period *)
  availability_zone_relocation_enabled : bool option; [@option]
      (** availability_zone_relocation_enabled *)
  cluster_identifier : string;  (** cluster_identifier *)
  cluster_version : string option; [@option]  (** cluster_version *)
  elastic_ip : string option; [@option]  (** elastic_ip *)
  encrypted : bool option; [@option]  (** encrypted *)
  final_snapshot_identifier : string option; [@option]
      (** final_snapshot_identifier *)
  maintenance_track_name : string option; [@option]
      (** maintenance_track_name *)
  manage_master_password : bool option; [@option]
      (** manage_master_password *)
  manual_snapshot_retention_period : float option; [@option]
      (** manual_snapshot_retention_period *)
  master_password : string option; [@option]  (** master_password *)
  master_username : string option; [@option]  (** master_username *)
  multi_az : bool option; [@option]  (** multi_az *)
  node_type : string;  (** node_type *)
  number_of_nodes : float option; [@option]  (** number_of_nodes *)
  owner_account : string option; [@option]  (** owner_account *)
  port : float option; [@option]  (** port *)
  publicly_accessible : bool option; [@option]
      (** publicly_accessible *)
  skip_final_snapshot : bool option; [@option]
      (** skip_final_snapshot *)
  snapshot_arn : string option; [@option]  (** snapshot_arn *)
  snapshot_cluster_identifier : string option; [@option]
      (** snapshot_cluster_identifier *)
  snapshot_identifier : string option; [@option]
      (** snapshot_identifier *)
  tags : (string * string) list option; [@option]  (** tags *)
  logging : aws_redshift_cluster__logging list;
  snapshot_copy : aws_redshift_cluster__snapshot_copy list;
  timeouts : aws_redshift_cluster__timeouts option;
}
[@@deriving yojson_of]
(** aws_redshift_cluster *)

let aws_redshift_cluster ?allow_version_upgrade ?apply_immediately
    ?automated_snapshot_retention_period
    ?availability_zone_relocation_enabled ?cluster_version
    ?elastic_ip ?encrypted ?final_snapshot_identifier
    ?maintenance_track_name ?manage_master_password
    ?manual_snapshot_retention_period ?master_password
    ?master_username ?multi_az ?number_of_nodes ?owner_account ?port
    ?publicly_accessible ?skip_final_snapshot ?snapshot_arn
    ?snapshot_cluster_identifier ?snapshot_identifier ?tags ?timeouts
    ~cluster_identifier ~node_type ~logging ~snapshot_copy
    __resource_id =
  let __resource_type = "aws_redshift_cluster" in
  let __resource =
    {
      allow_version_upgrade;
      apply_immediately;
      automated_snapshot_retention_period;
      availability_zone_relocation_enabled;
      cluster_identifier;
      cluster_version;
      elastic_ip;
      encrypted;
      final_snapshot_identifier;
      maintenance_track_name;
      manage_master_password;
      manual_snapshot_retention_period;
      master_password;
      master_username;
      multi_az;
      node_type;
      number_of_nodes;
      owner_account;
      port;
      publicly_accessible;
      skip_final_snapshot;
      snapshot_arn;
      snapshot_cluster_identifier;
      snapshot_identifier;
      tags;
      logging;
      snapshot_copy;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_redshift_cluster __resource);
  ()
