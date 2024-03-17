(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type google_apigee_sharedflow__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** google_apigee_sharedflow__timeouts *)

type google_apigee_sharedflow__meta_data = {
  created_at : string prop;  (** created_at *)
  last_modified_at : string prop;  (** last_modified_at *)
  sub_type : string prop;  (** sub_type *)
}
[@@deriving yojson_of]

type google_apigee_sharedflow = {
  config_bundle : string prop;  (** Path to the config zip bundle *)
  detect_md5hash : string prop option; [@option]
      (** A hash of local config bundle in string, user needs to use a Terraform Hash function of their choice. A change in hash will trigger an update. *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** The ID of the shared flow. *)
  org_id : string prop;
      (** The Apigee Organization name associated with the Apigee instance. *)
  timeouts : google_apigee_sharedflow__timeouts option;
}
[@@deriving yojson_of]
(** google_apigee_sharedflow *)

type t = {
  config_bundle : string prop;
  detect_md5hash : string prop;
  id : string prop;
  latest_revision_id : string prop;
  md5hash : string prop;
  meta_data : google_apigee_sharedflow__meta_data list prop;
  name : string prop;
  org_id : string prop;
  revision : string list prop;
}

let google_apigee_sharedflow ?detect_md5hash ?id ?timeouts
    ~config_bundle ~name ~org_id __resource_id =
  let __resource_type = "google_apigee_sharedflow" in
  let __resource =
    ({ config_bundle; detect_md5hash; id; name; org_id; timeouts }
      : google_apigee_sharedflow)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_apigee_sharedflow __resource);
  let __resource_attributes =
    ({
       config_bundle =
         Prop.computed __resource_type __resource_id "config_bundle";
       detect_md5hash =
         Prop.computed __resource_type __resource_id "detect_md5hash";
       id = Prop.computed __resource_type __resource_id "id";
       latest_revision_id =
         Prop.computed __resource_type __resource_id
           "latest_revision_id";
       md5hash =
         Prop.computed __resource_type __resource_id "md5hash";
       meta_data =
         Prop.computed __resource_type __resource_id "meta_data";
       name = Prop.computed __resource_type __resource_id "name";
       org_id = Prop.computed __resource_type __resource_id "org_id";
       revision =
         Prop.computed __resource_type __resource_id "revision";
     }
      : t)
  in
  __resource_attributes
