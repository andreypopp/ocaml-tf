(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_ce_anomaly_monitor = {
  id : string prop option; [@option]
  monitor_dimension : string prop option; [@option]
  monitor_specification : string prop option; [@option]
  monitor_type : string prop;
  name : string prop;
  tags : string prop Tf_core.assoc option; [@option]
  tags_all : string prop Tf_core.assoc option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_ce_anomaly_monitor) -> ()

let yojson_of_aws_ce_anomaly_monitor =
  (function
   | {
       id = v_id;
       monitor_dimension = v_monitor_dimension;
       monitor_specification = v_monitor_specification;
       monitor_type = v_monitor_type;
       name = v_name;
       tags = v_tags;
       tags_all = v_tags_all;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_tags_all with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               Tf_core.yojson_of_assoc
                 (yojson_of_prop yojson_of_string)
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
               Tf_core.yojson_of_assoc
                 (yojson_of_prop yojson_of_string)
                 v
             in
             let bnd = "tags", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_monitor_type in
         ("monitor_type", arg) :: bnds
       in
       let bnds =
         match v_monitor_specification with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "monitor_specification", arg in
             bnd :: bnds
       in
       let bnds =
         match v_monitor_dimension with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "monitor_dimension", arg in
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
    : aws_ce_anomaly_monitor -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_ce_anomaly_monitor

[@@@deriving.end]

let aws_ce_anomaly_monitor ?id ?monitor_dimension
    ?monitor_specification ?tags ?tags_all ~monitor_type ~name () :
    aws_ce_anomaly_monitor =
  {
    id;
    monitor_dimension;
    monitor_specification;
    monitor_type;
    name;
    tags;
    tags_all;
  }

type t = {
  tf_name : string;
  arn : string prop;
  id : string prop;
  monitor_dimension : string prop;
  monitor_specification : string prop;
  monitor_type : string prop;
  name : string prop;
  tags : string Tf_core.assoc prop;
  tags_all : string Tf_core.assoc prop;
}

let make ?id ?monitor_dimension ?monitor_specification ?tags
    ?tags_all ~monitor_type ~name __id =
  let __type = "aws_ce_anomaly_monitor" in
  let __attrs =
    ({
       tf_name = __id;
       arn = Prop.computed __type __id "arn";
       id = Prop.computed __type __id "id";
       monitor_dimension =
         Prop.computed __type __id "monitor_dimension";
       monitor_specification =
         Prop.computed __type __id "monitor_specification";
       monitor_type = Prop.computed __type __id "monitor_type";
       name = Prop.computed __type __id "name";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_ce_anomaly_monitor
        (aws_ce_anomaly_monitor ?id ?monitor_dimension
           ?monitor_specification ?tags ?tags_all ~monitor_type ~name
           ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?monitor_dimension ?monitor_specification
    ?tags ?tags_all ~monitor_type ~name __id =
  let (r : _ Tf_core.resource) =
    make ?id ?monitor_dimension ?monitor_specification ?tags
      ?tags_all ~monitor_type ~name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
