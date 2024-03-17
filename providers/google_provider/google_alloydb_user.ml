(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type google_alloydb_user__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** google_alloydb_user__timeouts *)

type google_alloydb_user = {
  cluster : string prop;
      (** Identifies the alloydb cluster. Must be in the format
'projects/{project}/locations/{location}/clusters/{cluster_id}' *)
  database_roles : string prop list option; [@option]
      (** List of database roles this database user has. *)
  id : string prop option; [@option]  (** id *)
  password : string prop option; [@option]
      (** Password for this database user. *)
  user_id : string prop;  (** The database role name of the user. *)
  user_type : string prop;
      (** The type of this user. Possible values: [ALLOYDB_BUILT_IN, ALLOYDB_IAM_USER] *)
  timeouts : google_alloydb_user__timeouts option;
}
[@@deriving yojson_of]
(** google_alloydb_user *)

let google_alloydb_user ?database_roles ?id ?password ?timeouts
    ~cluster ~user_id ~user_type __resource_id =
  let __resource_type = "google_alloydb_user" in
  let __resource =
    {
      cluster;
      database_roles;
      id;
      password;
      user_id;
      user_type;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_alloydb_user __resource);
  ()
