(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

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

let register ?tf_module ?cluster_identifier ?db_user ?id ?secret_arn
    ?statement_name ?with_event ?workgroup_name ?timeouts ~database
    ~sql ~parameters __resource_id =
  let __resource_type = "aws_redshiftdata_statement" in
  let __resource =
    aws_redshiftdata_statement ?cluster_identifier ?db_user ?id
      ?secret_arn ?statement_name ?with_event ?workgroup_name
      ?timeouts ~database ~sql ~parameters ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_redshiftdata_statement __resource);
  let __resource_attributes =
    ({
       cluster_identifier =
         Prop.computed __resource_type __resource_id
           "cluster_identifier";
       database =
         Prop.computed __resource_type __resource_id "database";
       db_user =
         Prop.computed __resource_type __resource_id "db_user";
       id = Prop.computed __resource_type __resource_id "id";
       secret_arn =
         Prop.computed __resource_type __resource_id "secret_arn";
       sql = Prop.computed __resource_type __resource_id "sql";
       statement_name =
         Prop.computed __resource_type __resource_id "statement_name";
       with_event =
         Prop.computed __resource_type __resource_id "with_event";
       workgroup_name =
         Prop.computed __resource_type __resource_id "workgroup_name";
     }
      : t)
  in
  __resource_attributes
