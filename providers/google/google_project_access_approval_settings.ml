(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type enrolled_services = {
  cloud_product : string prop;
      (** The product for which Access Approval will be enrolled. Allowed values are listed (case-sensitive):
  all
  appengine.googleapis.com
  bigquery.googleapis.com
  bigtable.googleapis.com
  cloudkms.googleapis.com
  compute.googleapis.com
  dataflow.googleapis.com
  iam.googleapis.com
  pubsub.googleapis.com
  storage.googleapis.com *)
  enrollment_level : string prop option; [@option]
      (** The enrollment level of the service. Default value: BLOCK_ALL Possible values: [BLOCK_ALL] *)
}
[@@deriving yojson_of]
(** A list of Google Cloud Services for which the given resource has Access Approval enrolled.
Access requests for the resource given by name against any of these services contained here will be required
to have explicit approval. Enrollment can only be done on an all or nothing basis.

A maximum of 10 enrolled services will be enforced, to be expanded as the set of supported services is expanded. *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type google_project_access_approval_settings = {
  active_key_version : string prop option; [@option]
      (** The asymmetric crypto key version to use for signing approval requests.
Empty active_key_version indicates that a Google-managed key should be used for signing.
This property will be ignored if set by an ancestor of the resource, and new non-empty values may not be set. *)
  id : string prop option; [@option]  (** id *)
  notification_emails : string prop list option; [@option]
      (** A list of email addresses to which notifications relating to approval requests should be sent.
Notifications relating to a resource will be sent to all emails in the settings of ancestor
resources of that resource. A maximum of 50 email addresses are allowed. *)
  project : string prop option; [@option]  (** Project id. *)
  project_id : string prop;
      (** ID of the project of the access approval settings. *)
  enrolled_services : enrolled_services list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** google_project_access_approval_settings *)

let enrolled_services ?enrollment_level ~cloud_product () :
    enrolled_services =
  { cloud_product; enrollment_level }

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let google_project_access_approval_settings ?active_key_version ?id
    ?notification_emails ?project ?timeouts ~project_id
    ~enrolled_services () : google_project_access_approval_settings =
  {
    active_key_version;
    id;
    notification_emails;
    project;
    project_id;
    enrolled_services;
    timeouts;
  }

type t = {
  active_key_version : string prop;
  ancestor_has_active_key_version : bool prop;
  enrolled_ancestor : bool prop;
  id : string prop;
  invalid_key_version : bool prop;
  name : string prop;
  notification_emails : string list prop;
  project : string prop;
  project_id : string prop;
}

let make ?active_key_version ?id ?notification_emails ?project
    ?timeouts ~project_id ~enrolled_services __id =
  let __type = "google_project_access_approval_settings" in
  let __attrs =
    ({
       active_key_version =
         Prop.computed __type __id "active_key_version";
       ancestor_has_active_key_version =
         Prop.computed __type __id "ancestor_has_active_key_version";
       enrolled_ancestor =
         Prop.computed __type __id "enrolled_ancestor";
       id = Prop.computed __type __id "id";
       invalid_key_version =
         Prop.computed __type __id "invalid_key_version";
       name = Prop.computed __type __id "name";
       notification_emails =
         Prop.computed __type __id "notification_emails";
       project = Prop.computed __type __id "project";
       project_id = Prop.computed __type __id "project_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_project_access_approval_settings
        (google_project_access_approval_settings ?active_key_version
           ?id ?notification_emails ?project ?timeouts ~project_id
           ~enrolled_services ());
    attrs = __attrs;
  }

let register ?tf_module ?active_key_version ?id ?notification_emails
    ?project ?timeouts ~project_id ~enrolled_services __id =
  let (r : _ Tf_core.resource) =
    make ?active_key_version ?id ?notification_emails ?project
      ?timeouts ~project_id ~enrolled_services __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
