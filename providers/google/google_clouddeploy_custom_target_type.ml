(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type custom_actions__include_skaffold_modules__git = {
  path : string prop option; [@option]
      (** Relative path from the repository root to the Skaffold file. *)
  ref : string prop option; [@option]
      (** Git ref the package should be cloned from. *)
  repo : string prop;
      (** Git repository the package should be cloned from. *)
}
[@@deriving yojson_of]
(** Remote git repository containing the Skaffold Config modules. *)

type custom_actions__include_skaffold_modules__google_cloud_storage = {
  path : string prop option; [@option]
      (** Relative path from the source to the Skaffold file. *)
  source : string prop;
      (** Cloud Storage source paths to copy recursively. For example, providing 'gs://my-bucket/dir/configs/*' will result in Skaffold copying all files within the 'dir/configs' directory in the bucket 'my-bucket'. *)
}
[@@deriving yojson_of]
(** Cloud Storage bucket containing Skaffold Config modules. *)

type custom_actions__include_skaffold_modules = {
  configs : string prop list option; [@option]
      (** The Skaffold Config modules to use from the specified source. *)
  git : custom_actions__include_skaffold_modules__git list;
  google_cloud_storage :
    custom_actions__include_skaffold_modules__google_cloud_storage
    list;
}
[@@deriving yojson_of]
(** List of Skaffold modules Cloud Deploy will include in the Skaffold Config as required before performing diagnose. *)

type custom_actions = {
  deploy_action : string prop;
      (** The Skaffold custom action responsible for deploy operations. *)
  render_action : string prop option; [@option]
      (** The Skaffold custom action responsible for render operations. If not provided then Cloud Deploy will perform the render operations via 'skaffold render'. *)
  include_skaffold_modules :
    custom_actions__include_skaffold_modules list;
}
[@@deriving yojson_of]
(** Configures render and deploy for the 'CustomTargetType' using Skaffold custom actions. *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type google_clouddeploy_custom_target_type = {
  annotations : (string * string prop) list option; [@option]
      (** User annotations. These attributes can only be set and used by the user, and not by Cloud Deploy. See https://google.aip.dev/128#annotations for more details such as format and size limitations.

**Note**: This field is non-authoritative, and will only manage the annotations present in your configuration.
Please refer to the field 'effective_annotations' for all of the annotations present on the resource. *)
  description : string prop option; [@option]
      (** Description of the 'CustomTargetType'. Max length is 255 characters. *)
  id : string prop option; [@option]  (** id *)
  labels : (string * string prop) list option; [@option]
      (** Labels are attributes that can be set and used by both the user and by Cloud Deploy. Labels must meet the following constraints: * Keys and values can contain only lowercase letters, numeric characters, underscores, and dashes. * All characters must use UTF-8 encoding, and international characters are allowed. * Keys must start with a lowercase letter or international character. * Each resource is limited to a maximum of 64 labels. Both keys and values are additionally constrained to be <= 128 bytes.

**Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
Please refer to the field 'effective_labels' for all of the labels present on the resource. *)
  location : string prop;  (** The location of the source. *)
  name : string prop;  (** Name of the 'CustomTargetType'. *)
  project : string prop option; [@option]  (** project *)
  custom_actions : custom_actions list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** google_clouddeploy_custom_target_type *)

let custom_actions__include_skaffold_modules__git ?path ?ref ~repo ()
    : custom_actions__include_skaffold_modules__git =
  { path; ref; repo }

let custom_actions__include_skaffold_modules__google_cloud_storage
    ?path ~source () :
    custom_actions__include_skaffold_modules__google_cloud_storage =
  { path; source }

let custom_actions__include_skaffold_modules ?configs ~git
    ~google_cloud_storage () :
    custom_actions__include_skaffold_modules =
  { configs; git; google_cloud_storage }

let custom_actions ?render_action ~deploy_action
    ~include_skaffold_modules () : custom_actions =
  { deploy_action; render_action; include_skaffold_modules }

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let google_clouddeploy_custom_target_type ?annotations ?description
    ?id ?labels ?project ?timeouts ~location ~name ~custom_actions ()
    : google_clouddeploy_custom_target_type =
  {
    annotations;
    description;
    id;
    labels;
    location;
    name;
    project;
    custom_actions;
    timeouts;
  }

type t = {
  annotations : (string * string) list prop;
  create_time : string prop;
  custom_target_type_id : string prop;
  description : string prop;
  effective_annotations : (string * string) list prop;
  effective_labels : (string * string) list prop;
  etag : string prop;
  id : string prop;
  labels : (string * string) list prop;
  location : string prop;
  name : string prop;
  project : string prop;
  terraform_labels : (string * string) list prop;
  uid : string prop;
  update_time : string prop;
}

let register ?tf_module ?annotations ?description ?id ?labels
    ?project ?timeouts ~location ~name ~custom_actions __resource_id
    =
  let __resource_type = "google_clouddeploy_custom_target_type" in
  let __resource =
    google_clouddeploy_custom_target_type ?annotations ?description
      ?id ?labels ?project ?timeouts ~location ~name ~custom_actions
      ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_clouddeploy_custom_target_type __resource);
  let __resource_attributes =
    ({
       annotations =
         Prop.computed __resource_type __resource_id "annotations";
       create_time =
         Prop.computed __resource_type __resource_id "create_time";
       custom_target_type_id =
         Prop.computed __resource_type __resource_id
           "custom_target_type_id";
       description =
         Prop.computed __resource_type __resource_id "description";
       effective_annotations =
         Prop.computed __resource_type __resource_id
           "effective_annotations";
       effective_labels =
         Prop.computed __resource_type __resource_id
           "effective_labels";
       etag = Prop.computed __resource_type __resource_id "etag";
       id = Prop.computed __resource_type __resource_id "id";
       labels = Prop.computed __resource_type __resource_id "labels";
       location =
         Prop.computed __resource_type __resource_id "location";
       name = Prop.computed __resource_type __resource_id "name";
       project =
         Prop.computed __resource_type __resource_id "project";
       terraform_labels =
         Prop.computed __resource_type __resource_id
           "terraform_labels";
       uid = Prop.computed __resource_type __resource_id "uid";
       update_time =
         Prop.computed __resource_type __resource_id "update_time";
     }
      : t)
  in
  __resource_attributes
