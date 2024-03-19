(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
}
[@@deriving yojson_of]
(** timeouts *)

type google_iap_brand = {
  application_title : string prop;
      (** Application name displayed on OAuth consent screen. *)
  id : string prop option; [@option]  (** id *)
  project : string prop option; [@option]  (** project *)
  support_email : string prop;
      (** Support email displayed on the OAuth consent screen. Can be either a
user or group email. When a user email is specified, the caller must
be the user with the associated email address. When a group email is
specified, the caller can be either a user or a service account which
is an owner of the specified group in Cloud Identity. *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** google_iap_brand *)

let timeouts ?create ?delete () : timeouts = { create; delete }

let google_iap_brand ?id ?project ?timeouts ~application_title
    ~support_email () : google_iap_brand =
  { application_title; id; project; support_email; timeouts }

type t = {
  application_title : string prop;
  id : string prop;
  name : string prop;
  org_internal_only : bool prop;
  project : string prop;
  support_email : string prop;
}

let register ?tf_module ?id ?project ?timeouts ~application_title
    ~support_email __resource_id =
  let __resource_type = "google_iap_brand" in
  let __resource =
    google_iap_brand ?id ?project ?timeouts ~application_title
      ~support_email ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_iap_brand __resource);
  let __resource_attributes =
    ({
       application_title =
         Prop.computed __resource_type __resource_id
           "application_title";
       id = Prop.computed __resource_type __resource_id "id";
       name = Prop.computed __resource_type __resource_id "name";
       org_internal_only =
         Prop.computed __resource_type __resource_id
           "org_internal_only";
       project =
         Prop.computed __resource_type __resource_id "project";
       support_email =
         Prop.computed __resource_type __resource_id "support_email";
     }
      : t)
  in
  __resource_attributes
