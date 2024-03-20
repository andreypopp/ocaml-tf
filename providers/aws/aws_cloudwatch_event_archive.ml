(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_cloudwatch_event_archive = {
  description : string prop option; [@option]
  event_pattern : string prop option; [@option]
  event_source_arn : string prop;
  id : string prop option; [@option]
  name : string prop;
  retention_days : float prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_cloudwatch_event_archive) -> ()

let yojson_of_aws_cloudwatch_event_archive =
  (function
   | {
       description = v_description;
       event_pattern = v_event_pattern;
       event_source_arn = v_event_source_arn;
       id = v_id;
       name = v_name;
       retention_days = v_retention_days;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_retention_days with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "retention_days", arg in
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
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_event_source_arn
         in
         ("event_source_arn", arg) :: bnds
       in
       let bnds =
         match v_event_pattern with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "event_pattern", arg in
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
    : aws_cloudwatch_event_archive ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_cloudwatch_event_archive

[@@@deriving.end]

let aws_cloudwatch_event_archive ?description ?event_pattern ?id
    ?retention_days ~event_source_arn ~name () :
    aws_cloudwatch_event_archive =
  {
    description;
    event_pattern;
    event_source_arn;
    id;
    name;
    retention_days;
  }

type t = {
  arn : string prop;
  description : string prop;
  event_pattern : string prop;
  event_source_arn : string prop;
  id : string prop;
  name : string prop;
  retention_days : float prop;
}

let make ?description ?event_pattern ?id ?retention_days
    ~event_source_arn ~name __id =
  let __type = "aws_cloudwatch_event_archive" in
  let __attrs =
    ({
       arn = Prop.computed __type __id "arn";
       description = Prop.computed __type __id "description";
       event_pattern = Prop.computed __type __id "event_pattern";
       event_source_arn =
         Prop.computed __type __id "event_source_arn";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       retention_days = Prop.computed __type __id "retention_days";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_cloudwatch_event_archive
        (aws_cloudwatch_event_archive ?description ?event_pattern ?id
           ?retention_days ~event_source_arn ~name ());
    attrs = __attrs;
  }

let register ?tf_module ?description ?event_pattern ?id
    ?retention_days ~event_source_arn ~name __id =
  let (r : _ Tf_core.resource) =
    make ?description ?event_pattern ?id ?retention_days
      ~event_source_arn ~name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
