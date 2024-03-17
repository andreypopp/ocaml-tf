(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type google_os_login_ssh_public_key__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** google_os_login_ssh_public_key__timeouts *)

type google_os_login_ssh_public_key = {
  expiration_time_usec : string option; [@option]
      (** An expiration time in microseconds since epoch. *)
  id : string option; [@option]  (** id *)
  key : string;
      (** Public key text in SSH format, defined by RFC4253 section 6.6. *)
  project : string option; [@option]
      (** The project ID of the Google Cloud Platform project. *)
  user : string;  (** The user email. *)
  timeouts : google_os_login_ssh_public_key__timeouts option;
}
[@@deriving yojson_of]
(** google_os_login_ssh_public_key *)

let google_os_login_ssh_public_key ?expiration_time_usec ?id ?project
    ?timeouts ~key ~user __resource_id =
  let __resource_type = "google_os_login_ssh_public_key" in
  let __resource =
    { expiration_time_usec; id; key; project; user; timeouts }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_os_login_ssh_public_key __resource);
  ()
