(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type google_iap_brand__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
}
[@@deriving yojson_of]
(** google_iap_brand__timeouts *)

type google_iap_brand = {
  application_title : string;
      (** Application name displayed on OAuth consent screen. *)
  support_email : string;
      (** Support email displayed on the OAuth consent screen. Can be either a
user or group email. When a user email is specified, the caller must
be the user with the associated email address. When a group email is
specified, the caller can be either a user or a service account which
is an owner of the specified group in Cloud Identity. *)
  timeouts : google_iap_brand__timeouts option;
}
[@@deriving yojson_of]
(** google_iap_brand *)

let google_iap_brand ?timeouts ~application_title ~support_email
    __resource_id =
  let __resource_type = "google_iap_brand" in
  let __resource = { application_title; support_email; timeouts } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_iap_brand __resource);
  ()
