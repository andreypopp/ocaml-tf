(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type google_clouddeploy_custom_target_type__custom_actions__include_skaffold_modules__git = {
  path : string option; [@option]
      (** Relative path from the repository root to the Skaffold file. *)
  ref : string option; [@option]
      (** Git ref the package should be cloned from. *)
  repo : string;
      (** Git repository the package should be cloned from. *)
}
[@@deriving yojson_of]
(** Remote git repository containing the Skaffold Config modules. *)

type google_clouddeploy_custom_target_type__custom_actions__include_skaffold_modules__google_cloud_storage = {
  path : string option; [@option]
      (** Relative path from the source to the Skaffold file. *)
  source : string;
      (** Cloud Storage source paths to copy recursively. For example, providing 'gs://my-bucket/dir/configs/*' will result in Skaffold copying all files within the 'dir/configs' directory in the bucket 'my-bucket'. *)
}
[@@deriving yojson_of]
(** Cloud Storage bucket containing Skaffold Config modules. *)

type google_clouddeploy_custom_target_type__custom_actions__include_skaffold_modules = {
  configs : string list option; [@option]
      (** The Skaffold Config modules to use from the specified source. *)
  git :
    google_clouddeploy_custom_target_type__custom_actions__include_skaffold_modules__git
    list;
  google_cloud_storage :
    google_clouddeploy_custom_target_type__custom_actions__include_skaffold_modules__google_cloud_storage
    list;
}
[@@deriving yojson_of]
(** List of Skaffold modules Cloud Deploy will include in the Skaffold Config as required before performing diagnose. *)

type google_clouddeploy_custom_target_type__custom_actions = {
  deploy_action : string;
      (** The Skaffold custom action responsible for deploy operations. *)
  render_action : string option; [@option]
      (** The Skaffold custom action responsible for render operations. If not provided then Cloud Deploy will perform the render operations via 'skaffold render'. *)
  include_skaffold_modules :
    google_clouddeploy_custom_target_type__custom_actions__include_skaffold_modules
    list;
}
[@@deriving yojson_of]
(** Configures render and deploy for the 'CustomTargetType' using Skaffold custom actions. *)

type google_clouddeploy_custom_target_type__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** google_clouddeploy_custom_target_type__timeouts *)

type google_clouddeploy_custom_target_type = {
  annotations : (string * string) list option; [@option]
      (** User annotations. These attributes can only be set and used by the user, and not by Cloud Deploy. See https://google.aip.dev/128#annotations for more details such as format and size limitations.

**Note**: This field is non-authoritative, and will only manage the annotations present in your configuration.
Please refer to the field 'effective_annotations' for all of the annotations present on the resource. *)
  description : string option; [@option]
      (** Description of the 'CustomTargetType'. Max length is 255 characters. *)
  labels : (string * string) list option; [@option]
      (** Labels are attributes that can be set and used by both the user and by Cloud Deploy. Labels must meet the following constraints: * Keys and values can contain only lowercase letters, numeric characters, underscores, and dashes. * All characters must use UTF-8 encoding, and international characters are allowed. * Keys must start with a lowercase letter or international character. * Each resource is limited to a maximum of 64 labels. Both keys and values are additionally constrained to be <= 128 bytes.

**Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
Please refer to the field 'effective_labels' for all of the labels present on the resource. *)
  location : string;  (** The location of the source. *)
  name : string;  (** Name of the 'CustomTargetType'. *)
  custom_actions :
    google_clouddeploy_custom_target_type__custom_actions list;
  timeouts : google_clouddeploy_custom_target_type__timeouts option;
}
[@@deriving yojson_of]
(** google_clouddeploy_custom_target_type *)

let google_clouddeploy_custom_target_type ?annotations ?description
    ?labels ?timeouts ~location ~name ~custom_actions __resource_id =
  let __resource_type = "google_clouddeploy_custom_target_type" in
  let __resource =
    {
      annotations;
      description;
      labels;
      location;
      name;
      custom_actions;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_clouddeploy_custom_target_type __resource);
  ()
