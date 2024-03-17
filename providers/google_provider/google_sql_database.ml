(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type google_sql_database__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** google_sql_database__timeouts *)

type google_sql_database = {
  deletion_policy : string option; [@option]
      (** The deletion policy for the database. Setting ABANDON allows the resource
to be abandoned rather than deleted. This is useful for Postgres, where databases cannot be
deleted from the API if there are users other than cloudsqlsuperuser with access. Possible
values are: ABANDON, DELETE. Defaults to DELETE. *)
  instance : string;
      (** The name of the Cloud SQL instance. This does not include the project
ID. *)
  name : string;
      (** The name of the database in the Cloud SQL instance.
This does not include the project ID or instance name. *)
  timeouts : google_sql_database__timeouts option;
}
[@@deriving yojson_of]
(** google_sql_database *)

let google_sql_database ?deletion_policy ?timeouts ~instance ~name
    __resource_id =
  let __resource_type = "google_sql_database" in
  let __resource = { deletion_policy; instance; name; timeouts } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_sql_database __resource);
  ()
