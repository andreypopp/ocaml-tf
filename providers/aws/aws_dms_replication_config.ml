(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type compute_config = {
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
(** compute_config *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

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
  compute_config : compute_config list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** aws_dms_replication_config *)

let compute_config ?availability_zone ?dns_name_servers ?kms_key_id
    ?max_capacity_units ?min_capacity_units ?multi_az
    ?preferred_maintenance_window ?vpc_security_group_ids
    ~replication_subnet_group_id () : compute_config =
  {
    availability_zone;
    dns_name_servers;
    kms_key_id;
    max_capacity_units;
    min_capacity_units;
    multi_az;
    preferred_maintenance_window;
    replication_subnet_group_id;
    vpc_security_group_ids;
  }

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let aws_dms_replication_config ?id ?replication_settings
    ?resource_identifier ?start_replication ?supplemental_settings
    ?tags ?tags_all ?timeouts ~replication_config_identifier
    ~replication_type ~source_endpoint_arn ~table_mappings
    ~target_endpoint_arn ~compute_config () :
    aws_dms_replication_config =
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

let make ?id ?replication_settings ?resource_identifier
    ?start_replication ?supplemental_settings ?tags ?tags_all
    ?timeouts ~replication_config_identifier ~replication_type
    ~source_endpoint_arn ~table_mappings ~target_endpoint_arn
    ~compute_config __id =
  let __type = "aws_dms_replication_config" in
  let __attrs =
    ({
       arn = Prop.computed __type __id "arn";
       id = Prop.computed __type __id "id";
       replication_config_identifier =
         Prop.computed __type __id "replication_config_identifier";
       replication_settings =
         Prop.computed __type __id "replication_settings";
       replication_type =
         Prop.computed __type __id "replication_type";
       resource_identifier =
         Prop.computed __type __id "resource_identifier";
       source_endpoint_arn =
         Prop.computed __type __id "source_endpoint_arn";
       start_replication =
         Prop.computed __type __id "start_replication";
       supplemental_settings =
         Prop.computed __type __id "supplemental_settings";
       table_mappings = Prop.computed __type __id "table_mappings";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
       target_endpoint_arn =
         Prop.computed __type __id "target_endpoint_arn";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_dms_replication_config
        (aws_dms_replication_config ?id ?replication_settings
           ?resource_identifier ?start_replication
           ?supplemental_settings ?tags ?tags_all ?timeouts
           ~replication_config_identifier ~replication_type
           ~source_endpoint_arn ~table_mappings ~target_endpoint_arn
           ~compute_config ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?replication_settings
    ?resource_identifier ?start_replication ?supplemental_settings
    ?tags ?tags_all ?timeouts ~replication_config_identifier
    ~replication_type ~source_endpoint_arn ~table_mappings
    ~target_endpoint_arn ~compute_config __id =
  let (r : _ Tf_core.resource) =
    make ?id ?replication_settings ?resource_identifier
      ?start_replication ?supplemental_settings ?tags ?tags_all
      ?timeouts ~replication_config_identifier ~replication_type
      ~source_endpoint_arn ~table_mappings ~target_endpoint_arn
      ~compute_config __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
