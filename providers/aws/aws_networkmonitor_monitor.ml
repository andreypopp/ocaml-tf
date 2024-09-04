(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_networkmonitor_monitor = {
  aggregation_period : float prop option; [@option]
  monitor_name : string prop;
  tags : string prop Tf_core.assoc option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_networkmonitor_monitor) -> ()

let yojson_of_aws_networkmonitor_monitor =
  (function
   | {
       aggregation_period = v_aggregation_period;
       monitor_name = v_monitor_name;
       tags = v_tags;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
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
         let arg = yojson_of_prop yojson_of_string v_monitor_name in
         ("monitor_name", arg) :: bnds
       in
       let bnds =
         match v_aggregation_period with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "aggregation_period", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : aws_networkmonitor_monitor -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_networkmonitor_monitor

[@@@deriving.end]

let aws_networkmonitor_monitor ?aggregation_period ?tags
    ~monitor_name () : aws_networkmonitor_monitor =
  { aggregation_period; monitor_name; tags }

type t = {
  tf_name : string;
  aggregation_period : float prop;
  arn : string prop;
  id : string prop;
  monitor_name : string prop;
  tags : string Tf_core.assoc prop;
  tags_all : string Tf_core.assoc prop;
}

let make ?aggregation_period ?tags ~monitor_name __id =
  let __type = "aws_networkmonitor_monitor" in
  let __attrs =
    ({
       tf_name = __id;
       aggregation_period =
         Prop.computed __type __id "aggregation_period";
       arn = Prop.computed __type __id "arn";
       id = Prop.computed __type __id "id";
       monitor_name = Prop.computed __type __id "monitor_name";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_networkmonitor_monitor
        (aws_networkmonitor_monitor ?aggregation_period ?tags
           ~monitor_name ());
    attrs = __attrs;
  }

let register ?tf_module ?aggregation_period ?tags ~monitor_name __id
    =
  let (r : _ Tf_core.resource) =
    make ?aggregation_period ?tags ~monitor_name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
