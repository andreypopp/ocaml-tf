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

type google_storage_hmac_key = {
  id : string prop option; [@option]  (** id *)
  project : string prop option; [@option]  (** project *)
  service_account_email : string prop;
      (** The email address of the key's associated service account. *)
  state : string prop option; [@option]
      (** The state of the key. Can be set to one of ACTIVE, INACTIVE. Default value: ACTIVE Possible values: [ACTIVE, INACTIVE] *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** google_storage_hmac_key *)

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let google_storage_hmac_key ?id ?project ?state ?timeouts
    ~service_account_email () : google_storage_hmac_key =
  { id; project; service_account_email; state; timeouts }

type t = {
  access_id : string prop;
  id : string prop;
  project : string prop;
  secret : string prop;
  service_account_email : string prop;
  state : string prop;
  time_created : string prop;
  updated : string prop;
}

let register ?tf_module ?id ?project ?state ?timeouts
    ~service_account_email __resource_id =
  let __resource_type = "google_storage_hmac_key" in
  let __resource =
    google_storage_hmac_key ?id ?project ?state ?timeouts
      ~service_account_email ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_storage_hmac_key __resource);
  let __resource_attributes =
    ({
       access_id =
         Prop.computed __resource_type __resource_id "access_id";
       id = Prop.computed __resource_type __resource_id "id";
       project =
         Prop.computed __resource_type __resource_id "project";
       secret = Prop.computed __resource_type __resource_id "secret";
       service_account_email =
         Prop.computed __resource_type __resource_id
           "service_account_email";
       state = Prop.computed __resource_type __resource_id "state";
       time_created =
         Prop.computed __resource_type __resource_id "time_created";
       updated =
         Prop.computed __resource_type __resource_id "updated";
     }
      : t)
  in
  __resource_attributes
