(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type vpc_networks = {
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
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** google_vmwareengine_network *)

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let google_vmwareengine_network ?description ?id ?project ?timeouts
    ~location ~name ~type_ () : google_vmwareengine_network =
  { description; id; location; name; project; type_; timeouts }

type t = {
  description : string prop;
  id : string prop;
  location : string prop;
  name : string prop;
  project : string prop;
  state : string prop;
  type_ : string prop;
  uid : string prop;
  vpc_networks : vpc_networks list prop;
}

let register ?tf_module ?description ?id ?project ?timeouts ~location
    ~name ~type_ __resource_id =
  let __resource_type = "google_vmwareengine_network" in
  let __resource =
    google_vmwareengine_network ?description ?id ?project ?timeouts
      ~location ~name ~type_ ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_vmwareengine_network __resource);
  let __resource_attributes =
    ({
       description =
         Prop.computed __resource_type __resource_id "description";
       id = Prop.computed __resource_type __resource_id "id";
       location =
         Prop.computed __resource_type __resource_id "location";
       name = Prop.computed __resource_type __resource_id "name";
       project =
         Prop.computed __resource_type __resource_id "project";
       state = Prop.computed __resource_type __resource_id "state";
       type_ = Prop.computed __resource_type __resource_id "type";
       uid = Prop.computed __resource_type __resource_id "uid";
       vpc_networks =
         Prop.computed __resource_type __resource_id "vpc_networks";
     }
      : t)
  in
  __resource_attributes
