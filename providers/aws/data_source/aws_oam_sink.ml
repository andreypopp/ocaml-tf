(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_oam_sink = {
  id : string prop option; [@option]
  sink_identifier : string prop;
  tags : string prop Tf_core.assoc option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_oam_sink) -> ()

let yojson_of_aws_oam_sink =
  (function
   | {
       id = v_id;
       sink_identifier = v_sink_identifier;
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
         let arg =
           yojson_of_prop yojson_of_string v_sink_identifier
         in
         ("sink_identifier", arg) :: bnds
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
    : aws_oam_sink -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_oam_sink

[@@@deriving.end]

let aws_oam_sink ?id ?tags ~sink_identifier () : aws_oam_sink =
  { id; sink_identifier; tags }

type t = {
  tf_name : string;
  arn : string prop;
  id : string prop;
  name : string prop;
  sink_id : string prop;
  sink_identifier : string prop;
  tags : string Tf_core.assoc prop;
}

let make ?id ?tags ~sink_identifier __id =
  let __type = "aws_oam_sink" in
  let __attrs =
    ({
       tf_name = __id;
       arn = Prop.computed __type __id "arn";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       sink_id = Prop.computed __type __id "sink_id";
       sink_identifier = Prop.computed __type __id "sink_identifier";
       tags = Prop.computed __type __id "tags";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_oam_sink
        (aws_oam_sink ?id ?tags ~sink_identifier ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?tags ~sink_identifier __id =
  let (r : _ Tf_core.resource) =
    make ?id ?tags ~sink_identifier __id
  in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
