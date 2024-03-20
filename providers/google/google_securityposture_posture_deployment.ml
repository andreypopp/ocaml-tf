(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

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
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** google_securityposture_posture_deployment *)

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let google_securityposture_posture_deployment ?description ?id
    ?timeouts ~location ~parent ~posture_deployment_id ~posture_id
    ~posture_revision_id ~target_resource () :
    google_securityposture_posture_deployment =
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

type t = {
  create_time : string prop;
  description : string prop;
  desired_posture_id : string prop;
  desired_posture_revision_id : string prop;
  etag : string prop;
  failure_message : string prop;
  id : string prop;
  location : string prop;
  name : string prop;
  parent : string prop;
  posture_deployment_id : string prop;
  posture_id : string prop;
  posture_revision_id : string prop;
  reconciling : bool prop;
  state : string prop;
  target_resource : string prop;
  update_time : string prop;
}

let make ?description ?id ?timeouts ~location ~parent
    ~posture_deployment_id ~posture_id ~posture_revision_id
    ~target_resource __id =
  let __type = "google_securityposture_posture_deployment" in
  let __attrs =
    ({
       create_time = Prop.computed __type __id "create_time";
       description = Prop.computed __type __id "description";
       desired_posture_id =
         Prop.computed __type __id "desired_posture_id";
       desired_posture_revision_id =
         Prop.computed __type __id "desired_posture_revision_id";
       etag = Prop.computed __type __id "etag";
       failure_message = Prop.computed __type __id "failure_message";
       id = Prop.computed __type __id "id";
       location = Prop.computed __type __id "location";
       name = Prop.computed __type __id "name";
       parent = Prop.computed __type __id "parent";
       posture_deployment_id =
         Prop.computed __type __id "posture_deployment_id";
       posture_id = Prop.computed __type __id "posture_id";
       posture_revision_id =
         Prop.computed __type __id "posture_revision_id";
       reconciling = Prop.computed __type __id "reconciling";
       state = Prop.computed __type __id "state";
       target_resource = Prop.computed __type __id "target_resource";
       update_time = Prop.computed __type __id "update_time";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_securityposture_posture_deployment
        (google_securityposture_posture_deployment ?description ?id
           ?timeouts ~location ~parent ~posture_deployment_id
           ~posture_id ~posture_revision_id ~target_resource ());
    attrs = __attrs;
  }

let register ?tf_module ?description ?id ?timeouts ~location ~parent
    ~posture_deployment_id ~posture_id ~posture_revision_id
    ~target_resource __id =
  let (r : _ Tf_core.resource) =
    make ?description ?id ?timeouts ~location ~parent
      ~posture_deployment_id ~posture_id ~posture_revision_id
      ~target_resource __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
