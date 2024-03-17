(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type google_storage_hmac_key__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** google_storage_hmac_key__timeouts *)

type google_storage_hmac_key = {
  id : string prop option; [@option]  (** id *)
  project : string prop option; [@option]  (** project *)
  service_account_email : string prop;
      (** The email address of the key's associated service account. *)
  state : string prop option; [@option]
      (** The state of the key. Can be set to one of ACTIVE, INACTIVE. Default value: ACTIVE Possible values: [ACTIVE, INACTIVE] *)
  timeouts : google_storage_hmac_key__timeouts option;
}
[@@deriving yojson_of]
(** google_storage_hmac_key *)

let google_storage_hmac_key ?id ?project ?state ?timeouts
    ~service_account_email __resource_id =
  let __resource_type = "google_storage_hmac_key" in
  let __resource =
    { id; project; service_account_email; state; timeouts }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_storage_hmac_key __resource);
  ()
