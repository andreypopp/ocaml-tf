(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type destination_options = {
  file_format : string prop option; [@option]
  hive_compatible_partitions : bool prop option; [@option]
  per_hour_partition : bool prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : destination_options) -> ()

let yojson_of_destination_options =
  (function
   | {
       file_format = v_file_format;
       hive_compatible_partitions = v_hive_compatible_partitions;
       per_hour_partition = v_per_hour_partition;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_per_hour_partition with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "per_hour_partition", arg in
             bnd :: bnds
       in
       let bnds =
         match v_hive_compatible_partitions with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "hive_compatible_partitions", arg in
             bnd :: bnds
       in
       let bnds =
         match v_file_format with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "file_format", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : destination_options -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_destination_options

[@@@deriving.end]

type aws_flow_log = {
  deliver_cross_account_role : string prop option; [@option]
  eni_id : string prop option; [@option]
  iam_role_arn : string prop option; [@option]
  id : string prop option; [@option]
  log_destination : string prop option; [@option]
  log_destination_type : string prop option; [@option]
  log_format : string prop option; [@option]
  log_group_name : string prop option; [@option]
  max_aggregation_interval : float prop option; [@option]
  subnet_id : string prop option; [@option]
  tags : (string * string prop) list option; [@option]
  tags_all : (string * string prop) list option; [@option]
  traffic_type : string prop option; [@option]
  transit_gateway_attachment_id : string prop option; [@option]
  transit_gateway_id : string prop option; [@option]
  vpc_id : string prop option; [@option]
  destination_options : destination_options list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_flow_log) -> ()

let yojson_of_aws_flow_log =
  (function
   | {
       deliver_cross_account_role = v_deliver_cross_account_role;
       eni_id = v_eni_id;
       iam_role_arn = v_iam_role_arn;
       id = v_id;
       log_destination = v_log_destination;
       log_destination_type = v_log_destination_type;
       log_format = v_log_format;
       log_group_name = v_log_group_name;
       max_aggregation_interval = v_max_aggregation_interval;
       subnet_id = v_subnet_id;
       tags = v_tags;
       tags_all = v_tags_all;
       traffic_type = v_traffic_type;
       transit_gateway_attachment_id =
         v_transit_gateway_attachment_id;
       transit_gateway_id = v_transit_gateway_id;
       vpc_id = v_vpc_id;
       destination_options = v_destination_options;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_destination_options
             v_destination_options
         in
         ("destination_options", arg) :: bnds
       in
       let bnds =
         match v_vpc_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "vpc_id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_transit_gateway_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "transit_gateway_id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_transit_gateway_attachment_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "transit_gateway_attachment_id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_traffic_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "traffic_type", arg in
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
         match v_subnet_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "subnet_id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_max_aggregation_interval with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "max_aggregation_interval", arg in
             bnd :: bnds
       in
       let bnds =
         match v_log_group_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "log_group_name", arg in
             bnd :: bnds
       in
       let bnds =
         match v_log_format with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "log_format", arg in
             bnd :: bnds
       in
       let bnds =
         match v_log_destination_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "log_destination_type", arg in
             bnd :: bnds
       in
       let bnds =
         match v_log_destination with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "log_destination", arg in
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
         match v_iam_role_arn with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "iam_role_arn", arg in
             bnd :: bnds
       in
       let bnds =
         match v_eni_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "eni_id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_deliver_cross_account_role with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "deliver_cross_account_role", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : aws_flow_log -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_flow_log

[@@@deriving.end]

let destination_options ?file_format ?hive_compatible_partitions
    ?per_hour_partition () : destination_options =
  { file_format; hive_compatible_partitions; per_hour_partition }

let aws_flow_log ?deliver_cross_account_role ?eni_id ?iam_role_arn
    ?id ?log_destination ?log_destination_type ?log_format
    ?log_group_name ?max_aggregation_interval ?subnet_id ?tags
    ?tags_all ?traffic_type ?transit_gateway_attachment_id
    ?transit_gateway_id ?vpc_id ~destination_options () :
    aws_flow_log =
  {
    deliver_cross_account_role;
    eni_id;
    iam_role_arn;
    id;
    log_destination;
    log_destination_type;
    log_format;
    log_group_name;
    max_aggregation_interval;
    subnet_id;
    tags;
    tags_all;
    traffic_type;
    transit_gateway_attachment_id;
    transit_gateway_id;
    vpc_id;
    destination_options;
  }

type t = {
  arn : string prop;
  deliver_cross_account_role : string prop;
  eni_id : string prop;
  iam_role_arn : string prop;
  id : string prop;
  log_destination : string prop;
  log_destination_type : string prop;
  log_format : string prop;
  log_group_name : string prop;
  max_aggregation_interval : float prop;
  subnet_id : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  traffic_type : string prop;
  transit_gateway_attachment_id : string prop;
  transit_gateway_id : string prop;
  vpc_id : string prop;
}

let make ?deliver_cross_account_role ?eni_id ?iam_role_arn ?id
    ?log_destination ?log_destination_type ?log_format
    ?log_group_name ?max_aggregation_interval ?subnet_id ?tags
    ?tags_all ?traffic_type ?transit_gateway_attachment_id
    ?transit_gateway_id ?vpc_id ~destination_options __id =
  let __type = "aws_flow_log" in
  let __attrs =
    ({
       arn = Prop.computed __type __id "arn";
       deliver_cross_account_role =
         Prop.computed __type __id "deliver_cross_account_role";
       eni_id = Prop.computed __type __id "eni_id";
       iam_role_arn = Prop.computed __type __id "iam_role_arn";
       id = Prop.computed __type __id "id";
       log_destination = Prop.computed __type __id "log_destination";
       log_destination_type =
         Prop.computed __type __id "log_destination_type";
       log_format = Prop.computed __type __id "log_format";
       log_group_name = Prop.computed __type __id "log_group_name";
       max_aggregation_interval =
         Prop.computed __type __id "max_aggregation_interval";
       subnet_id = Prop.computed __type __id "subnet_id";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
       traffic_type = Prop.computed __type __id "traffic_type";
       transit_gateway_attachment_id =
         Prop.computed __type __id "transit_gateway_attachment_id";
       transit_gateway_id =
         Prop.computed __type __id "transit_gateway_id";
       vpc_id = Prop.computed __type __id "vpc_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_flow_log
        (aws_flow_log ?deliver_cross_account_role ?eni_id
           ?iam_role_arn ?id ?log_destination ?log_destination_type
           ?log_format ?log_group_name ?max_aggregation_interval
           ?subnet_id ?tags ?tags_all ?traffic_type
           ?transit_gateway_attachment_id ?transit_gateway_id ?vpc_id
           ~destination_options ());
    attrs = __attrs;
  }

let register ?tf_module ?deliver_cross_account_role ?eni_id
    ?iam_role_arn ?id ?log_destination ?log_destination_type
    ?log_format ?log_group_name ?max_aggregation_interval ?subnet_id
    ?tags ?tags_all ?traffic_type ?transit_gateway_attachment_id
    ?transit_gateway_id ?vpc_id ~destination_options __id =
  let (r : _ Tf_core.resource) =
    make ?deliver_cross_account_role ?eni_id ?iam_role_arn ?id
      ?log_destination ?log_destination_type ?log_format
      ?log_group_name ?max_aggregation_interval ?subnet_id ?tags
      ?tags_all ?traffic_type ?transit_gateway_attachment_id
      ?transit_gateway_id ?vpc_id ~destination_options __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
