(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type google_edgenetwork_subnet__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
}
[@@deriving yojson_of]
(** google_edgenetwork_subnet__timeouts *)

type google_edgenetwork_subnet = {
  description : string option; [@option]
      (** A free-text description of the resource. Max length 1024 characters. *)
  ipv4_cidr : string list option; [@option]
      (** The ranges of ipv4 addresses that are owned by this subnetwork, in CIDR format. *)
  ipv6_cidr : string list option; [@option]
      (** The ranges of ipv6 addresses that are owned by this subnetwork, in CIDR format. *)
  labels : (string * string) list option; [@option]
      (** Labels associated with this resource. *)
  location : string;
      (** The Google Cloud region to which the target Distributed Cloud Edge zone belongs. *)
  network : string;
      (** The ID of the network to which this router belongs.
Must be of the form: 'projects/{{project}}/locations/{{location}}/zones/{{zone}}/networks/{{network_id}}' *)
  subnet_id : string;
      (** A unique ID that identifies this subnet. *)
  zone : string;
      (** The name of the target Distributed Cloud Edge zone. *)
  timeouts : google_edgenetwork_subnet__timeouts option;
}
[@@deriving yojson_of]
(** google_edgenetwork_subnet *)

let google_edgenetwork_subnet ?description ?ipv4_cidr ?ipv6_cidr
    ?labels ?timeouts ~location ~network ~subnet_id ~zone
    __resource_id =
  let __resource_type = "google_edgenetwork_subnet" in
  let __resource =
    {
      description;
      ipv4_cidr;
      ipv6_cidr;
      labels;
      location;
      network;
      subnet_id;
      zone;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_edgenetwork_subnet __resource);
  ()