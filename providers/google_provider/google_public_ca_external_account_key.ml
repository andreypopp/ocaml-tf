(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type google_public_ca_external_account_key__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
}
[@@deriving yojson_of]
(** google_public_ca_external_account_key__timeouts *)

type google_public_ca_external_account_key = {
  id : string option; [@option]  (** id *)
  location : string option; [@option]
      (** Location for the externalAccountKey. Currently only 'global' is supported. *)
  project : string option; [@option]  (** project *)
  timeouts : google_public_ca_external_account_key__timeouts option;
}
[@@deriving yojson_of]
(** google_public_ca_external_account_key *)

let google_public_ca_external_account_key ?id ?location ?project
    ?timeouts __resource_id =
  let __resource_type = "google_public_ca_external_account_key" in
  let __resource = { id; location; project; timeouts } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_public_ca_external_account_key __resource);
  ()
