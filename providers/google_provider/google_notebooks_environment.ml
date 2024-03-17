(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type google_notebooks_environment__container_image = {
  repository : string;
      (** The path to the container image repository.
For example: gcr.io/{project_id}/{imageName} *)
  tag : string option; [@option]
      (** The tag of the container image. If not specified, this defaults to the latest tag. *)
}
[@@deriving yojson_of]
(** Use a container image to start the notebook instance. *)

type google_notebooks_environment__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** google_notebooks_environment__timeouts *)

type google_notebooks_environment__vm_image = {
  image_family : string option; [@option]
      (** Use this VM image family to find the image; the newest image in this family will be used. *)
  image_name : string option; [@option]
      (** Use VM image name to find the image. *)
  project : string;
      (** The name of the Google Cloud project that this VM image belongs to.
Format: projects/{project_id} *)
}
[@@deriving yojson_of]
(** Use a Compute Engine VM image to start the notebook instance. *)

type google_notebooks_environment = {
  description : string option; [@option]
      (** A brief description of this environment. *)
  display_name : string option; [@option]
      (** Display name of this environment for the UI. *)
  id : string option; [@option]  (** id *)
  location : string;
      (** A reference to the zone where the machine resides. *)
  name : string;
      (** The name specified for the Environment instance.
Format: projects/{project_id}/locations/{location}/environments/{environmentId} *)
  post_startup_script : string option; [@option]
      (** Path to a Bash script that automatically runs after a notebook instance fully boots up.
The path must be a URL or Cloud Storage path. Example: gs://path-to-file/file-name *)
  project : string option; [@option]  (** project *)
  container_image :
    google_notebooks_environment__container_image list;
  timeouts : google_notebooks_environment__timeouts option;
  vm_image : google_notebooks_environment__vm_image list;
}
[@@deriving yojson_of]
(** google_notebooks_environment *)

let google_notebooks_environment ?description ?display_name ?id
    ?post_startup_script ?project ?timeouts ~location ~name
    ~container_image ~vm_image __resource_id =
  let __resource_type = "google_notebooks_environment" in
  let __resource =
    {
      description;
      display_name;
      id;
      location;
      name;
      post_startup_script;
      project;
      container_image;
      timeouts;
      vm_image;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_notebooks_environment __resource);
  ()
