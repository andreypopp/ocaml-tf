(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_devicefarm_network_profile = {
  description : string prop option; [@option]
  downlink_bandwidth_bits : float prop option; [@option]
  downlink_delay_ms : float prop option; [@option]
  downlink_jitter_ms : float prop option; [@option]
  downlink_loss_percent : float prop option; [@option]
  id : string prop option; [@option]
  name : string prop;
  project_arn : string prop;
  tags : (string * string prop) list option; [@option]
  tags_all : (string * string prop) list option; [@option]
  type_ : string prop option; [@option] [@key "type"]
  uplink_bandwidth_bits : float prop option; [@option]
  uplink_delay_ms : float prop option; [@option]
  uplink_jitter_ms : float prop option; [@option]
  uplink_loss_percent : float prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_devicefarm_network_profile) -> ()

let yojson_of_aws_devicefarm_network_profile =
  (function
   | {
       description = v_description;
       downlink_bandwidth_bits = v_downlink_bandwidth_bits;
       downlink_delay_ms = v_downlink_delay_ms;
       downlink_jitter_ms = v_downlink_jitter_ms;
       downlink_loss_percent = v_downlink_loss_percent;
       id = v_id;
       name = v_name;
       project_arn = v_project_arn;
       tags = v_tags;
       tags_all = v_tags_all;
       type_ = v_type_;
       uplink_bandwidth_bits = v_uplink_bandwidth_bits;
       uplink_delay_ms = v_uplink_delay_ms;
       uplink_jitter_ms = v_uplink_jitter_ms;
       uplink_loss_percent = v_uplink_loss_percent;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_uplink_loss_percent with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "uplink_loss_percent", arg in
             bnd :: bnds
       in
       let bnds =
         match v_uplink_jitter_ms with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "uplink_jitter_ms", arg in
             bnd :: bnds
       in
       let bnds =
         match v_uplink_delay_ms with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "uplink_delay_ms", arg in
             bnd :: bnds
       in
       let bnds =
         match v_uplink_bandwidth_bits with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "uplink_bandwidth_bits", arg in
             bnd :: bnds
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
         let arg = yojson_of_prop yojson_of_string v_project_arn in
         ("project_arn", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
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
         match v_downlink_loss_percent with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "downlink_loss_percent", arg in
             bnd :: bnds
       in
       let bnds =
         match v_downlink_jitter_ms with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "downlink_jitter_ms", arg in
             bnd :: bnds
       in
       let bnds =
         match v_downlink_delay_ms with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "downlink_delay_ms", arg in
             bnd :: bnds
       in
       let bnds =
         match v_downlink_bandwidth_bits with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "downlink_bandwidth_bits", arg in
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
    : aws_devicefarm_network_profile ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_devicefarm_network_profile

[@@@deriving.end]

let aws_devicefarm_network_profile ?description
    ?downlink_bandwidth_bits ?downlink_delay_ms ?downlink_jitter_ms
    ?downlink_loss_percent ?id ?tags ?tags_all ?type_
    ?uplink_bandwidth_bits ?uplink_delay_ms ?uplink_jitter_ms
    ?uplink_loss_percent ~name ~project_arn () :
    aws_devicefarm_network_profile =
  {
    description;
    downlink_bandwidth_bits;
    downlink_delay_ms;
    downlink_jitter_ms;
    downlink_loss_percent;
    id;
    name;
    project_arn;
    tags;
    tags_all;
    type_;
    uplink_bandwidth_bits;
    uplink_delay_ms;
    uplink_jitter_ms;
    uplink_loss_percent;
  }

type t = {
  arn : string prop;
  description : string prop;
  downlink_bandwidth_bits : float prop;
  downlink_delay_ms : float prop;
  downlink_jitter_ms : float prop;
  downlink_loss_percent : float prop;
  id : string prop;
  name : string prop;
  project_arn : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  type_ : string prop;
  uplink_bandwidth_bits : float prop;
  uplink_delay_ms : float prop;
  uplink_jitter_ms : float prop;
  uplink_loss_percent : float prop;
}

let make ?description ?downlink_bandwidth_bits ?downlink_delay_ms
    ?downlink_jitter_ms ?downlink_loss_percent ?id ?tags ?tags_all
    ?type_ ?uplink_bandwidth_bits ?uplink_delay_ms ?uplink_jitter_ms
    ?uplink_loss_percent ~name ~project_arn __id =
  let __type = "aws_devicefarm_network_profile" in
  let __attrs =
    ({
       arn = Prop.computed __type __id "arn";
       description = Prop.computed __type __id "description";
       downlink_bandwidth_bits =
         Prop.computed __type __id "downlink_bandwidth_bits";
       downlink_delay_ms =
         Prop.computed __type __id "downlink_delay_ms";
       downlink_jitter_ms =
         Prop.computed __type __id "downlink_jitter_ms";
       downlink_loss_percent =
         Prop.computed __type __id "downlink_loss_percent";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       project_arn = Prop.computed __type __id "project_arn";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
       type_ = Prop.computed __type __id "type";
       uplink_bandwidth_bits =
         Prop.computed __type __id "uplink_bandwidth_bits";
       uplink_delay_ms = Prop.computed __type __id "uplink_delay_ms";
       uplink_jitter_ms =
         Prop.computed __type __id "uplink_jitter_ms";
       uplink_loss_percent =
         Prop.computed __type __id "uplink_loss_percent";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_devicefarm_network_profile
        (aws_devicefarm_network_profile ?description
           ?downlink_bandwidth_bits ?downlink_delay_ms
           ?downlink_jitter_ms ?downlink_loss_percent ?id ?tags
           ?tags_all ?type_ ?uplink_bandwidth_bits ?uplink_delay_ms
           ?uplink_jitter_ms ?uplink_loss_percent ~name ~project_arn
           ());
    attrs = __attrs;
  }

let register ?tf_module ?description ?downlink_bandwidth_bits
    ?downlink_delay_ms ?downlink_jitter_ms ?downlink_loss_percent ?id
    ?tags ?tags_all ?type_ ?uplink_bandwidth_bits ?uplink_delay_ms
    ?uplink_jitter_ms ?uplink_loss_percent ~name ~project_arn __id =
  let (r : _ Tf_core.resource) =
    make ?description ?downlink_bandwidth_bits ?downlink_delay_ms
      ?downlink_jitter_ms ?downlink_loss_percent ?id ?tags ?tags_all
      ?type_ ?uplink_bandwidth_bits ?uplink_delay_ms
      ?uplink_jitter_ms ?uplink_loss_percent ~name ~project_arn __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
