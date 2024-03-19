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

type google_os_login_ssh_public_key = {
  expiration_time_usec : string prop option; [@option]
      (** An expiration time in microseconds since epoch. *)
  id : string prop option; [@option]  (** id *)
  key : string prop;
      (** Public key text in SSH format, defined by RFC4253 section 6.6. *)
  project : string prop option; [@option]
      (** The project ID of the Google Cloud Platform project. *)
  user : string prop;  (** The user email. *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** google_os_login_ssh_public_key *)

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let google_os_login_ssh_public_key ?expiration_time_usec ?id ?project
    ?timeouts ~key ~user () : google_os_login_ssh_public_key =
  { expiration_time_usec; id; key; project; user; timeouts }

type t = {
  expiration_time_usec : string prop;
  fingerprint : string prop;
  id : string prop;
  key : string prop;
  project : string prop;
  user : string prop;
}

let register ?tf_module ?expiration_time_usec ?id ?project ?timeouts
    ~key ~user __resource_id =
  let __resource_type = "google_os_login_ssh_public_key" in
  let __resource =
    google_os_login_ssh_public_key ?expiration_time_usec ?id ?project
      ?timeouts ~key ~user ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_os_login_ssh_public_key __resource);
  let __resource_attributes =
    ({
       expiration_time_usec =
         Prop.computed __resource_type __resource_id
           "expiration_time_usec";
       fingerprint =
         Prop.computed __resource_type __resource_id "fingerprint";
       id = Prop.computed __resource_type __resource_id "id";
       key = Prop.computed __resource_type __resource_id "key";
       project =
         Prop.computed __resource_type __resource_id "project";
       user = Prop.computed __resource_type __resource_id "user";
     }
      : t)
  in
  __resource_attributes
