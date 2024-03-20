(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_cloudwatch_query_definition = {
  id : string prop option; [@option]
  log_group_names : string prop list option; [@option]
  name : string prop;
  query_string : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_cloudwatch_query_definition) -> ()

let yojson_of_aws_cloudwatch_query_definition =
  (function
   | {
       id = v_id;
       log_group_names = v_log_group_names;
       name = v_name;
       query_string = v_query_string;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_query_string in
         ("query_string", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         match v_log_group_names with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "log_group_names", arg in
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
    : aws_cloudwatch_query_definition ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_cloudwatch_query_definition

[@@@deriving.end]

let aws_cloudwatch_query_definition ?id ?log_group_names ~name
    ~query_string () : aws_cloudwatch_query_definition =
  { id; log_group_names; name; query_string }

type t = {
  id : string prop;
  log_group_names : string list prop;
  name : string prop;
  query_definition_id : string prop;
  query_string : string prop;
}

let make ?id ?log_group_names ~name ~query_string __id =
  let __type = "aws_cloudwatch_query_definition" in
  let __attrs =
    ({
       id = Prop.computed __type __id "id";
       log_group_names = Prop.computed __type __id "log_group_names";
       name = Prop.computed __type __id "name";
       query_definition_id =
         Prop.computed __type __id "query_definition_id";
       query_string = Prop.computed __type __id "query_string";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_cloudwatch_query_definition
        (aws_cloudwatch_query_definition ?id ?log_group_names ~name
           ~query_string ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?log_group_names ~name ~query_string __id
    =
  let (r : _ Tf_core.resource) =
    make ?id ?log_group_names ~name ~query_string __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
