(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type google_network_connectivity_hub__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** google_network_connectivity_hub__timeouts *)

type google_network_connectivity_hub__routing_vpcs = {
  uri : string prop;  (** uri *)
}
[@@deriving yojson_of]

type google_network_connectivity_hub = {
  description : string prop option; [@option]
      (** An optional description of the hub. *)
  id : string prop option; [@option]  (** id *)
  labels : (string * string prop) list option; [@option]
      (** Optional labels in key:value format. For more information about labels, see [Requirements for labels](https://cloud.google.com/resource-manager/docs/creating-managing-labels#requirements).

**Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
Please refer to the field `effective_labels` for all of the labels present on the resource. *)
  name : string prop;
      (** Immutable. The name of the hub. Hub names must be unique. They use the following form: `projects/{project_number}/locations/global/hubs/{hub_id}` *)
  project : string prop option; [@option]
      (** The project for the resource *)
  timeouts : google_network_connectivity_hub__timeouts option;
}
[@@deriving yojson_of]
(** google_network_connectivity_hub *)

let google_network_connectivity_hub ?description ?id ?labels ?project
    ?timeouts ~name __resource_id =
  let __resource_type = "google_network_connectivity_hub" in
  let __resource =
    { description; id; labels; name; project; timeouts }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_network_connectivity_hub __resource);
  ()
