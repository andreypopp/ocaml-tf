(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type event_filter = { source : string prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : event_filter) -> ()

let yojson_of_event_filter =
  (function
   | { source = v_source } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_source in
         ("source", arg) :: bnds
       in
       `Assoc bnds
    : event_filter -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_event_filter

[@@@deriving.end]

type aws_appintegrations_event_integration = {
  id : string prop option; [@option]
  name : string prop;
  tags : string prop Tf_core.assoc option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_appintegrations_event_integration) -> ()

let yojson_of_aws_appintegrations_event_integration =
  (function
   | { id = v_id; name = v_name; tags = v_tags } ->
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
       `Assoc bnds
    : aws_appintegrations_event_integration ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_appintegrations_event_integration

[@@@deriving.end]

let aws_appintegrations_event_integration ?id ?tags ~name () :
    aws_appintegrations_event_integration =
  { id; name; tags }

type t = {
  tf_name : string;
  arn : string prop;
  description : string prop;
  event_filter : event_filter list prop;
  eventbridge_bus : string prop;
  id : string prop;
  name : string prop;
  tags : string Tf_core.assoc prop;
}

let make ?id ?tags ~name __id =
  let __type = "aws_appintegrations_event_integration" in
  let __attrs =
    ({
       tf_name = __id;
       arn = Prop.computed __type __id "arn";
       description = Prop.computed __type __id "description";
       event_filter = Prop.computed __type __id "event_filter";
       eventbridge_bus = Prop.computed __type __id "eventbridge_bus";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       tags = Prop.computed __type __id "tags";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_appintegrations_event_integration
        (aws_appintegrations_event_integration ?id ?tags ~name ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?tags ~name __id =
  let (r : _ Tf_core.resource) = make ?id ?tags ~name __id in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
