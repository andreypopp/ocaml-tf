(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type google_spanner_database__encryption_config = {
  kms_key_name : string;
      (** Fully qualified name of the KMS key to use to encrypt this database. This key must exist
in the same location as the Spanner Database. *)
}
[@@deriving yojson_of]
(** Encryption configuration for the database *)

type google_spanner_database__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** google_spanner_database__timeouts *)

type google_spanner_database = {
  ddl : string list option; [@option]
      (** An optional list of DDL statements to run inside the newly created
database. Statements can create tables, indexes, etc. These statements
execute atomically with the creation of the database: if there is an
error in any statement, the database is not created. *)
  deletion_protection : bool option; [@option]
      (** Whether or not to allow Terraform to destroy the database. Defaults to true. Unless this field is set to false
in Terraform state, a 'terraform destroy' or 'terraform apply' that would delete the database will fail. *)
  enable_drop_protection : bool option; [@option]
      (** Whether drop protection is enabled for this database. Defaults to false.
Drop protection is different from
the deletion_protection attribute in the following ways:
(1) deletion_protection only protects the database from deletions in Terraform.
whereas setting “enableDropProtection” to true protects the database from deletions in all interfaces.
(2) Setting enableDropProtection to true also prevents the deletion of the parent instance containing the database.
deletion_protection attribute does not provide protection against the deletion of the parent instance. *)
  instance : string;  (** The instance to create the database on. *)
  name : string;
      (** A unique identifier for the database, which cannot be changed after
the instance is created. Values are of the form [a-z][-a-z0-9]*[a-z0-9]. *)
  encryption_config :
    google_spanner_database__encryption_config list;
  timeouts : google_spanner_database__timeouts option;
}
[@@deriving yojson_of]
(** google_spanner_database *)

let google_spanner_database ?ddl ?deletion_protection
    ?enable_drop_protection ?timeouts ~instance ~name
    ~encryption_config __resource_id =
  let __resource_type = "google_spanner_database" in
  let __resource =
    {
      ddl;
      deletion_protection;
      enable_drop_protection;
      instance;
      name;
      encryption_config;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_spanner_database __resource);
  ()
