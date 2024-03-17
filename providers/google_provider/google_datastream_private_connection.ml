(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type google_datastream_private_connection__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** google_datastream_private_connection__timeouts *)

type google_datastream_private_connection__vpc_peering_config = {
  subnet : string prop;
      (** A free subnet for peering. (CIDR of /29) *)
  vpc : string prop;
      (** Fully qualified name of the VPC that Datastream will peer to.
Format: projects/{project}/global/{networks}/{name} *)
}
[@@deriving yojson_of]
(** The VPC Peering configuration is used to create VPC peering
between Datastream and the consumer's VPC. *)

type google_datastream_private_connection__error = {
  details : (string * string prop) list;  (** details *)
  message : string prop;  (** message *)
}
[@@deriving yojson_of]

type google_datastream_private_connection = {
  display_name : string prop;  (** Display name. *)
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
  timeouts : google_datastream_private_connection__timeouts option;
  vpc_peering_config :
    google_datastream_private_connection__vpc_peering_config list;
}
[@@deriving yojson_of]
(** google_datastream_private_connection *)

let google_datastream_private_connection ?id ?labels ?project
    ?timeouts ~display_name ~location ~private_connection_id
    ~vpc_peering_config __resource_id =
  let __resource_type = "google_datastream_private_connection" in
  let __resource =
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
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_datastream_private_connection __resource);
  ()
