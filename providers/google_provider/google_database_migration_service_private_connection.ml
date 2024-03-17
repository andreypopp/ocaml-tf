(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type google_database_migration_service_private_connection__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** google_database_migration_service_private_connection__timeouts *)

type google_database_migration_service_private_connection__vpc_peering_config = {
  subnet : string;  (** A free subnet for peering. (CIDR of /29) *)
  vpc_name : string;
      (** Fully qualified name of the VPC that Database Migration Service will peer to.
Format: projects/{project}/global/{networks}/{name} *)
}
[@@deriving yojson_of]
(** The VPC Peering configuration is used to create VPC peering
between databasemigrationservice and the consumer's VPC. *)

type google_database_migration_service_private_connection__error = {
  details : (string * string) list;  (** details *)
  message : string;  (** message *)
}
[@@deriving yojson_of]

type google_database_migration_service_private_connection = {
  labels : (string * string) list option; [@option]
      (** Labels.

**Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
Please refer to the field 'effective_labels' for all of the labels present on the resource. *)
  location : string;
      (** The name of the location this private connection is located in. *)
  private_connection_id : string;
      (** The private connectivity identifier. *)
  timeouts :
    google_database_migration_service_private_connection__timeouts
    option;
  vpc_peering_config :
    google_database_migration_service_private_connection__vpc_peering_config
    list;
}
[@@deriving yojson_of]
(** google_database_migration_service_private_connection *)

let google_database_migration_service_private_connection ?labels
    ?timeouts ~location ~private_connection_id ~vpc_peering_config
    __resource_id =
  let __resource_type =
    "google_database_migration_service_private_connection"
  in
  let __resource =
    {
      labels;
      location;
      private_connection_id;
      timeouts;
      vpc_peering_config;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_database_migration_service_private_connection
       __resource);
  ()
