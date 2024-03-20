(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_athena_named_query = {
  id : string prop option; [@option]
  name : string prop;
  workgroup : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_athena_named_query) -> ()

let yojson_of_aws_athena_named_query =
  (function
   | { id = v_id; name = v_name; workgroup = v_workgroup } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_workgroup with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "workgroup", arg in
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
    : aws_athena_named_query -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_athena_named_query

[@@@deriving.end]

let aws_athena_named_query ?id ?workgroup ~name () :
    aws_athena_named_query =
  { id; name; workgroup }

type t = {
  database : string prop;
  description : string prop;
  id : string prop;
  name : string prop;
  querystring : string prop;
  workgroup : string prop;
}

let make ?id ?workgroup ~name __id =
  let __type = "aws_athena_named_query" in
  let __attrs =
    ({
       database = Prop.computed __type __id "database";
       description = Prop.computed __type __id "description";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       querystring = Prop.computed __type __id "querystring";
       workgroup = Prop.computed __type __id "workgroup";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_athena_named_query
        (aws_athena_named_query ?id ?workgroup ~name ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?workgroup ~name __id =
  let (r : _ Tf_core.resource) = make ?id ?workgroup ~name __id in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
