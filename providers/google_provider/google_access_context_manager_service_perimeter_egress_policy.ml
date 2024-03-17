(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type google_access_context_manager_service_perimeter_egress_policy__egress_from__sources = {
  access_level : string option; [@option]
      (** An AccessLevel resource name that allows resources outside the ServicePerimeter to be accessed from the inside. *)
}
[@@deriving yojson_of]
(** Sources that this EgressPolicy authorizes access from. *)

type google_access_context_manager_service_perimeter_egress_policy__egress_from = {
  identities : string list option; [@option]
      (** A list of identities that are allowed access through this 'EgressPolicy'.
Should be in the format of email address. The email address should
represent individual user or service account only. *)
  identity_type : string option; [@option]
      (** Specifies the type of identities that are allowed access to outside the
perimeter. If left unspecified, then members of 'identities' field will
be allowed access. Possible values: [ANY_IDENTITY, ANY_USER_ACCOUNT, ANY_SERVICE_ACCOUNT] *)
  source_restriction : string option; [@option]
      (** Whether to enforce traffic restrictions based on 'sources' field. If the 'sources' field is non-empty, then this field must be set to 'SOURCE_RESTRICTION_ENABLED'. Possible values: [SOURCE_RESTRICTION_UNSPECIFIED, SOURCE_RESTRICTION_ENABLED, SOURCE_RESTRICTION_DISABLED] *)
  sources :
    google_access_context_manager_service_perimeter_egress_policy__egress_from__sources
    list;
}
[@@deriving yojson_of]
(** Defines conditions on the source of a request causing this 'EgressPolicy' to apply. *)

type google_access_context_manager_service_perimeter_egress_policy__egress_to__operations__method_selectors = {
  method_ : string option; [@option] [@key "method"]
      (** Value for 'method' should be a valid method name for the corresponding
'serviceName' in 'ApiOperation'. If '*' used as value for method,
then ALL methods and permissions are allowed. *)
  permission : string option; [@option]
      (** Value for permission should be a valid Cloud IAM permission for the
corresponding 'serviceName' in 'ApiOperation'. *)
}
[@@deriving yojson_of]
(** API methods or permissions to allow. Method or permission must belong
to the service specified by 'serviceName' field. A single MethodSelector
entry with '*' specified for the 'method' field will allow all methods
AND permissions for the service specified in 'serviceName'. *)

type google_access_context_manager_service_perimeter_egress_policy__egress_to__operations = {
  service_name : string option; [@option]
      (** The name of the API whose methods or permissions the 'IngressPolicy' or
'EgressPolicy' want to allow. A single 'ApiOperation' with serviceName
field set to '*' will allow all methods AND permissions for all services. *)
  method_selectors :
    google_access_context_manager_service_perimeter_egress_policy__egress_to__operations__method_selectors
    list;
}
[@@deriving yojson_of]
(** A list of 'ApiOperations' that this egress rule applies to. A request matches
if it contains an operation/service in this list. *)

type google_access_context_manager_service_perimeter_egress_policy__egress_to = {
  external_resources : string list option; [@option]
      (** A list of external resources that are allowed to be accessed. A request
matches if it contains an external resource in this list (Example:
s3://bucket/path). Currently '*' is not allowed. *)
  resources : string list option; [@option]
      (** A list of resources, currently only projects in the form
'projects/<projectnumber>', that match this to stanza. A request matches
if it contains a resource in this list. If * is specified for resources,
then this 'EgressTo' rule will authorize access to all resources outside
the perimeter. *)
  operations :
    google_access_context_manager_service_perimeter_egress_policy__egress_to__operations
    list;
}
[@@deriving yojson_of]
(** Defines the conditions on the 'ApiOperation' and destination resources that
cause this 'EgressPolicy' to apply. *)

type google_access_context_manager_service_perimeter_egress_policy__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** google_access_context_manager_service_perimeter_egress_policy__timeouts *)

type google_access_context_manager_service_perimeter_egress_policy = {
  perimeter : string;
      (** The name of the Service Perimeter to add this resource to. *)
  egress_from :
    google_access_context_manager_service_perimeter_egress_policy__egress_from
    list;
  egress_to :
    google_access_context_manager_service_perimeter_egress_policy__egress_to
    list;
  timeouts :
    google_access_context_manager_service_perimeter_egress_policy__timeouts
    option;
}
[@@deriving yojson_of]
(** google_access_context_manager_service_perimeter_egress_policy *)

let google_access_context_manager_service_perimeter_egress_policy
    ?timeouts ~perimeter ~egress_from ~egress_to __resource_id =
  let __resource_type =
    "google_access_context_manager_service_perimeter_egress_policy"
  in
  let __resource = { perimeter; egress_from; egress_to; timeouts } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_access_context_manager_service_perimeter_egress_policy
       __resource);
  ()
