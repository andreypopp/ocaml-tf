(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_cloudwatch_event_bus_policy = {
  event_bus_name : string prop option; [@option]
  id : string prop option; [@option]
  policy : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_cloudwatch_event_bus_policy) -> ()

let yojson_of_aws_cloudwatch_event_bus_policy =
  (function
   | {
       event_bus_name = v_event_bus_name;
       id = v_id;
       policy = v_policy;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_policy in
         ("policy", arg) :: bnds
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
         match v_event_bus_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "event_bus_name", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : aws_cloudwatch_event_bus_policy ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_cloudwatch_event_bus_policy

[@@@deriving.end]

let aws_cloudwatch_event_bus_policy ?event_bus_name ?id ~policy () :
    aws_cloudwatch_event_bus_policy =
  { event_bus_name; id; policy }

type t = {
  tf_name : string;
  event_bus_name : string prop;
  id : string prop;
  policy : string prop;
}

let make ?event_bus_name ?id ~policy __id =
  let __type = "aws_cloudwatch_event_bus_policy" in
  let __attrs =
    ({
       tf_name = __id;
       event_bus_name = Prop.computed __type __id "event_bus_name";
       id = Prop.computed __type __id "id";
       policy = Prop.computed __type __id "policy";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_cloudwatch_event_bus_policy
        (aws_cloudwatch_event_bus_policy ?event_bus_name ?id ~policy
           ());
    attrs = __attrs;
  }

let register ?tf_module ?event_bus_name ?id ~policy __id =
  let (r : _ Tf_core.resource) =
    make ?event_bus_name ?id ~policy __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
