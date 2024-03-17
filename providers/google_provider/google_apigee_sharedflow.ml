(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type google_apigee_sharedflow__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** google_apigee_sharedflow__timeouts *)

type google_apigee_sharedflow__meta_data = {
  created_at : string;  (** created_at *)
  last_modified_at : string;  (** last_modified_at *)
  sub_type : string;  (** sub_type *)
}
[@@deriving yojson_of]

type google_apigee_sharedflow = {
  config_bundle : string;  (** Path to the config zip bundle *)
  detect_md5hash : string option; [@option]
      (** A hash of local config bundle in string, user needs to use a Terraform Hash function of their choice. A change in hash will trigger an update. *)
  name : string;  (** The ID of the shared flow. *)
  org_id : string;
      (** The Apigee Organization name associated with the Apigee instance. *)
  timeouts : google_apigee_sharedflow__timeouts option;
}
[@@deriving yojson_of]
(** google_apigee_sharedflow *)

let google_apigee_sharedflow ?detect_md5hash ?timeouts ~config_bundle
    ~name ~org_id __resource_id =
  let __resource_type = "google_apigee_sharedflow" in
  let __resource =
    { config_bundle; detect_md5hash; name; org_id; timeouts }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_apigee_sharedflow __resource);
  ()
