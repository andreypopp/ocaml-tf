(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  create : string prop option; [@option]
  delete : string prop option; [@option]
  update : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : timeouts) -> ()

let yojson_of_timeouts =
  (function
   | { create = v_create; delete = v_delete; update = v_update } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_update with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "update", arg in
             bnd :: bnds
       in
       let bnds =
         match v_delete with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "delete", arg in
             bnd :: bnds
       in
       let bnds =
         match v_create with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "create", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : timeouts -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_timeouts

[@@@deriving.end]

type aws_athena_prepared_statement = {
  description : string prop option; [@option]
  id : string prop option; [@option]
  name : string prop;
  query_statement : string prop;
  workgroup : string prop;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_athena_prepared_statement) -> ()

let yojson_of_aws_athena_prepared_statement =
  (function
   | {
       description = v_description;
       id = v_id;
       name = v_name;
       query_statement = v_query_statement;
       workgroup = v_workgroup;
       timeouts = v_timeouts;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_option yojson_of_timeouts v_timeouts in
         ("timeouts", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_workgroup in
         ("workgroup", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_query_statement
         in
         ("query_statement", arg) :: bnds
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
       `Assoc bnds
    : aws_athena_prepared_statement ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_athena_prepared_statement

[@@@deriving.end]

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let aws_athena_prepared_statement ?description ?id ?timeouts ~name
    ~query_statement ~workgroup () : aws_athena_prepared_statement =
  { description; id; name; query_statement; workgroup; timeouts }

type t = {
  tf_name : string;
  description : string prop;
  id : string prop;
  name : string prop;
  query_statement : string prop;
  workgroup : string prop;
}

let make ?description ?id ?timeouts ~name ~query_statement ~workgroup
    __id =
  let __type = "aws_athena_prepared_statement" in
  let __attrs =
    ({
       tf_name = __id;
       description = Prop.computed __type __id "description";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       query_statement = Prop.computed __type __id "query_statement";
       workgroup = Prop.computed __type __id "workgroup";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_athena_prepared_statement
        (aws_athena_prepared_statement ?description ?id ?timeouts
           ~name ~query_statement ~workgroup ());
    attrs = __attrs;
  }

let register ?tf_module ?description ?id ?timeouts ~name
    ~query_statement ~workgroup __id =
  let (r : _ Tf_core.resource) =
    make ?description ?id ?timeouts ~name ~query_statement ~workgroup
      __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
