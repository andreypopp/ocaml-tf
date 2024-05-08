(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type destination_configuration__cloudwatch_logs = {
  log_group_name : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : destination_configuration__cloudwatch_logs) -> ()

let yojson_of_destination_configuration__cloudwatch_logs =
  (function
   | { log_group_name = v_log_group_name } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_log_group_name
         in
         ("log_group_name", arg) :: bnds
       in
       `Assoc bnds
    : destination_configuration__cloudwatch_logs ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_destination_configuration__cloudwatch_logs

[@@@deriving.end]

type destination_configuration__firehose = {
  delivery_stream_name : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : destination_configuration__firehose) -> ()

let yojson_of_destination_configuration__firehose =
  (function
   | { delivery_stream_name = v_delivery_stream_name } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_delivery_stream_name
         in
         ("delivery_stream_name", arg) :: bnds
       in
       `Assoc bnds
    : destination_configuration__firehose ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_destination_configuration__firehose

[@@@deriving.end]

type destination_configuration__s3 = { bucket_name : string prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : destination_configuration__s3) -> ()

let yojson_of_destination_configuration__s3 =
  (function
   | { bucket_name = v_bucket_name } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_bucket_name in
         ("bucket_name", arg) :: bnds
       in
       `Assoc bnds
    : destination_configuration__s3 ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_destination_configuration__s3

[@@@deriving.end]

type destination_configuration = {
  cloudwatch_logs : destination_configuration__cloudwatch_logs list;
      [@default []] [@yojson_drop_default ( = )]
  firehose : destination_configuration__firehose list;
      [@default []] [@yojson_drop_default ( = )]
  s3 : destination_configuration__s3 list;
      [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : destination_configuration) -> ()

let yojson_of_destination_configuration =
  (function
   | {
       cloudwatch_logs = v_cloudwatch_logs;
       firehose = v_firehose;
       s3 = v_s3;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_s3 then bnds
         else
           let arg =
             (yojson_of_list yojson_of_destination_configuration__s3)
               v_s3
           in
           let bnd = "s3", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_firehose then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_destination_configuration__firehose)
               v_firehose
           in
           let bnd = "firehose", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_cloudwatch_logs then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_destination_configuration__cloudwatch_logs)
               v_cloudwatch_logs
           in
           let bnd = "cloudwatch_logs", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : destination_configuration -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_destination_configuration

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

type aws_ivschat_logging_configuration = {
  id : string prop option; [@option]
  name : string prop option; [@option]
  tags : (string * string prop) list option; [@option]
  tags_all : (string * string prop) list option; [@option]
  destination_configuration : destination_configuration list;
      [@default []] [@yojson_drop_default ( = )]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_ivschat_logging_configuration) -> ()

let yojson_of_aws_ivschat_logging_configuration =
  (function
   | {
       id = v_id;
       name = v_name;
       tags = v_tags;
       tags_all = v_tags_all;
       destination_configuration = v_destination_configuration;
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
         if [] = v_destination_configuration then bnds
         else
           let arg =
             (yojson_of_list yojson_of_destination_configuration)
               v_destination_configuration
           in
           let bnd = "destination_configuration", arg in
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
         match v_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "name", arg in
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
       `Assoc bnds
    : aws_ivschat_logging_configuration ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_ivschat_logging_configuration

[@@@deriving.end]

let destination_configuration__cloudwatch_logs ~log_group_name () :
    destination_configuration__cloudwatch_logs =
  { log_group_name }

let destination_configuration__firehose ~delivery_stream_name () :
    destination_configuration__firehose =
  { delivery_stream_name }

let destination_configuration__s3 ~bucket_name () :
    destination_configuration__s3 =
  { bucket_name }

let destination_configuration ?(cloudwatch_logs = [])
    ?(firehose = []) ?(s3 = []) () : destination_configuration =
  { cloudwatch_logs; firehose; s3 }

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let aws_ivschat_logging_configuration ?id ?name ?tags ?tags_all
    ?(destination_configuration = []) ?timeouts () :
    aws_ivschat_logging_configuration =
  { id; name; tags; tags_all; destination_configuration; timeouts }

type t = {
  tf_name : string;
  arn : string prop;
  id : string prop;
  name : string prop;
  state : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

let make ?id ?name ?tags ?tags_all ?(destination_configuration = [])
    ?timeouts __id =
  let __type = "aws_ivschat_logging_configuration" in
  let __attrs =
    ({
       tf_name = __id;
       arn = Prop.computed __type __id "arn";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       state = Prop.computed __type __id "state";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_ivschat_logging_configuration
        (aws_ivschat_logging_configuration ?id ?name ?tags ?tags_all
           ~destination_configuration ?timeouts ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?name ?tags ?tags_all
    ?(destination_configuration = []) ?timeouts __id =
  let (r : _ Tf_core.resource) =
    make ?id ?name ?tags ?tags_all ~destination_configuration
      ?timeouts __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
