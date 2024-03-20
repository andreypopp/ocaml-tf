(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_cloudwatch_log_stream = {
  id : string prop option; [@option]
  log_group_name : string prop;
  name : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_cloudwatch_log_stream) -> ()

let yojson_of_aws_cloudwatch_log_stream =
  (function
   | { id = v_id; log_group_name = v_log_group_name; name = v_name }
     ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_log_group_name
         in
         ("log_group_name", arg) :: bnds
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
    : aws_cloudwatch_log_stream -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_cloudwatch_log_stream

[@@@deriving.end]

let aws_cloudwatch_log_stream ?id ~log_group_name ~name () :
    aws_cloudwatch_log_stream =
  { id; log_group_name; name }

type t = {
  arn : string prop;
  id : string prop;
  log_group_name : string prop;
  name : string prop;
}

let make ?id ~log_group_name ~name __id =
  let __type = "aws_cloudwatch_log_stream" in
  let __attrs =
    ({
       arn = Prop.computed __type __id "arn";
       id = Prop.computed __type __id "id";
       log_group_name = Prop.computed __type __id "log_group_name";
       name = Prop.computed __type __id "name";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_cloudwatch_log_stream
        (aws_cloudwatch_log_stream ?id ~log_group_name ~name ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~log_group_name ~name __id =
  let (r : _ Tf_core.resource) =
    make ?id ~log_group_name ~name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
