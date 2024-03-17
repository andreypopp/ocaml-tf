(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type google_vmwareengine_network__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** google_vmwareengine_network__timeouts *)

type google_vmwareengine_network__vpc_networks = {
  network : string prop;  (** network *)
  type_ : string prop; [@key "type"]  (** type *)
}
[@@deriving yojson_of]

type google_vmwareengine_network = {
  description : string prop option; [@option]
      (** User-provided description for this VMware Engine network. *)
  id : string prop option; [@option]  (** id *)
  location : string prop;
      (** The location where the VMwareEngineNetwork should reside. *)
  name : string prop;  (** The ID of the VMwareEngineNetwork. *)
  project : string prop option; [@option]  (** project *)
  type_ : string prop; [@key "type"]
      (** VMware Engine network type. Possible values: [LEGACY, STANDARD] *)
  timeouts : google_vmwareengine_network__timeouts option;
}
[@@deriving yojson_of]
(** google_vmwareengine_network *)

let google_vmwareengine_network ?description ?id ?project ?timeouts
    ~location ~name ~type_ __resource_id =
  let __resource_type = "google_vmwareengine_network" in
  let __resource =
    { description; id; location; name; project; type_; timeouts }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_vmwareengine_network __resource);
  ()
