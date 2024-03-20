(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type audit_log_config = {
  exempted_members : string prop list option; [@option]
      (** Identities that do not cause logging for this type of permission. Each entry can have one of the following values:user:{emailid}: An email address that represents a specific Google account. For example, alice@gmail.com or joe@example.com. serviceAccount:{emailid}: An email address that represents a service account. For example, my-other-app@appspot.gserviceaccount.com. group:{emailid}: An email address that represents a Google group. For example, admins@example.com. domain:{domain}: A G Suite domain (primary, instead of alias) name that represents all the users of that domain. For example, google.com or example.com. *)
  log_type : string prop;
      (** Permission type for which logging is to be configured. Must be one of DATA_READ, DATA_WRITE, or ADMIN_READ. *)
}
[@@deriving yojson_of]
(** The configuration for logging of each type of permission. This can be specified multiple times. *)

type google_project_iam_audit_config = {
  id : string prop option; [@option]  (** id *)
  project : string prop;  (** project *)
  service : string prop;
      (** Service which will be enabled for audit logging. The special value allServices covers all services. *)
  audit_log_config : audit_log_config list;
}
[@@deriving yojson_of]
(** google_project_iam_audit_config *)

let audit_log_config ?exempted_members ~log_type () :
    audit_log_config =
  { exempted_members; log_type }

let google_project_iam_audit_config ?id ~project ~service
    ~audit_log_config () : google_project_iam_audit_config =
  { id; project; service; audit_log_config }

type t = {
  etag : string prop;
  id : string prop;
  project : string prop;
  service : string prop;
}

let make ?id ~project ~service ~audit_log_config __id =
  let __type = "google_project_iam_audit_config" in
  let __attrs =
    ({
       etag = Prop.computed __type __id "etag";
       id = Prop.computed __type __id "id";
       project = Prop.computed __type __id "project";
       service = Prop.computed __type __id "service";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_project_iam_audit_config
        (google_project_iam_audit_config ?id ~project ~service
           ~audit_log_config ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~project ~service ~audit_log_config __id
    =
  let (r : _ Tf_core.resource) =
    make ?id ~project ~service ~audit_log_config __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
