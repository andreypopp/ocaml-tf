(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type google_secure_source_manager_instance__private_config = {
  ca_pool : string prop;
      (** CA pool resource, resource must in the format of 'projects/{project}/locations/{location}/caPools/{ca_pool}'. *)
  http_service_attachment : string prop;
      (** Service Attachment for HTTP, resource is in the format of 'projects/{project}/regions/{region}/serviceAttachments/{service_attachment}'. *)
  is_private : bool prop;
      (** 'Indicate if it's private instance.' *)
  ssh_service_attachment : string prop;
      (** Service Attachment for SSH, resource is in the format of 'projects/{project}/regions/{region}/serviceAttachments/{service_attachment}'. *)
}
[@@deriving yojson_of]
(** Private settings for private instance. *)

type google_secure_source_manager_instance__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** google_secure_source_manager_instance__timeouts *)

type google_secure_source_manager_instance__host_config = {
  api : string prop;  (** api *)
  git_http : string prop;  (** git_http *)
  git_ssh : string prop;  (** git_ssh *)
  html : string prop;  (** html *)
}
[@@deriving yojson_of]

type google_secure_source_manager_instance = {
  id : string prop option; [@option]  (** id *)
  instance_id : string prop;  (** The name for the Instance. *)
  kms_key : string prop option; [@option]
      (** Customer-managed encryption key name, in the format projects/*/locations/*/keyRings/*/cryptoKeys/*. *)
  labels : (string * string prop) list option; [@option]
      (** Labels as key value pairs.


**Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
Please refer to the field 'effective_labels' for all of the labels present on the resource. *)
  location : string prop;  (** The location for the Instance. *)
  project : string prop option; [@option]  (** project *)
  private_config :
    google_secure_source_manager_instance__private_config list;
  timeouts : google_secure_source_manager_instance__timeouts option;
}
[@@deriving yojson_of]
(** google_secure_source_manager_instance *)

let google_secure_source_manager_instance ?id ?kms_key ?labels
    ?project ?timeouts ~instance_id ~location ~private_config
    __resource_id =
  let __resource_type = "google_secure_source_manager_instance" in
  let __resource =
    {
      id;
      instance_id;
      kms_key;
      labels;
      location;
      project;
      private_config;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_secure_source_manager_instance __resource);
  ()
