(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type google_kms_key_ring__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
}
[@@deriving yojson_of]
(** google_kms_key_ring__timeouts *)

type google_kms_key_ring = {
  id : string prop option; [@option]  (** id *)
  location : string prop;
      (** The location for the KeyRing.
A full list of valid locations can be found by running 'gcloud kms locations list'. *)
  name : string prop;  (** The resource name for the KeyRing. *)
  project : string prop option; [@option]  (** project *)
  timeouts : google_kms_key_ring__timeouts option;
}
[@@deriving yojson_of]
(** google_kms_key_ring *)

let google_kms_key_ring ?id ?project ?timeouts ~location ~name
    __resource_id =
  let __resource_type = "google_kms_key_ring" in
  let __resource = { id; location; name; project; timeouts } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_kms_key_ring __resource);
  ()
