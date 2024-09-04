(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_datapipeline_pipeline = {
  id : string prop option; [@option]
  pipeline_id : string prop;
  tags : string prop Tf_core.assoc option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_datapipeline_pipeline) -> ()

let yojson_of_aws_datapipeline_pipeline =
  (function
   | { id = v_id; pipeline_id = v_pipeline_id; tags = v_tags } ->
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
         let arg = yojson_of_prop yojson_of_string v_pipeline_id in
         ("pipeline_id", arg) :: bnds
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
    : aws_datapipeline_pipeline -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_datapipeline_pipeline

[@@@deriving.end]

let aws_datapipeline_pipeline ?id ?tags ~pipeline_id () :
    aws_datapipeline_pipeline =
  { id; pipeline_id; tags }

type t = {
  tf_name : string;
  description : string prop;
  id : string prop;
  name : string prop;
  pipeline_id : string prop;
  tags : string Tf_core.assoc prop;
}

let make ?id ?tags ~pipeline_id __id =
  let __type = "aws_datapipeline_pipeline" in
  let __attrs =
    ({
       tf_name = __id;
       description = Prop.computed __type __id "description";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       pipeline_id = Prop.computed __type __id "pipeline_id";
       tags = Prop.computed __type __id "tags";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_datapipeline_pipeline
        (aws_datapipeline_pipeline ?id ?tags ~pipeline_id ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?tags ~pipeline_id __id =
  let (r : _ Tf_core.resource) = make ?id ?tags ~pipeline_id __id in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
