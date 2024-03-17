(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type google_sql_database__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** google_sql_database__timeouts *)

type google_sql_database = {
  charset : string prop option; [@option]
      (** The charset value. See MySQL's
[Supported Character Sets and Collations](https://dev.mysql.com/doc/refman/5.7/en/charset-charsets.html)
and Postgres' [Character Set Support](https://www.postgresql.org/docs/9.6/static/multibyte.html)
for more details and supported values. Postgres databases only support
a value of 'UTF8' at creation time. *)
  collation : string prop option; [@option]
      (** The collation value. See MySQL's
[Supported Character Sets and Collations](https://dev.mysql.com/doc/refman/5.7/en/charset-charsets.html)
and Postgres' [Collation Support](https://www.postgresql.org/docs/9.6/static/collation.html)
for more details and supported values. Postgres databases only support
a value of 'en_US.UTF8' at creation time. *)
  deletion_policy : string prop option; [@option]
      (** The deletion policy for the database. Setting ABANDON allows the resource
to be abandoned rather than deleted. This is useful for Postgres, where databases cannot be
deleted from the API if there are users other than cloudsqlsuperuser with access. Possible
values are: ABANDON, DELETE. Defaults to DELETE. *)
  id : string prop option; [@option]  (** id *)
  instance : string prop;
      (** The name of the Cloud SQL instance. This does not include the project
ID. *)
  name : string prop;
      (** The name of the database in the Cloud SQL instance.
This does not include the project ID or instance name. *)
  project : string prop option; [@option]  (** project *)
  timeouts : google_sql_database__timeouts option;
}
[@@deriving yojson_of]
(** google_sql_database *)

let google_sql_database ?charset ?collation ?deletion_policy ?id
    ?project ?timeouts ~instance ~name __resource_id =
  let __resource_type = "google_sql_database" in
  let __resource =
    {
      charset;
      collation;
      deletion_policy;
      id;
      instance;
      name;
      project;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_sql_database __resource);
  ()
