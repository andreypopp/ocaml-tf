(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type kinesis_configuration = {
  aggregation_enabled : bool prop option; [@option]
  stream_arn : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : kinesis_configuration) -> ()

let yojson_of_kinesis_configuration =
  (function
   | {
       aggregation_enabled = v_aggregation_enabled;
       stream_arn = v_stream_arn;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_stream_arn in
         ("stream_arn", arg) :: bnds
       in
       let bnds =
         match v_aggregation_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "aggregation_enabled", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : kinesis_configuration -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_kinesis_configuration

[@@@deriving.end]

type timeouts = {
  create : string prop option; [@option]
  delete : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : timeouts) -> ()

let yojson_of_timeouts =
  (function
   | { create = v_create; delete = v_delete } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
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

type aws_qldb_stream = {
  exclusive_end_time : string prop option; [@option]
  id : string prop option; [@option]
  inclusive_start_time : string prop;
  ledger_name : string prop;
  role_arn : string prop;
  stream_name : string prop;
  tags : (string * string prop) list option; [@option]
  tags_all : (string * string prop) list option; [@option]
  kinesis_configuration : kinesis_configuration list;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_qldb_stream) -> ()

let yojson_of_aws_qldb_stream =
  (function
   | {
       exclusive_end_time = v_exclusive_end_time;
       id = v_id;
       inclusive_start_time = v_inclusive_start_time;
       ledger_name = v_ledger_name;
       role_arn = v_role_arn;
       stream_name = v_stream_name;
       tags = v_tags;
       tags_all = v_tags_all;
       kinesis_configuration = v_kinesis_configuration;
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
         let arg =
           yojson_of_list yojson_of_kinesis_configuration
             v_kinesis_configuration
         in
         ("kinesis_configuration", arg) :: bnds
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
         let arg = yojson_of_prop yojson_of_string v_stream_name in
         ("stream_name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_role_arn in
         ("role_arn", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_ledger_name in
         ("ledger_name", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_inclusive_start_time
         in
         ("inclusive_start_time", arg) :: bnds
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
         match v_exclusive_end_time with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "exclusive_end_time", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : aws_qldb_stream -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_qldb_stream

[@@@deriving.end]

let kinesis_configuration ?aggregation_enabled ~stream_arn () :
    kinesis_configuration =
  { aggregation_enabled; stream_arn }

let timeouts ?create ?delete () : timeouts = { create; delete }

let aws_qldb_stream ?exclusive_end_time ?id ?tags ?tags_all ?timeouts
    ~inclusive_start_time ~ledger_name ~role_arn ~stream_name
    ~kinesis_configuration () : aws_qldb_stream =
  {
    exclusive_end_time;
    id;
    inclusive_start_time;
    ledger_name;
    role_arn;
    stream_name;
    tags;
    tags_all;
    kinesis_configuration;
    timeouts;
  }

type t = {
  arn : string prop;
  exclusive_end_time : string prop;
  id : string prop;
  inclusive_start_time : string prop;
  ledger_name : string prop;
  role_arn : string prop;
  stream_name : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

let make ?exclusive_end_time ?id ?tags ?tags_all ?timeouts
    ~inclusive_start_time ~ledger_name ~role_arn ~stream_name
    ~kinesis_configuration __id =
  let __type = "aws_qldb_stream" in
  let __attrs =
    ({
       arn = Prop.computed __type __id "arn";
       exclusive_end_time =
         Prop.computed __type __id "exclusive_end_time";
       id = Prop.computed __type __id "id";
       inclusive_start_time =
         Prop.computed __type __id "inclusive_start_time";
       ledger_name = Prop.computed __type __id "ledger_name";
       role_arn = Prop.computed __type __id "role_arn";
       stream_name = Prop.computed __type __id "stream_name";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_qldb_stream
        (aws_qldb_stream ?exclusive_end_time ?id ?tags ?tags_all
           ?timeouts ~inclusive_start_time ~ledger_name ~role_arn
           ~stream_name ~kinesis_configuration ());
    attrs = __attrs;
  }

let register ?tf_module ?exclusive_end_time ?id ?tags ?tags_all
    ?timeouts ~inclusive_start_time ~ledger_name ~role_arn
    ~stream_name ~kinesis_configuration __id =
  let (r : _ Tf_core.resource) =
    make ?exclusive_end_time ?id ?tags ?tags_all ?timeouts
      ~inclusive_start_time ~ledger_name ~role_arn ~stream_name
      ~kinesis_configuration __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
