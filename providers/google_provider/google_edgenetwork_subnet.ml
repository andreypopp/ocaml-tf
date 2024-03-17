(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type google_edgenetwork_subnet__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
}
[@@deriving yojson_of]
(** google_edgenetwork_subnet__timeouts *)

type google_edgenetwork_subnet = {
  description : string prop option; [@option]
      (** A free-text description of the resource. Max length 1024 characters. *)
  id : string prop option; [@option]  (** id *)
  ipv4_cidr : string prop list option; [@option]
      (** The ranges of ipv4 addresses that are owned by this subnetwork, in CIDR format. *)
  ipv6_cidr : string prop list option; [@option]
      (** The ranges of ipv6 addresses that are owned by this subnetwork, in CIDR format. *)
  labels : (string * string prop) list option; [@option]
      (** Labels associated with this resource. *)
  location : string prop;
      (** The Google Cloud region to which the target Distributed Cloud Edge zone belongs. *)
  network : string prop;
      (** The ID of the network to which this router belongs.
Must be of the form: 'projects/{{project}}/locations/{{location}}/zones/{{zone}}/networks/{{network_id}}' *)
  project : string prop option; [@option]  (** project *)
  subnet_id : string prop;
      (** A unique ID that identifies this subnet. *)
  vlan_id : float prop option; [@option]
      (** VLAN ID for this subnetwork. If not specified, one is assigned automatically. *)
  zone : string prop;
      (** The name of the target Distributed Cloud Edge zone. *)
  timeouts : google_edgenetwork_subnet__timeouts option;
}
[@@deriving yojson_of]
(** google_edgenetwork_subnet *)

let google_edgenetwork_subnet ?description ?id ?ipv4_cidr ?ipv6_cidr
    ?labels ?project ?vlan_id ?timeouts ~location ~network ~subnet_id
    ~zone __resource_id =
  let __resource_type = "google_edgenetwork_subnet" in
  let __resource =
    {
      description;
      id;
      ipv4_cidr;
      ipv6_cidr;
      labels;
      location;
      network;
      project;
      subnet_id;
      vlan_id;
      zone;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_edgenetwork_subnet __resource);
  ()
