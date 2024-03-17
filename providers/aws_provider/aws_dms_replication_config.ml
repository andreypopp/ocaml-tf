(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_dms_replication_config__compute_config = {
  availability_zone : string option; [@option]
      (** availability_zone *)
  dns_name_servers : string option; [@option]
      (** dns_name_servers *)
  kms_key_id : string option; [@option]  (** kms_key_id *)
  max_capacity_units : float option; [@option]
      (** max_capacity_units *)
  min_capacity_units : float option; [@option]
      (** min_capacity_units *)
  multi_az : bool option; [@option]  (** multi_az *)
  preferred_maintenance_window : string option; [@option]
      (** preferred_maintenance_window *)
  replication_subnet_group_id : string;
      (** replication_subnet_group_id *)
  vpc_security_group_ids : string list option; [@option]
      (** vpc_security_group_ids *)
}
[@@deriving yojson_of]
(** aws_dms_replication_config__compute_config *)

type aws_dms_replication_config__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** aws_dms_replication_config__timeouts *)

type aws_dms_replication_config = {
  id : string option; [@option]  (** id *)
  replication_config_identifier : string;
      (** replication_config_identifier *)
  replication_settings : string option; [@option]
      (** replication_settings *)
  replication_type : string;  (** replication_type *)
  resource_identifier : string option; [@option]
      (** resource_identifier *)
  source_endpoint_arn : string;  (** source_endpoint_arn *)
  start_replication : bool option; [@option]
      (** start_replication *)
  supplemental_settings : string option; [@option]
      (** supplemental_settings *)
  table_mappings : string;  (** table_mappings *)
  tags : (string * string) list option; [@option]  (** tags *)
  tags_all : (string * string) list option; [@option]
      (** tags_all *)
  target_endpoint_arn : string;  (** target_endpoint_arn *)
  compute_config : aws_dms_replication_config__compute_config list;
  timeouts : aws_dms_replication_config__timeouts option;
}
[@@deriving yojson_of]
(** aws_dms_replication_config *)

let aws_dms_replication_config ?id ?replication_settings
    ?resource_identifier ?start_replication ?supplemental_settings
    ?tags ?tags_all ?timeouts ~replication_config_identifier
    ~replication_type ~source_endpoint_arn ~table_mappings
    ~target_endpoint_arn ~compute_config __resource_id =
  let __resource_type = "aws_dms_replication_config" in
  let __resource =
    {
      id;
      replication_config_identifier;
      replication_settings;
      replication_type;
      resource_identifier;
      source_endpoint_arn;
      start_replication;
      supplemental_settings;
      table_mappings;
      tags;
      tags_all;
      target_endpoint_arn;
      compute_config;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_dms_replication_config __resource);
  ()
