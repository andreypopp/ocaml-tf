(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

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
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** google_alloydb_user *)

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let google_alloydb_user ?database_roles ?id ?password ?timeouts
    ~cluster ~user_id ~user_type () : google_alloydb_user =
  {
    cluster;
    database_roles;
    id;
    password;
    user_id;
    user_type;
    timeouts;
  }

type t = {
  cluster : string prop;
  database_roles : string list prop;
  id : string prop;
  name : string prop;
  password : string prop;
  user_id : string prop;
  user_type : string prop;
}

let register ?tf_module ?database_roles ?id ?password ?timeouts
    ~cluster ~user_id ~user_type __resource_id =
  let __resource_type = "google_alloydb_user" in
  let __resource =
    google_alloydb_user ?database_roles ?id ?password ?timeouts
      ~cluster ~user_id ~user_type ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_alloydb_user __resource);
  let __resource_attributes =
    ({
       cluster =
         Prop.computed __resource_type __resource_id "cluster";
       database_roles =
         Prop.computed __resource_type __resource_id "database_roles";
       id = Prop.computed __resource_type __resource_id "id";
       name = Prop.computed __resource_type __resource_id "name";
       password =
         Prop.computed __resource_type __resource_id "password";
       user_id =
         Prop.computed __resource_type __resource_id "user_id";
       user_type =
         Prop.computed __resource_type __resource_id "user_type";
     }
      : t)
  in
  __resource_attributes
