(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type kafka_cluster__amazon_msk_cluster = {
  msk_cluster_arn : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : kafka_cluster__amazon_msk_cluster) -> ()

let yojson_of_kafka_cluster__amazon_msk_cluster =
  (function
   | { msk_cluster_arn = v_msk_cluster_arn } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_msk_cluster_arn
         in
         ("msk_cluster_arn", arg) :: bnds
       in
       `Assoc bnds
    : kafka_cluster__amazon_msk_cluster ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_kafka_cluster__amazon_msk_cluster

[@@@deriving.end]

type kafka_cluster__vpc_config = {
  security_groups_ids : string prop list option; [@option]
  subnet_ids : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : kafka_cluster__vpc_config) -> ()

let yojson_of_kafka_cluster__vpc_config =
  (function
   | {
       security_groups_ids = v_security_groups_ids;
       subnet_ids = v_subnet_ids;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_subnet_ids then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_subnet_ids
           in
           let bnd = "subnet_ids", arg in
           bnd :: bnds
       in
       let bnds =
         match v_security_groups_ids with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "security_groups_ids", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : kafka_cluster__vpc_config -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_kafka_cluster__vpc_config

[@@@deriving.end]

type kafka_cluster = {
  amazon_msk_cluster : kafka_cluster__amazon_msk_cluster list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  vpc_config : kafka_cluster__vpc_config list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : kafka_cluster) -> ()

let yojson_of_kafka_cluster =
  (function
   | {
       amazon_msk_cluster = v_amazon_msk_cluster;
       vpc_config = v_vpc_config;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_vpc_config then bnds
         else
           let arg =
             (yojson_of_list yojson_of_kafka_cluster__vpc_config)
               v_vpc_config
           in
           let bnd = "vpc_config", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_amazon_msk_cluster then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_kafka_cluster__amazon_msk_cluster)
               v_amazon_msk_cluster
           in
           let bnd = "amazon_msk_cluster", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : kafka_cluster -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_kafka_cluster

[@@@deriving.end]

type replication_info_list__consumer_group_replication = {
  consumer_groups_to_exclude : string prop list option; [@option]
  consumer_groups_to_replicate : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  detect_and_copy_new_consumer_groups : bool prop option; [@option]
  synchronise_consumer_group_offsets : bool prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : replication_info_list__consumer_group_replication) -> ()

let yojson_of_replication_info_list__consumer_group_replication =
  (function
   | {
       consumer_groups_to_exclude = v_consumer_groups_to_exclude;
       consumer_groups_to_replicate = v_consumer_groups_to_replicate;
       detect_and_copy_new_consumer_groups =
         v_detect_and_copy_new_consumer_groups;
       synchronise_consumer_group_offsets =
         v_synchronise_consumer_group_offsets;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_synchronise_consumer_group_offsets with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "synchronise_consumer_group_offsets", arg in
             bnd :: bnds
       in
       let bnds =
         match v_detect_and_copy_new_consumer_groups with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "detect_and_copy_new_consumer_groups", arg in
             bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_consumer_groups_to_replicate then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_consumer_groups_to_replicate
           in
           let bnd = "consumer_groups_to_replicate", arg in
           bnd :: bnds
       in
       let bnds =
         match v_consumer_groups_to_exclude with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "consumer_groups_to_exclude", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : replication_info_list__consumer_group_replication ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_replication_info_list__consumer_group_replication

[@@@deriving.end]

type replication_info_list__topic_replication__starting_position = {
  type_ : string prop option; [@option] [@key "type"]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       replication_info_list__topic_replication__starting_position) ->
  ()

let yojson_of_replication_info_list__topic_replication__starting_position
    =
  (function
   | { type_ = v_type_ } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_type_ with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "type", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : replication_info_list__topic_replication__starting_position ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_replication_info_list__topic_replication__starting_position

[@@@deriving.end]

type replication_info_list__topic_replication = {
  copy_access_control_lists_for_topics : bool prop option; [@option]
  copy_topic_configurations : bool prop option; [@option]
  detect_and_copy_new_topics : bool prop option; [@option]
  topics_to_exclude : string prop list option; [@option]
  topics_to_replicate : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  starting_position :
    replication_info_list__topic_replication__starting_position list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : replication_info_list__topic_replication) -> ()

let yojson_of_replication_info_list__topic_replication =
  (function
   | {
       copy_access_control_lists_for_topics =
         v_copy_access_control_lists_for_topics;
       copy_topic_configurations = v_copy_topic_configurations;
       detect_and_copy_new_topics = v_detect_and_copy_new_topics;
       topics_to_exclude = v_topics_to_exclude;
       topics_to_replicate = v_topics_to_replicate;
       starting_position = v_starting_position;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_starting_position then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_replication_info_list__topic_replication__starting_position)
               v_starting_position
           in
           let bnd = "starting_position", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_topics_to_replicate then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_topics_to_replicate
           in
           let bnd = "topics_to_replicate", arg in
           bnd :: bnds
       in
       let bnds =
         match v_topics_to_exclude with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "topics_to_exclude", arg in
             bnd :: bnds
       in
       let bnds =
         match v_detect_and_copy_new_topics with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "detect_and_copy_new_topics", arg in
             bnd :: bnds
       in
       let bnds =
         match v_copy_topic_configurations with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "copy_topic_configurations", arg in
             bnd :: bnds
       in
       let bnds =
         match v_copy_access_control_lists_for_topics with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "copy_access_control_lists_for_topics", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : replication_info_list__topic_replication ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_replication_info_list__topic_replication

[@@@deriving.end]

type replication_info_list = {
  source_kafka_cluster_arn : string prop;
  target_compression_type : string prop;
  target_kafka_cluster_arn : string prop;
  consumer_group_replication :
    replication_info_list__consumer_group_replication list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  topic_replication : replication_info_list__topic_replication list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : replication_info_list) -> ()

let yojson_of_replication_info_list =
  (function
   | {
       source_kafka_cluster_arn = v_source_kafka_cluster_arn;
       target_compression_type = v_target_compression_type;
       target_kafka_cluster_arn = v_target_kafka_cluster_arn;
       consumer_group_replication = v_consumer_group_replication;
       topic_replication = v_topic_replication;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_topic_replication then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_replication_info_list__topic_replication)
               v_topic_replication
           in
           let bnd = "topic_replication", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_consumer_group_replication then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_replication_info_list__consumer_group_replication)
               v_consumer_group_replication
           in
           let bnd = "consumer_group_replication", arg in
           bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_target_kafka_cluster_arn
         in
         ("target_kafka_cluster_arn", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_target_compression_type
         in
         ("target_compression_type", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_source_kafka_cluster_arn
         in
         ("source_kafka_cluster_arn", arg) :: bnds
       in
       `Assoc bnds
    : replication_info_list -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_replication_info_list

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

type aws_msk_replicator = {
  description : string prop option; [@option]
  id : string prop option; [@option]
  replicator_name : string prop;
  service_execution_role_arn : string prop;
  tags : (string * string prop) list option; [@option]
  tags_all : (string * string prop) list option; [@option]
  kafka_cluster : kafka_cluster list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  replication_info_list : replication_info_list list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_msk_replicator) -> ()

let yojson_of_aws_msk_replicator =
  (function
   | {
       description = v_description;
       id = v_id;
       replicator_name = v_replicator_name;
       service_execution_role_arn = v_service_execution_role_arn;
       tags = v_tags;
       tags_all = v_tags_all;
       kafka_cluster = v_kafka_cluster;
       replication_info_list = v_replication_info_list;
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
         if Stdlib.( = ) [] v_replication_info_list then bnds
         else
           let arg =
             (yojson_of_list yojson_of_replication_info_list)
               v_replication_info_list
           in
           let bnd = "replication_info_list", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_kafka_cluster then bnds
         else
           let arg =
             (yojson_of_list yojson_of_kafka_cluster) v_kafka_cluster
           in
           let bnd = "kafka_cluster", arg in
           bnd :: bnds
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
         let arg =
           yojson_of_prop yojson_of_string
             v_service_execution_role_arn
         in
         ("service_execution_role_arn", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_replicator_name
         in
         ("replicator_name", arg) :: bnds
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
         match v_description with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "description", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : aws_msk_replicator -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_msk_replicator

[@@@deriving.end]

let kafka_cluster__amazon_msk_cluster ~msk_cluster_arn () :
    kafka_cluster__amazon_msk_cluster =
  { msk_cluster_arn }

let kafka_cluster__vpc_config ?security_groups_ids ~subnet_ids () :
    kafka_cluster__vpc_config =
  { security_groups_ids; subnet_ids }

let kafka_cluster ~amazon_msk_cluster ~vpc_config () : kafka_cluster
    =
  { amazon_msk_cluster; vpc_config }

let replication_info_list__consumer_group_replication
    ?consumer_groups_to_exclude ?detect_and_copy_new_consumer_groups
    ?synchronise_consumer_group_offsets ~consumer_groups_to_replicate
    () : replication_info_list__consumer_group_replication =
  {
    consumer_groups_to_exclude;
    consumer_groups_to_replicate;
    detect_and_copy_new_consumer_groups;
    synchronise_consumer_group_offsets;
  }

let replication_info_list__topic_replication__starting_position
    ?type_ () :
    replication_info_list__topic_replication__starting_position =
  { type_ }

let replication_info_list__topic_replication
    ?copy_access_control_lists_for_topics ?copy_topic_configurations
    ?detect_and_copy_new_topics ?topics_to_exclude
    ?(starting_position = []) ~topics_to_replicate () :
    replication_info_list__topic_replication =
  {
    copy_access_control_lists_for_topics;
    copy_topic_configurations;
    detect_and_copy_new_topics;
    topics_to_exclude;
    topics_to_replicate;
    starting_position;
  }

let replication_info_list ~source_kafka_cluster_arn
    ~target_compression_type ~target_kafka_cluster_arn
    ~consumer_group_replication ~topic_replication () :
    replication_info_list =
  {
    source_kafka_cluster_arn;
    target_compression_type;
    target_kafka_cluster_arn;
    consumer_group_replication;
    topic_replication;
  }

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let aws_msk_replicator ?description ?id ?tags ?tags_all ?timeouts
    ~replicator_name ~service_execution_role_arn ~kafka_cluster
    ~replication_info_list () : aws_msk_replicator =
  {
    description;
    id;
    replicator_name;
    service_execution_role_arn;
    tags;
    tags_all;
    kafka_cluster;
    replication_info_list;
    timeouts;
  }

type t = {
  tf_name : string;
  arn : string prop;
  current_version : string prop;
  description : string prop;
  id : string prop;
  replicator_name : string prop;
  service_execution_role_arn : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

let make ?description ?id ?tags ?tags_all ?timeouts ~replicator_name
    ~service_execution_role_arn ~kafka_cluster ~replication_info_list
    __id =
  let __type = "aws_msk_replicator" in
  let __attrs =
    ({
       tf_name = __id;
       arn = Prop.computed __type __id "arn";
       current_version = Prop.computed __type __id "current_version";
       description = Prop.computed __type __id "description";
       id = Prop.computed __type __id "id";
       replicator_name = Prop.computed __type __id "replicator_name";
       service_execution_role_arn =
         Prop.computed __type __id "service_execution_role_arn";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_msk_replicator
        (aws_msk_replicator ?description ?id ?tags ?tags_all
           ?timeouts ~replicator_name ~service_execution_role_arn
           ~kafka_cluster ~replication_info_list ());
    attrs = __attrs;
  }

let register ?tf_module ?description ?id ?tags ?tags_all ?timeouts
    ~replicator_name ~service_execution_role_arn ~kafka_cluster
    ~replication_info_list __id =
  let (r : _ Tf_core.resource) =
    make ?description ?id ?tags ?tags_all ?timeouts ~replicator_name
      ~service_execution_role_arn ~kafka_cluster
      ~replication_info_list __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
