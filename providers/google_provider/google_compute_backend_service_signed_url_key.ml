(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type google_compute_backend_service_signed_url_key__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
}
[@@deriving yojson_of]
(** google_compute_backend_service_signed_url_key__timeouts *)

type google_compute_backend_service_signed_url_key = {
  backend_service : string prop;
      (** The backend service this signed URL key belongs. *)
  id : string prop option; [@option]  (** id *)
  key_value : string prop;
      (** 128-bit key value used for signing the URL. The key value must be a
valid RFC 4648 Section 5 base64url encoded string. *)
  name : string prop;  (** Name of the signed URL key. *)
  project : string prop option; [@option]  (** project *)
  timeouts :
    google_compute_backend_service_signed_url_key__timeouts option;
}
[@@deriving yojson_of]
(** google_compute_backend_service_signed_url_key *)

type t = {
  backend_service : string prop;
  id : string prop;
  key_value : string prop;
  name : string prop;
  project : string prop;
}

let google_compute_backend_service_signed_url_key ?id ?project
    ?timeouts ~backend_service ~key_value ~name __resource_id =
  let __resource_type =
    "google_compute_backend_service_signed_url_key"
  in
  let __resource =
    ({ backend_service; id; key_value; name; project; timeouts }
      : google_compute_backend_service_signed_url_key)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_compute_backend_service_signed_url_key
       __resource);
  let __resource_attributes =
    ({
       backend_service =
         Prop.computed __resource_type __resource_id
           "backend_service";
       id = Prop.computed __resource_type __resource_id "id";
       key_value =
         Prop.computed __resource_type __resource_id "key_value";
       name = Prop.computed __resource_type __resource_id "name";
       project =
         Prop.computed __resource_type __resource_id "project";
     }
      : t)
  in
  __resource_attributes
