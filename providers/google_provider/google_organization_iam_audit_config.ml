(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type google_organization_iam_audit_config__audit_log_config = {
  exempted_members : string prop list option; [@option]
      (** Identities that do not cause logging for this type of permission. Each entry can have one of the following values:user:{emailid}: An email address that represents a specific Google account. For example, alice@gmail.com or joe@example.com. serviceAccount:{emailid}: An email address that represents a service account. For example, my-other-app@appspot.gserviceaccount.com. group:{emailid}: An email address that represents a Google group. For example, admins@example.com. domain:{domain}: A G Suite domain (primary, instead of alias) name that represents all the users of that domain. For example, google.com or example.com. *)
  log_type : string prop;
      (** Permission type for which logging is to be configured. Must be one of DATA_READ, DATA_WRITE, or ADMIN_READ. *)
}
[@@deriving yojson_of]
(** The configuration for logging of each type of permission. This can be specified multiple times. *)

type google_organization_iam_audit_config = {
  id : string prop option; [@option]  (** id *)
  org_id : string prop;
      (** The numeric ID of the organization in which you want to manage the audit logging config. *)
  service : string prop;
      (** Service which will be enabled for audit logging. The special value allServices covers all services. *)
  audit_log_config :
    google_organization_iam_audit_config__audit_log_config list;
}
[@@deriving yojson_of]
(** google_organization_iam_audit_config *)

let google_organization_iam_audit_config ?id ~org_id ~service
    ~audit_log_config __resource_id =
  let __resource_type = "google_organization_iam_audit_config" in
  let __resource = { id; org_id; service; audit_log_config } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_organization_iam_audit_config __resource);
  ()
