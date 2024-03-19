(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
}
[@@deriving yojson_of]
(** timeouts *)

type google_compute_backend_bucket_signed_url_key = {
  backend_bucket : string prop;
      (** The backend bucket this signed URL key belongs. *)
  id : string prop option; [@option]  (** id *)
  key_value : string prop;
      (** 128-bit key value used for signing the URL. The key value must be a
valid RFC 4648 Section 5 base64url encoded string. *)
  name : string prop;  (** Name of the signed URL key. *)
  project : string prop option; [@option]  (** project *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** google_compute_backend_bucket_signed_url_key *)

let timeouts ?create ?delete () : timeouts = { create; delete }

let google_compute_backend_bucket_signed_url_key ?id ?project
    ?timeouts ~backend_bucket ~key_value ~name () :
    google_compute_backend_bucket_signed_url_key =
  { backend_bucket; id; key_value; name; project; timeouts }

type t = {
  backend_bucket : string prop;
  id : string prop;
  key_value : string prop;
  name : string prop;
  project : string prop;
}

let register ?tf_module ?id ?project ?timeouts ~backend_bucket
    ~key_value ~name __resource_id =
  let __resource_type =
    "google_compute_backend_bucket_signed_url_key"
  in
  let __resource =
    google_compute_backend_bucket_signed_url_key ?id ?project
      ?timeouts ~backend_bucket ~key_value ~name ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_compute_backend_bucket_signed_url_key
       __resource);
  let __resource_attributes =
    ({
       backend_bucket =
         Prop.computed __resource_type __resource_id "backend_bucket";
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
