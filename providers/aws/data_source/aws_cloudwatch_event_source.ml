(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_cloudwatch_event_source = {
  id : string prop option; [@option]
  name_prefix : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_cloudwatch_event_source) -> ()

let yojson_of_aws_cloudwatch_event_source =
  (function
   | { id = v_id; name_prefix = v_name_prefix } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_name_prefix with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "name_prefix", arg in
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
    : aws_cloudwatch_event_source ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_cloudwatch_event_source

[@@@deriving.end]

let aws_cloudwatch_event_source ?id ?name_prefix () :
    aws_cloudwatch_event_source =
  { id; name_prefix }

type t = {
  tf_name : string;
  arn : string prop;
  created_by : string prop;
  id : string prop;
  name : string prop;
  name_prefix : string prop;
  state : string prop;
}

let make ?id ?name_prefix __id =
  let __type = "aws_cloudwatch_event_source" in
  let __attrs =
    ({
       tf_name = __id;
       arn = Prop.computed __type __id "arn";
       created_by = Prop.computed __type __id "created_by";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       name_prefix = Prop.computed __type __id "name_prefix";
       state = Prop.computed __type __id "state";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_cloudwatch_event_source
        (aws_cloudwatch_event_source ?id ?name_prefix ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?name_prefix __id =
  let (r : _ Tf_core.resource) = make ?id ?name_prefix __id in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
