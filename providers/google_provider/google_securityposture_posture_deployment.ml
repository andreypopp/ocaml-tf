(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type google_securityposture_posture_deployment__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** google_securityposture_posture_deployment__timeouts *)

type google_securityposture_posture_deployment = {
  description : string prop option; [@option]
      (** Description of the posture deployment. *)
  id : string prop option; [@option]  (** id *)
  location : string prop;
      (** The location of the resource, eg. global'. *)
  parent : string prop;
      (** The parent of the resource, an organization. Format should be 'organizations/{organization_id}'. *)
  posture_deployment_id : string prop;
      (** ID of the posture deployment. *)
  posture_id : string prop;
      (** Relative name of the posture which needs to be deployed. It should be in the format:
  organizations/{organization_id}/locations/{location}/postures/{posture_id} *)
  posture_revision_id : string prop;
      (** Revision_id the posture which needs to be deployed. *)
  target_resource : string prop;
      (** The resource on which the posture should be deployed. This can be in one of the following formats:
projects/{project_number},
folders/{folder_number},
organizations/{organization_id} *)
  timeouts :
    google_securityposture_posture_deployment__timeouts option;
}
[@@deriving yojson_of]
(** google_securityposture_posture_deployment *)

let google_securityposture_posture_deployment ?description ?id
    ?timeouts ~location ~parent ~posture_deployment_id ~posture_id
    ~posture_revision_id ~target_resource __resource_id =
  let __resource_type =
    "google_securityposture_posture_deployment"
  in
  let __resource =
    {
      description;
      id;
      location;
      parent;
      posture_deployment_id;
      posture_id;
      posture_revision_id;
      target_resource;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_securityposture_posture_deployment __resource);
  ()
