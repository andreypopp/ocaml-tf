(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type audit_log_config = {
  exempted_members : string prop list option; [@option]
      (** Identities that do not cause logging for this type of permission. Each entry can have one of the following values:user:{emailid}: An email address that represents a specific Google account. For example, alice@gmail.com or joe@example.com. serviceAccount:{emailid}: An email address that represents a service account. For example, my-other-app@appspot.gserviceaccount.com. group:{emailid}: An email address that represents a Google group. For example, admins@example.com. domain:{domain}: A G Suite domain (primary, instead of alias) name that represents all the users of that domain. For example, google.com or example.com. *)
  log_type : string prop;
      (** Permission type for which logging is to be configured. Must be one of DATA_READ, DATA_WRITE, or ADMIN_READ. *)
}
[@@deriving yojson_of]
(** The configuration for logging of each type of permission. This can be specified multiple times. *)

type google_folder_iam_audit_config = {
  folder : string prop;  (** folder *)
  id : string prop option; [@option]  (** id *)
  service : string prop;
      (** Service which will be enabled for audit logging. The special value allServices covers all services. *)
  audit_log_config : audit_log_config list;
}
[@@deriving yojson_of]
(** google_folder_iam_audit_config *)

let audit_log_config ?exempted_members ~log_type () :
    audit_log_config =
  { exempted_members; log_type }

let google_folder_iam_audit_config ?id ~folder ~service
    ~audit_log_config () : google_folder_iam_audit_config =
  { folder; id; service; audit_log_config }

type t = {
  etag : string prop;
  folder : string prop;
  id : string prop;
  service : string prop;
}

let register ?tf_module ?id ~folder ~service ~audit_log_config
    __resource_id =
  let __resource_type = "google_folder_iam_audit_config" in
  let __resource =
    google_folder_iam_audit_config ?id ~folder ~service
      ~audit_log_config ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_folder_iam_audit_config __resource);
  let __resource_attributes =
    ({
       etag = Prop.computed __resource_type __resource_id "etag";
       folder = Prop.computed __resource_type __resource_id "folder";
       id = Prop.computed __resource_type __resource_id "id";
       service =
         Prop.computed __resource_type __resource_id "service";
     }
      : t)
  in
  __resource_attributes
