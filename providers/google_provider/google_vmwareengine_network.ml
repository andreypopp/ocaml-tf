(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type google_vmwareengine_network__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** google_vmwareengine_network__timeouts *)

type google_vmwareengine_network__vpc_networks = {
  network : string;  (** network *)
  type_ : string; [@key "type"]  (** type *)
}
[@@deriving yojson_of]

type google_vmwareengine_network = {
  description : string option; [@option]
      (** User-provided description for this VMware Engine network. *)
  location : string;
      (** The location where the VMwareEngineNetwork should reside. *)
  name : string;  (** The ID of the VMwareEngineNetwork. *)
  type_ : string; [@key "type"]
      (** VMware Engine network type. Possible values: [LEGACY, STANDARD] *)
  timeouts : google_vmwareengine_network__timeouts option;
}
[@@deriving yojson_of]
(** google_vmwareengine_network *)

let google_vmwareengine_network ?description ?timeouts ~location
    ~name ~type_ __resource_id =
  let __resource_type = "google_vmwareengine_network" in
  let __resource =
    { description; location; name; type_; timeouts }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_vmwareengine_network __resource);
  ()
