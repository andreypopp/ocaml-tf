(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

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

type aws_ivs_channel = {
  authorized : bool prop option; [@option]
  id : string prop option; [@option]
  latency_mode : string prop option; [@option]
  name : string prop option; [@option]
  recording_configuration_arn : string prop option; [@option]
  tags : (string * string prop) list option; [@option]
  tags_all : (string * string prop) list option; [@option]
  type_ : string prop option; [@option] [@key "type"]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_ivs_channel) -> ()

let yojson_of_aws_ivs_channel =
  (function
   | {
       authorized = v_authorized;
       id = v_id;
       latency_mode = v_latency_mode;
       name = v_name;
       recording_configuration_arn = v_recording_configuration_arn;
       tags = v_tags;
       tags_all = v_tags_all;
       type_ = v_type_;
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
         match v_type_ with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "type", arg in
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
         match v_recording_configuration_arn with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "recording_configuration_arn", arg in
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
         match v_latency_mode with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "latency_mode", arg in
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
         match v_authorized with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "authorized", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : aws_ivs_channel -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_ivs_channel

[@@@deriving.end]

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let aws_ivs_channel ?authorized ?id ?latency_mode ?name
    ?recording_configuration_arn ?tags ?tags_all ?type_ ?timeouts ()
    : aws_ivs_channel =
  {
    authorized;
    id;
    latency_mode;
    name;
    recording_configuration_arn;
    tags;
    tags_all;
    type_;
    timeouts;
  }

type t = {
  tf_name : string;
  arn : string prop;
  authorized : bool prop;
  id : string prop;
  ingest_endpoint : string prop;
  latency_mode : string prop;
  name : string prop;
  playback_url : string prop;
  recording_configuration_arn : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  type_ : string prop;
}

let make ?authorized ?id ?latency_mode ?name
    ?recording_configuration_arn ?tags ?tags_all ?type_ ?timeouts
    __id =
  let __type = "aws_ivs_channel" in
  let __attrs =
    ({
       tf_name = __id;
       arn = Prop.computed __type __id "arn";
       authorized = Prop.computed __type __id "authorized";
       id = Prop.computed __type __id "id";
       ingest_endpoint = Prop.computed __type __id "ingest_endpoint";
       latency_mode = Prop.computed __type __id "latency_mode";
       name = Prop.computed __type __id "name";
       playback_url = Prop.computed __type __id "playback_url";
       recording_configuration_arn =
         Prop.computed __type __id "recording_configuration_arn";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
       type_ = Prop.computed __type __id "type";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_ivs_channel
        (aws_ivs_channel ?authorized ?id ?latency_mode ?name
           ?recording_configuration_arn ?tags ?tags_all ?type_
           ?timeouts ());
    attrs = __attrs;
  }

let register ?tf_module ?authorized ?id ?latency_mode ?name
    ?recording_configuration_arn ?tags ?tags_all ?type_ ?timeouts
    __id =
  let (r : _ Tf_core.resource) =
    make ?authorized ?id ?latency_mode ?name
      ?recording_configuration_arn ?tags ?tags_all ?type_ ?timeouts
      __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
