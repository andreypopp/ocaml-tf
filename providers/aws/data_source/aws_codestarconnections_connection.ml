(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_codestarconnections_connection = {
  arn : string prop option; [@option]
  id : string prop option; [@option]
  name : string prop option; [@option]
  tags : string prop Tf_core.assoc option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_codestarconnections_connection) -> ()

let yojson_of_aws_codestarconnections_connection =
  (function
   | { arn = v_arn; id = v_id; name = v_name; tags = v_tags } ->
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
         match v_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "name", arg in
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
         match v_arn with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "arn", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : aws_codestarconnections_connection ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_codestarconnections_connection

[@@@deriving.end]

let aws_codestarconnections_connection ?arn ?id ?name ?tags () :
    aws_codestarconnections_connection =
  { arn; id; name; tags }

type t = {
  tf_name : string;
  arn : string prop;
  connection_status : string prop;
  host_arn : string prop;
  id : string prop;
  name : string prop;
  provider_type : string prop;
  tags : string Tf_core.assoc prop;
}

let make ?arn ?id ?name ?tags __id =
  let __type = "aws_codestarconnections_connection" in
  let __attrs =
    ({
       tf_name = __id;
       arn = Prop.computed __type __id "arn";
       connection_status =
         Prop.computed __type __id "connection_status";
       host_arn = Prop.computed __type __id "host_arn";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       provider_type = Prop.computed __type __id "provider_type";
       tags = Prop.computed __type __id "tags";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_codestarconnections_connection
        (aws_codestarconnections_connection ?arn ?id ?name ?tags ());
    attrs = __attrs;
  }

let register ?tf_module ?arn ?id ?name ?tags __id =
  let (r : _ Tf_core.resource) = make ?arn ?id ?name ?tags __id in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
