(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type container_image = {
  repository : string prop;
      (** The path to the container image repository.
For example: gcr.io/{project_id}/{imageName} *)
  tag : string prop option; [@option]
      (** The tag of the container image. If not specified, this defaults to the latest tag. *)
}
[@@deriving yojson_of]
(** Use a container image to start the notebook instance. *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type vm_image = {
  image_family : string prop option; [@option]
      (** Use this VM image family to find the image; the newest image in this family will be used. *)
  image_name : string prop option; [@option]
      (** Use VM image name to find the image. *)
  project : string prop;
      (** The name of the Google Cloud project that this VM image belongs to.
Format: projects/{project_id} *)
}
[@@deriving yojson_of]
(** Use a Compute Engine VM image to start the notebook instance. *)

type google_notebooks_environment = {
  description : string prop option; [@option]
      (** A brief description of this environment. *)
  display_name : string prop option; [@option]
      (** Display name of this environment for the UI. *)
  id : string prop option; [@option]  (** id *)
  location : string prop;
      (** A reference to the zone where the machine resides. *)
  name : string prop;
      (** The name specified for the Environment instance.
Format: projects/{project_id}/locations/{location}/environments/{environmentId} *)
  post_startup_script : string prop option; [@option]
      (** Path to a Bash script that automatically runs after a notebook instance fully boots up.
The path must be a URL or Cloud Storage path. Example: gs://path-to-file/file-name *)
  project : string prop option; [@option]  (** project *)
  container_image : container_image list;
  timeouts : timeouts option;
  vm_image : vm_image list;
}
[@@deriving yojson_of]
(** google_notebooks_environment *)

let container_image ?tag ~repository () : container_image =
  { repository; tag }

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let vm_image ?image_family ?image_name ~project () : vm_image =
  { image_family; image_name; project }

let google_notebooks_environment ?description ?display_name ?id
    ?post_startup_script ?project ?timeouts ~location ~name
    ~container_image ~vm_image () : google_notebooks_environment =
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

type t = {
  create_time : string prop;
  description : string prop;
  display_name : string prop;
  id : string prop;
  location : string prop;
  name : string prop;
  post_startup_script : string prop;
  project : string prop;
}

let register ?tf_module ?description ?display_name ?id
    ?post_startup_script ?project ?timeouts ~location ~name
    ~container_image ~vm_image __resource_id =
  let __resource_type = "google_notebooks_environment" in
  let __resource =
    google_notebooks_environment ?description ?display_name ?id
      ?post_startup_script ?project ?timeouts ~location ~name
      ~container_image ~vm_image ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_notebooks_environment __resource);
  let __resource_attributes =
    ({
       create_time =
         Prop.computed __resource_type __resource_id "create_time";
       description =
         Prop.computed __resource_type __resource_id "description";
       display_name =
         Prop.computed __resource_type __resource_id "display_name";
       id = Prop.computed __resource_type __resource_id "id";
       location =
         Prop.computed __resource_type __resource_id "location";
       name = Prop.computed __resource_type __resource_id "name";
       post_startup_script =
         Prop.computed __resource_type __resource_id
           "post_startup_script";
       project =
         Prop.computed __resource_type __resource_id "project";
     }
      : t)
  in
  __resource_attributes
