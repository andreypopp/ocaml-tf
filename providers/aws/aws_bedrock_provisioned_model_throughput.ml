(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = { create : string prop option [@option] }
[@@deriving_inline yojson_of]

let _ = fun (_ : timeouts) -> ()

let yojson_of_timeouts =
  (function
   | { create = v_create } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
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

type aws_bedrock_provisioned_model_throughput = {
  commitment_duration : string prop option; [@option]
  model_arn : string prop;
  model_units : float prop;
  provisioned_model_name : string prop;
  tags : (string * string prop) list option; [@option]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_bedrock_provisioned_model_throughput) -> ()

let yojson_of_aws_bedrock_provisioned_model_throughput =
  (function
   | {
       commitment_duration = v_commitment_duration;
       model_arn = v_model_arn;
       model_units = v_model_units;
       provisioned_model_name = v_provisioned_model_name;
       tags = v_tags;
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
           yojson_of_prop yojson_of_string v_provisioned_model_name
         in
         ("provisioned_model_name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_model_units in
         ("model_units", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_model_arn in
         ("model_arn", arg) :: bnds
       in
       let bnds =
         match v_commitment_duration with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "commitment_duration", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : aws_bedrock_provisioned_model_throughput ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_bedrock_provisioned_model_throughput

[@@@deriving.end]

let timeouts ?create () : timeouts = { create }

let aws_bedrock_provisioned_model_throughput ?commitment_duration
    ?tags ?timeouts ~model_arn ~model_units ~provisioned_model_name
    () : aws_bedrock_provisioned_model_throughput =
  {
    commitment_duration;
    model_arn;
    model_units;
    provisioned_model_name;
    tags;
    timeouts;
  }

type t = {
  commitment_duration : string prop;
  id : string prop;
  model_arn : string prop;
  model_units : float prop;
  provisioned_model_arn : string prop;
  provisioned_model_name : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

let make ?commitment_duration ?tags ?timeouts ~model_arn ~model_units
    ~provisioned_model_name __id =
  let __type = "aws_bedrock_provisioned_model_throughput" in
  let __attrs =
    ({
       commitment_duration =
         Prop.computed __type __id "commitment_duration";
       id = Prop.computed __type __id "id";
       model_arn = Prop.computed __type __id "model_arn";
       model_units = Prop.computed __type __id "model_units";
       provisioned_model_arn =
         Prop.computed __type __id "provisioned_model_arn";
       provisioned_model_name =
         Prop.computed __type __id "provisioned_model_name";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_bedrock_provisioned_model_throughput
        (aws_bedrock_provisioned_model_throughput
           ?commitment_duration ?tags ?timeouts ~model_arn
           ~model_units ~provisioned_model_name ());
    attrs = __attrs;
  }

let register ?tf_module ?commitment_duration ?tags ?timeouts
    ~model_arn ~model_units ~provisioned_model_name __id =
  let (r : _ Tf_core.resource) =
    make ?commitment_duration ?tags ?timeouts ~model_arn ~model_units
      ~provisioned_model_name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
