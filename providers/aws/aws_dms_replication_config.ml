(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_dms_replication_config__compute_config = {
  availability_zone : string prop option; [@option]
      (** availability_zone *)
  dns_name_servers : string prop option; [@option]
      (** dns_name_servers *)
  kms_key_id : string prop option; [@option]  (** kms_key_id *)
  max_capacity_units : float prop option; [@option]
      (** max_capacity_units *)
  min_capacity_units : float prop option; [@option]
      (** min_capacity_units *)
  multi_az : bool prop option; [@option]  (** multi_az *)
  preferred_maintenance_window : string prop option; [@option]
      (** preferred_maintenance_window *)
  replication_subnet_group_id : string prop;
      (** replication_subnet_group_id *)
  vpc_security_group_ids : string prop list option; [@option]
      (** vpc_security_group_ids *)
}
[@@deriving yojson_of]
(** aws_dms_replication_config__compute_config *)

type aws_dms_replication_config__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** aws_dms_replication_config__timeouts *)

type aws_dms_replication_config = {
  id : string prop option; [@option]  (** id *)
  replication_config_identifier : string prop;
      (** replication_config_identifier *)
  replication_settings : string prop option; [@option]
      (** replication_settings *)
  replication_type : string prop;  (** replication_type *)
  resource_identifier : string prop option; [@option]
      (** resource_identifier *)
  source_endpoint_arn : string prop;  (** source_endpoint_arn *)
  start_replication : bool prop option; [@option]
      (** start_replication *)
  supplemental_settings : string prop option; [@option]
      (** supplemental_settings *)
  table_mappings : string prop;  (** table_mappings *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  target_endpoint_arn : string prop;  (** target_endpoint_arn *)
  compute_config : aws_dms_replication_config__compute_config list;
  timeouts : aws_dms_replication_config__timeouts option;
}
[@@deriving yojson_of]
(** aws_dms_replication_config *)

type t = {
  arn : string prop;
  id : string prop;
  replication_config_identifier : string prop;
  replication_settings : string prop;
  replication_type : string prop;
  resource_identifier : string prop;
  source_endpoint_arn : string prop;
  start_replication : bool prop;
  supplemental_settings : string prop;
  table_mappings : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  target_endpoint_arn : string prop;
}

let aws_dms_replication_config ?id ?replication_settings
    ?resource_identifier ?start_replication ?supplemental_settings
    ?tags ?tags_all ?timeouts ~replication_config_identifier
    ~replication_type ~source_endpoint_arn ~table_mappings
    ~target_endpoint_arn ~compute_config __resource_id =
  let __resource_type = "aws_dms_replication_config" in
  let __resource =
    ({
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
      : aws_dms_replication_config)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_dms_replication_config __resource);
  let __resource_attributes =
    ({
       arn = Prop.computed __resource_type __resource_id "arn";
       id = Prop.computed __resource_type __resource_id "id";
       replication_config_identifier =
         Prop.computed __resource_type __resource_id
           "replication_config_identifier";
       replication_settings =
         Prop.computed __resource_type __resource_id
           "replication_settings";
       replication_type =
         Prop.computed __resource_type __resource_id
           "replication_type";
       resource_identifier =
         Prop.computed __resource_type __resource_id
           "resource_identifier";
       source_endpoint_arn =
         Prop.computed __resource_type __resource_id
           "source_endpoint_arn";
       start_replication =
         Prop.computed __resource_type __resource_id
           "start_replication";
       supplemental_settings =
         Prop.computed __resource_type __resource_id
           "supplemental_settings";
       table_mappings =
         Prop.computed __resource_type __resource_id "table_mappings";
       tags = Prop.computed __resource_type __resource_id "tags";
       tags_all =
         Prop.computed __resource_type __resource_id "tags_all";
       target_endpoint_arn =
         Prop.computed __resource_type __resource_id
           "target_endpoint_arn";
     }
      : t)
  in
  __resource_attributes
