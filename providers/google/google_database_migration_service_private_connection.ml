(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type vpc_peering_config = {
  subnet : string prop;
      (** A free subnet for peering. (CIDR of /29) *)
  vpc_name : string prop;
      (** Fully qualified name of the VPC that Database Migration Service will peer to.
Format: projects/{project}/global/{networks}/{name} *)
}
[@@deriving yojson_of]
(** The VPC Peering configuration is used to create VPC peering
between databasemigrationservice and the consumer's VPC. *)

type error = {
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
  timeouts : timeouts option;
  vpc_peering_config : vpc_peering_config list;
}
[@@deriving yojson_of]
(** google_database_migration_service_private_connection *)

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let vpc_peering_config ~subnet ~vpc_name () : vpc_peering_config =
  { subnet; vpc_name }

let google_database_migration_service_private_connection
    ?display_name ?id ?labels ?project ?timeouts ~location
    ~private_connection_id ~vpc_peering_config () :
    google_database_migration_service_private_connection =
  {
    display_name;
    id;
    labels;
    location;
    private_connection_id;
    project;
    timeouts;
    vpc_peering_config;
  }

type t = {
  display_name : string prop;
  effective_labels : (string * string) list prop;
  error : error list prop;
  id : string prop;
  labels : (string * string) list prop;
  location : string prop;
  name : string prop;
  private_connection_id : string prop;
  project : string prop;
  state : string prop;
  terraform_labels : (string * string) list prop;
}

let make ?display_name ?id ?labels ?project ?timeouts ~location
    ~private_connection_id ~vpc_peering_config __id =
  let __type =
    "google_database_migration_service_private_connection"
  in
  let __attrs =
    ({
       display_name = Prop.computed __type __id "display_name";
       effective_labels =
         Prop.computed __type __id "effective_labels";
       error = Prop.computed __type __id "error";
       id = Prop.computed __type __id "id";
       labels = Prop.computed __type __id "labels";
       location = Prop.computed __type __id "location";
       name = Prop.computed __type __id "name";
       private_connection_id =
         Prop.computed __type __id "private_connection_id";
       project = Prop.computed __type __id "project";
       state = Prop.computed __type __id "state";
       terraform_labels =
         Prop.computed __type __id "terraform_labels";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_database_migration_service_private_connection
        (google_database_migration_service_private_connection
           ?display_name ?id ?labels ?project ?timeouts ~location
           ~private_connection_id ~vpc_peering_config ());
    attrs = __attrs;
  }

let register ?tf_module ?display_name ?id ?labels ?project ?timeouts
    ~location ~private_connection_id ~vpc_peering_config __id =
  let (r : _ Tf_core.resource) =
    make ?display_name ?id ?labels ?project ?timeouts ~location
      ~private_connection_id ~vpc_peering_config __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
