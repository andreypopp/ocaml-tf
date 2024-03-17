(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type google_sql_user__password_policy__status = {
  locked : bool prop;  (** locked *)
  password_expiration_time : string prop;
      (** password_expiration_time *)
}
[@@deriving yojson_of]

type google_sql_user__password_policy = {
  allowed_failed_attempts : float prop option; [@option]
      (** Number of failed attempts allowed before the user get locked. *)
  enable_failed_attempts_check : bool prop option; [@option]
      (** If true, the check that will lock user after too many failed login attempts will be enabled. *)
  enable_password_verification : bool prop option; [@option]
      (** If true, the user must specify the current password before changing the password. This flag is supported only for MySQL. *)
  password_expiration_duration : string prop option; [@option]
      (** Password expiration duration with one week grace period. *)
  status : google_sql_user__password_policy__status list;
      (** status *)
}
[@@deriving yojson_of]
(** google_sql_user__password_policy *)

type google_sql_user__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** google_sql_user__timeouts *)

type google_sql_user__sql_server_user_details = {
  disabled : bool prop;  (** disabled *)
  server_roles : string prop list;  (** server_roles *)
}
[@@deriving yojson_of]

type google_sql_user = {
  deletion_policy : string prop option; [@option]
      (** The deletion policy for the user. Setting ABANDON allows the resource
				to be abandoned rather than deleted. This is useful for Postgres, where users cannot be deleted from the API if they
				have been granted SQL roles. Possible values are: ABANDON. *)
  host : string prop option; [@option]
      (** The host the user can connect from. This is only supported for MySQL instances. Don't set this field for PostgreSQL instances. Can be an IP address. Changing this forces a new resource to be created. *)
  id : string prop option; [@option]  (** id *)
  instance : string prop;
      (** The name of the Cloud SQL instance. Changing this forces a new resource to be created. *)
  name : string prop;
      (** The name of the user. Changing this forces a new resource to be created. *)
  password : string prop option; [@option]
      (** The password for the user. Can be updated. For Postgres instances this is a Required field, unless type is set to
                either CLOUD_IAM_USER or CLOUD_IAM_SERVICE_ACCOUNT. *)
  project : string prop option; [@option]
      (** The ID of the project in which the resource belongs. If it is not provided, the provider project is used. *)
  type_ : string prop option; [@option] [@key "type"]
      (** The user type. It determines the method to authenticate the user during login.
                The default is the database's built-in user type. Flags include BUILT_IN, CLOUD_IAM_USER, CLOUD_IAM_GROUP or CLOUD_IAM_SERVICE_ACCOUNT. *)
  password_policy : google_sql_user__password_policy list;
  timeouts : google_sql_user__timeouts option;
}
[@@deriving yojson_of]
(** google_sql_user *)

type t = {
  deletion_policy : string prop;
  host : string prop;
  id : string prop;
  instance : string prop;
  name : string prop;
  password : string prop;
  project : string prop;
  sql_server_user_details :
    google_sql_user__sql_server_user_details list prop;
  type_ : string prop;
}

let google_sql_user ?deletion_policy ?host ?id ?password ?project
    ?type_ ?timeouts ~instance ~name ~password_policy __resource_id =
  let __resource_type = "google_sql_user" in
  let __resource =
    ({
       deletion_policy;
       host;
       id;
       instance;
       name;
       password;
       project;
       type_;
       password_policy;
       timeouts;
     }
      : google_sql_user)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_sql_user __resource);
  let __resource_attributes =
    ({
       deletion_policy =
         Prop.computed __resource_type __resource_id
           "deletion_policy";
       host = Prop.computed __resource_type __resource_id "host";
       id = Prop.computed __resource_type __resource_id "id";
       instance =
         Prop.computed __resource_type __resource_id "instance";
       name = Prop.computed __resource_type __resource_id "name";
       password =
         Prop.computed __resource_type __resource_id "password";
       project =
         Prop.computed __resource_type __resource_id "project";
       sql_server_user_details =
         Prop.computed __resource_type __resource_id
           "sql_server_user_details";
       type_ = Prop.computed __resource_type __resource_id "type";
     }
      : t)
  in
  __resource_attributes
