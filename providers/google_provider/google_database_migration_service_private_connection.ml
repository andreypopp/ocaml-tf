(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type google_database_migration_service_private_connection__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** google_database_migration_service_private_connection__timeouts *)

type google_database_migration_service_private_connection__vpc_peering_config = {
  subnet : string prop;
      (** A free subnet for peering. (CIDR of /29) *)
  vpc_name : string prop;
      (** Fully qualified name of the VPC that Database Migration Service will peer to.
Format: projects/{project}/global/{networks}/{name} *)
}
[@@deriving yojson_of]
(** The VPC Peering configuration is used to create VPC peering
between databasemigrationservice and the consumer's VPC. *)

type google_database_migration_service_private_connection__error = {
  details : (string * string prop) list;  (** details *)
  message : string prop;  (** message *)
}
[@@deriving yojson_of]

type google_database_migration_service_private_connection = {
  display_name : string prop option; [@option]  (** Display name. *)
  id : string prop option; [@option]  (** id *)
  labels : (string * string prop) list option; [@option]
      (** Labels.

**Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
Please refer to the field 'effective_labels' for all of the labels present on the resource. *)
  location : string prop;
      (** The name of the location this private connection is located in. *)
  private_connection_id : string prop;
      (** The private connectivity identifier. *)
  project : string prop option; [@option]  (** project *)
  timeouts :
    google_database_migration_service_private_connection__timeouts
    option;
  vpc_peering_config :
    google_database_migration_service_private_connection__vpc_peering_config
    list;
}
[@@deriving yojson_of]
(** google_database_migration_service_private_connection *)

type t = {
  display_name : string prop;
  effective_labels : (string * string) list prop;
  error :
    google_database_migration_service_private_connection__error list
    prop;
  id : string prop;
  labels : (string * string) list prop;
  location : string prop;
  name : string prop;
  private_connection_id : string prop;
  project : string prop;
  state : string prop;
  terraform_labels : (string * string) list prop;
}

let google_database_migration_service_private_connection
    ?display_name ?id ?labels ?project ?timeouts ~location
    ~private_connection_id ~vpc_peering_config __resource_id =
  let __resource_type =
    "google_database_migration_service_private_connection"
  in
  let __resource =
    ({
       display_name;
       id;
       labels;
       location;
       private_connection_id;
       project;
       timeouts;
       vpc_peering_config;
     }
      : google_database_migration_service_private_connection)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_database_migration_service_private_connection
       __resource);
  let __resource_attributes =
    ({
       display_name =
         Prop.computed __resource_type __resource_id "display_name";
       effective_labels =
         Prop.computed __resource_type __resource_id
           "effective_labels";
       error = Prop.computed __resource_type __resource_id "error";
       id = Prop.computed __resource_type __resource_id "id";
       labels = Prop.computed __resource_type __resource_id "labels";
       location =
         Prop.computed __resource_type __resource_id "location";
       name = Prop.computed __resource_type __resource_id "name";
       private_connection_id =
         Prop.computed __resource_type __resource_id
           "private_connection_id";
       project =
         Prop.computed __resource_type __resource_id "project";
       state = Prop.computed __resource_type __resource_id "state";
       terraform_labels =
         Prop.computed __resource_type __resource_id
           "terraform_labels";
     }
      : t)
  in
  __resource_attributes
