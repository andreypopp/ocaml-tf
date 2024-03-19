(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type encryption_config = {
  kms_key_name : string prop;
      (** Fully qualified name of the KMS key to use to encrypt this database. This key must exist
in the same location as the Spanner Database. *)
}
[@@deriving yojson_of]
(** Encryption configuration for the database *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type google_spanner_database = {
  database_dialect : string prop option; [@option]
      (** The dialect of the Cloud Spanner Database.
If it is not provided, GOOGLE_STANDARD_SQL will be used. Possible values: [GOOGLE_STANDARD_SQL, POSTGRESQL] *)
  ddl : string prop list option; [@option]
      (** An optional list of DDL statements to run inside the newly created
database. Statements can create tables, indexes, etc. These statements
execute atomically with the creation of the database: if there is an
error in any statement, the database is not created. *)
  deletion_protection : bool prop option; [@option]
      (** Whether or not to allow Terraform to destroy the database. Defaults to true. Unless this field is set to false
in Terraform state, a 'terraform destroy' or 'terraform apply' that would delete the database will fail. *)
  enable_drop_protection : bool prop option; [@option]
      (** Whether drop protection is enabled for this database. Defaults to false.
Drop protection is different from
the deletion_protection attribute in the following ways:
(1) deletion_protection only protects the database from deletions in Terraform.
whereas setting “enableDropProtection” to true protects the database from deletions in all interfaces.
(2) Setting enableDropProtection to true also prevents the deletion of the parent instance containing the database.
deletion_protection attribute does not provide protection against the deletion of the parent instance. *)
  id : string prop option; [@option]  (** id *)
  instance : string prop;
      (** The instance to create the database on. *)
  name : string prop;
      (** A unique identifier for the database, which cannot be changed after
the instance is created. Values are of the form [a-z][-a-z0-9]*[a-z0-9]. *)
  project : string prop option; [@option]  (** project *)
  version_retention_period : string prop option; [@option]
      (** The retention period for the database. The retention period must be between 1 hour
and 7 days, and can be specified in days, hours, minutes, or seconds. For example,
the values 1d, 24h, 1440m, and 86400s are equivalent. Default value is 1h.
If this property is used, you must avoid adding new DDL statements to 'ddl' that
update the database's version_retention_period. *)
  encryption_config : encryption_config list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** google_spanner_database *)

let encryption_config ~kms_key_name () : encryption_config =
  { kms_key_name }

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let google_spanner_database ?database_dialect ?ddl
    ?deletion_protection ?enable_drop_protection ?id ?project
    ?version_retention_period ?timeouts ~instance ~name
    ~encryption_config () : google_spanner_database =
  {
    database_dialect;
    ddl;
    deletion_protection;
    enable_drop_protection;
    id;
    instance;
    name;
    project;
    version_retention_period;
    encryption_config;
    timeouts;
  }

type t = {
  database_dialect : string prop;
  ddl : string list prop;
  deletion_protection : bool prop;
  enable_drop_protection : bool prop;
  id : string prop;
  instance : string prop;
  name : string prop;
  project : string prop;
  state : string prop;
  version_retention_period : string prop;
}

let register ?tf_module ?database_dialect ?ddl ?deletion_protection
    ?enable_drop_protection ?id ?project ?version_retention_period
    ?timeouts ~instance ~name ~encryption_config __resource_id =
  let __resource_type = "google_spanner_database" in
  let __resource =
    google_spanner_database ?database_dialect ?ddl
      ?deletion_protection ?enable_drop_protection ?id ?project
      ?version_retention_period ?timeouts ~instance ~name
      ~encryption_config ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_spanner_database __resource);
  let __resource_attributes =
    ({
       database_dialect =
         Prop.computed __resource_type __resource_id
           "database_dialect";
       ddl = Prop.computed __resource_type __resource_id "ddl";
       deletion_protection =
         Prop.computed __resource_type __resource_id
           "deletion_protection";
       enable_drop_protection =
         Prop.computed __resource_type __resource_id
           "enable_drop_protection";
       id = Prop.computed __resource_type __resource_id "id";
       instance =
         Prop.computed __resource_type __resource_id "instance";
       name = Prop.computed __resource_type __resource_id "name";
       project =
         Prop.computed __resource_type __resource_id "project";
       state = Prop.computed __resource_type __resource_id "state";
       version_retention_period =
         Prop.computed __resource_type __resource_id
           "version_retention_period";
     }
      : t)
  in
  __resource_attributes
