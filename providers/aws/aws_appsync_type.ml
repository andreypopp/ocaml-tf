(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_appsync_type = {
  api_id : string prop;
  definition : string prop;
  format : string prop;
  id : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_appsync_type) -> ()

let yojson_of_aws_appsync_type =
  (function
   | {
       api_id = v_api_id;
       definition = v_definition;
       format = v_format;
       id = v_id;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
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
         let arg = yojson_of_prop yojson_of_string v_format in
         ("format", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_definition in
         ("definition", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_api_id in
         ("api_id", arg) :: bnds
       in
       `Assoc bnds
    : aws_appsync_type -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_appsync_type

[@@@deriving.end]

let aws_appsync_type ?id ~api_id ~definition ~format () :
    aws_appsync_type =
  { api_id; definition; format; id }

type t = {
  tf_name : string;
  api_id : string prop;
  arn : string prop;
  definition : string prop;
  description : string prop;
  format : string prop;
  id : string prop;
  name : string prop;
}

let make ?id ~api_id ~definition ~format __id =
  let __type = "aws_appsync_type" in
  let __attrs =
    ({
       tf_name = __id;
       api_id = Prop.computed __type __id "api_id";
       arn = Prop.computed __type __id "arn";
       definition = Prop.computed __type __id "definition";
       description = Prop.computed __type __id "description";
       format = Prop.computed __type __id "format";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_appsync_type
        (aws_appsync_type ?id ~api_id ~definition ~format ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~api_id ~definition ~format __id =
  let (r : _ Tf_core.resource) =
    make ?id ~api_id ~definition ~format __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
