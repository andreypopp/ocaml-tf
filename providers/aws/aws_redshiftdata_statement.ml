(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type parameters = { name : string prop; value : string prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : parameters) -> ()

let yojson_of_parameters =
  (function
   | { name = v_name; value = v_value } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_value in
         ("value", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       `Assoc bnds
    : parameters -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_parameters

[@@@deriving.end]

type timeouts = { create : string prop option [@option] }
[@@deriving_inline yojson_of]

let _ = fun (_ : timeouts) -> ()

let yojson_of_timeouts =
  (function
   | { create = v_create } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
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

type aws_redshiftdata_statement = {
  cluster_identifier : string prop option; [@option]
  database : string prop;
  db_user : string prop option; [@option]
  id : string prop option; [@option]
  secret_arn : string prop option; [@option]
  sql : string prop;
  statement_name : string prop option; [@option]
  with_event : bool prop option; [@option]
  workgroup_name : string prop option; [@option]
  parameters : parameters list;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_redshiftdata_statement) -> ()

let yojson_of_aws_redshiftdata_statement =
  (function
   | {
       cluster_identifier = v_cluster_identifier;
       database = v_database;
       db_user = v_db_user;
       id = v_id;
       secret_arn = v_secret_arn;
       sql = v_sql;
       statement_name = v_statement_name;
       with_event = v_with_event;
       workgroup_name = v_workgroup_name;
       parameters = v_parameters;
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
         let arg =
           yojson_of_list yojson_of_parameters v_parameters
         in
         ("parameters", arg) :: bnds
       in
       let bnds =
         match v_workgroup_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "workgroup_name", arg in
             bnd :: bnds
       in
       let bnds =
         match v_with_event with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "with_event", arg in
             bnd :: bnds
       in
       let bnds =
         match v_statement_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "statement_name", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_sql in
         ("sql", arg) :: bnds
       in
       let bnds =
         match v_secret_arn with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "secret_arn", arg in
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
         match v_db_user with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "db_user", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_database in
         ("database", arg) :: bnds
       in
       let bnds =
         match v_cluster_identifier with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "cluster_identifier", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : aws_redshiftdata_statement -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_redshiftdata_statement

[@@@deriving.end]

let parameters ~name ~value () : parameters = { name; value }
let timeouts ?create () : timeouts = { create }

let aws_redshiftdata_statement ?cluster_identifier ?db_user ?id
    ?secret_arn ?statement_name ?with_event ?workgroup_name
    ?(parameters = []) ?timeouts ~database ~sql () :
    aws_redshiftdata_statement =
  {
    cluster_identifier;
    database;
    db_user;
    id;
    secret_arn;
    sql;
    statement_name;
    with_event;
    workgroup_name;
    parameters;
    timeouts;
  }

type t = {
  cluster_identifier : string prop;
  database : string prop;
  db_user : string prop;
  id : string prop;
  secret_arn : string prop;
  sql : string prop;
  statement_name : string prop;
  with_event : bool prop;
  workgroup_name : string prop;
}

let make ?cluster_identifier ?db_user ?id ?secret_arn ?statement_name
    ?with_event ?workgroup_name ?(parameters = []) ?timeouts
    ~database ~sql __id =
  let __type = "aws_redshiftdata_statement" in
  let __attrs =
    ({
       cluster_identifier =
         Prop.computed __type __id "cluster_identifier";
       database = Prop.computed __type __id "database";
       db_user = Prop.computed __type __id "db_user";
       id = Prop.computed __type __id "id";
       secret_arn = Prop.computed __type __id "secret_arn";
       sql = Prop.computed __type __id "sql";
       statement_name = Prop.computed __type __id "statement_name";
       with_event = Prop.computed __type __id "with_event";
       workgroup_name = Prop.computed __type __id "workgroup_name";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_redshiftdata_statement
        (aws_redshiftdata_statement ?cluster_identifier ?db_user ?id
           ?secret_arn ?statement_name ?with_event ?workgroup_name
           ~parameters ?timeouts ~database ~sql ());
    attrs = __attrs;
  }

let register ?tf_module ?cluster_identifier ?db_user ?id ?secret_arn
    ?statement_name ?with_event ?workgroup_name ?(parameters = [])
    ?timeouts ~database ~sql __id =
  let (r : _ Tf_core.resource) =
    make ?cluster_identifier ?db_user ?id ?secret_arn ?statement_name
      ?with_event ?workgroup_name ~parameters ?timeouts ~database
      ~sql __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
