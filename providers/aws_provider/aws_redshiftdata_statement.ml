(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_redshiftdata_statement__parameters = {
  name : string prop;  (** name *)
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** aws_redshiftdata_statement__parameters *)

type aws_redshiftdata_statement__timeouts = {
  create : string prop option; [@option]  (** create *)
}
[@@deriving yojson_of]
(** aws_redshiftdata_statement__timeouts *)

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
  parameters : aws_redshiftdata_statement__parameters list;
  timeouts : aws_redshiftdata_statement__timeouts option;
}
[@@deriving yojson_of]
(** aws_redshiftdata_statement *)

let aws_redshiftdata_statement ?cluster_identifier ?db_user ?id
    ?secret_arn ?statement_name ?with_event ?workgroup_name ?timeouts
    ~database ~sql ~parameters __resource_id =
  let __resource_type = "aws_redshiftdata_statement" in
  let __resource =
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
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_redshiftdata_statement __resource);
  ()
