(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type kinesis_configuration = {
  aggregation_enabled : bool prop option; [@option]
      (** aggregation_enabled *)
  stream_arn : string prop;  (** stream_arn *)
}
[@@deriving yojson_of]
(** kinesis_configuration *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
}
[@@deriving yojson_of]
(** timeouts *)

type aws_qldb_stream = {
  exclusive_end_time : string prop option; [@option]
      (** exclusive_end_time *)
  id : string prop option; [@option]  (** id *)
  inclusive_start_time : string prop;  (** inclusive_start_time *)
  ledger_name : string prop;  (** ledger_name *)
  role_arn : string prop;  (** role_arn *)
  stream_name : string prop;  (** stream_name *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  kinesis_configuration : kinesis_configuration list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** aws_qldb_stream *)

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
