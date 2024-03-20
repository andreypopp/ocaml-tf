(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type parameters = {
  name : string prop;  (** name *)
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** parameters *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
}
[@@deriving yojson_of]
(** timeouts *)

type aws_redshiftdata_statement = {
  cluster_identifier : string prop option; [@option]
      (** cluster_identifier *)
  database : string prop;  (** database *)
  db_user : string prop option; [@option]  (** db_user *)
  id : string prop option; [@option]  (** id *)
  secret_arn : string prop option; [@option]  (** secret_arn *)
  sql : string prop;  (** sql *)
  statement_name : string prop option; [@option]
      (** statement_name *)
  with_event : bool prop option; [@option]  (** with_event *)
  workgroup_name : string prop option; [@option]
      (** workgroup_name *)
  parameters : parameters list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** aws_redshiftdata_statement *)

let parameters ~name ~value () : parameters = { name; value }
let timeouts ?create () : timeouts = { create }

let aws_redshiftdata_statement ?cluster_identifier ?db_user ?id
    ?secret_arn ?statement_name ?with_event ?workgroup_name ?timeouts
    ~database ~sql ~parameters () : aws_redshiftdata_statement =
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
    ?with_event ?workgroup_name ?timeouts ~database ~sql ~parameters
    __id =
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
           ?timeouts ~database ~sql ~parameters ());
    attrs = __attrs;
  }

let register ?tf_module ?cluster_identifier ?db_user ?id ?secret_arn
    ?statement_name ?with_event ?workgroup_name ?timeouts ~database
    ~sql ~parameters __id =
  let (r : _ Tf_core.resource) =
    make ?cluster_identifier ?db_user ?id ?secret_arn ?statement_name
      ?with_event ?workgroup_name ?timeouts ~database ~sql
      ~parameters __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
