(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type google_edgenetwork_network__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
}
[@@deriving yojson_of]
(** google_edgenetwork_network__timeouts *)

type google_edgenetwork_network = {
  description : string prop option; [@option]
      (** A free-text description of the resource. Max length 1024 characters. *)
  id : string prop option; [@option]  (** id *)
  labels : (string * string prop) list option; [@option]
      (** Labels associated with this resource. *)
  location : string prop;
      (** The Google Cloud region to which the target Distributed Cloud Edge zone belongs. *)
  mtu : float prop option; [@option]
      (** IP (L3) MTU value of the network. Default value is '1500'. Possible values are: '1500', '9000'. *)
  network_id : string prop;
      (** A unique ID that identifies this network. *)
  project : string prop option; [@option]  (** project *)
  zone : string prop;
      (** The name of the target Distributed Cloud Edge zone. *)
  timeouts : google_edgenetwork_network__timeouts option;
}
[@@deriving yojson_of]
(** google_edgenetwork_network *)

let google_edgenetwork_network ?description ?id ?labels ?mtu ?project
    ?timeouts ~location ~network_id ~zone __resource_id =
  let __resource_type = "google_edgenetwork_network" in
  let __resource =
    {
      description;
      id;
      labels;
      location;
      mtu;
      network_id;
      project;
      zone;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_edgenetwork_network __resource);
  ()
