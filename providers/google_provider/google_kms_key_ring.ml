(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type google_kms_key_ring__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
}
[@@deriving yojson_of]
(** google_kms_key_ring__timeouts *)

type google_kms_key_ring = {
  location : string;
      (** The location for the KeyRing.
A full list of valid locations can be found by running 'gcloud kms locations list'. *)
  name : string;  (** The resource name for the KeyRing. *)
  timeouts : google_kms_key_ring__timeouts option;
}
[@@deriving yojson_of]
(** google_kms_key_ring *)

let google_kms_key_ring ?timeouts ~location ~name __resource_id =
  let __resource_type = "google_kms_key_ring" in
  let __resource = { location; name; timeouts } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_kms_key_ring __resource);
  ()
