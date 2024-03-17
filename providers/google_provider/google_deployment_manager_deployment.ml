(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type google_deployment_manager_deployment__labels = {
  key : string option; [@option]  (** Key for label. *)
  value : string option; [@option]  (** Value of label. *)
}
[@@deriving yojson_of]
(** Key-value pairs to apply to this labels. *)

type google_deployment_manager_deployment__target__config = {
  content : string;
      (** The full YAML contents of your configuration file. *)
}
[@@deriving yojson_of]
(** The root configuration file to use for this deployment. *)

type google_deployment_manager_deployment__target__imports = {
  content : string option; [@option]
      (** The full contents of the template that you want to import. *)
  name : string option; [@option]
      (** The name of the template to import, as declared in the YAML
configuration. *)
}
[@@deriving yojson_of]
(** Specifies import files for this configuration. This can be
used to import templates or other files. For example, you might
import a text file in order to use the file in a template. *)

type google_deployment_manager_deployment__target = {
  config : google_deployment_manager_deployment__target__config list;
  imports :
    google_deployment_manager_deployment__target__imports list;
}
[@@deriving yojson_of]
(** Parameters that define your deployment, including the deployment
configuration and relevant templates. *)

type google_deployment_manager_deployment__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** google_deployment_manager_deployment__timeouts *)

type google_deployment_manager_deployment = {
  create_policy : string option; [@option]
      (** Set the policy to use for creating new resources. Only used on
create and update. Valid values are 'CREATE_OR_ACQUIRE' (default) or
'ACQUIRE'. If set to 'ACQUIRE' and resources do not already exist,
the deployment will fail. Note that updating this field does not
actually affect the deployment, just how it is updated. Default value: CREATE_OR_ACQUIRE Possible values: [ACQUIRE, CREATE_OR_ACQUIRE] *)
  delete_policy : string option; [@option]
      (** Set the policy to use for deleting new resources on update/delete.
Valid values are 'DELETE' (default) or 'ABANDON'. If 'DELETE',
resource is deleted after removal from Deployment Manager. If
'ABANDON', the resource is only removed from Deployment Manager
and is not actually deleted. Note that updating this field does not
actually change the deployment, just how it is updated. Default value: DELETE Possible values: [ABANDON, DELETE] *)
  description : string option; [@option]
      (** Optional user-provided description of deployment. *)
  name : string;  (** Unique name for the deployment *)
  preview : bool option; [@option]
      (** If set to true, a deployment is created with shell resources
that are not actually instantiated. This allows you to preview a
deployment. It can be updated to false to actually deploy
with real resources.
 ~>**NOTE:** Deployment Manager does not allow update
of a deployment in preview (unless updating to preview=false). Thus,
Terraform will force-recreate deployments if either preview is updated
to true or if other fields are updated while preview is true. *)
  labels : google_deployment_manager_deployment__labels list;
  target : google_deployment_manager_deployment__target list;
  timeouts : google_deployment_manager_deployment__timeouts option;
}
[@@deriving yojson_of]
(** google_deployment_manager_deployment *)

let google_deployment_manager_deployment ?create_policy
    ?delete_policy ?description ?preview ?timeouts ~name ~labels
    ~target __resource_id =
  let __resource_type = "google_deployment_manager_deployment" in
  let __resource =
    {
      create_policy;
      delete_policy;
      description;
      name;
      preview;
      labels;
      target;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_deployment_manager_deployment __resource);
  ()
