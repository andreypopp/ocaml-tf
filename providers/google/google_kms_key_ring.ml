(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
}
[@@deriving yojson_of]
(** timeouts *)

type google_kms_key_ring = {
  id : string prop option; [@option]  (** id *)
  location : string prop;
      (** The location for the KeyRing.
A full list of valid locations can be found by running 'gcloud kms locations list'. *)
  name : string prop;  (** The resource name for the KeyRing. *)
  project : string prop option; [@option]  (** project *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** google_kms_key_ring *)

let timeouts ?create ?delete () : timeouts = { create; delete }

let google_kms_key_ring ?id ?project ?timeouts ~location ~name () :
    google_kms_key_ring =
  { id; location; name; project; timeouts }

type t = {
  id : string prop;
  location : string prop;
  name : string prop;
  project : string prop;
}

let register ?tf_module ?id ?project ?timeouts ~location ~name
    __resource_id =
  let __resource_type = "google_kms_key_ring" in
  let __resource =
    google_kms_key_ring ?id ?project ?timeouts ~location ~name ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_kms_key_ring __resource);
  let __resource_attributes =
    ({
       id = Prop.computed __resource_type __resource_id "id";
       location =
         Prop.computed __resource_type __resource_id "location";
       name = Prop.computed __resource_type __resource_id "name";
       project =
         Prop.computed __resource_type __resource_id "project";
     }
      : t)
  in
  __resource_attributes
