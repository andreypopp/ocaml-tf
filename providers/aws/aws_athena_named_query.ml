(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_athena_named_query = {
  database : string prop;
  description : string prop option; [@option]
  id : string prop option; [@option]
  name : string prop;
  query : string prop;
  workgroup : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_athena_named_query) -> ()

let yojson_of_aws_athena_named_query =
  (function
   | {
       database = v_database;
       description = v_description;
       id = v_id;
       name = v_name;
       query = v_query;
       workgroup = v_workgroup;
     } ->
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
         let arg = yojson_of_prop yojson_of_string v_query in
         ("query", arg) :: bnds
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
         match v_description with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "description", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_database in
         ("database", arg) :: bnds
       in
       `Assoc bnds
    : aws_athena_named_query -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_athena_named_query

[@@@deriving.end]

let aws_athena_named_query ?description ?id ?workgroup ~database
    ~name ~query () : aws_athena_named_query =
  { database; description; id; name; query; workgroup }

type t = {
  tf_name : string;
  database : string prop;
  description : string prop;
  id : string prop;
  name : string prop;
  query : string prop;
  workgroup : string prop;
}

let make ?description ?id ?workgroup ~database ~name ~query __id =
  let __type = "aws_athena_named_query" in
  let __attrs =
    ({
       tf_name = __id;
       database = Prop.computed __type __id "database";
       description = Prop.computed __type __id "description";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       query = Prop.computed __type __id "query";
       workgroup = Prop.computed __type __id "workgroup";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_athena_named_query
        (aws_athena_named_query ?description ?id ?workgroup ~database
           ~name ~query ());
    attrs = __attrs;
  }

let register ?tf_module ?description ?id ?workgroup ~database ~name
    ~query __id =
  let (r : _ Tf_core.resource) =
    make ?description ?id ?workgroup ~database ~name ~query __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
