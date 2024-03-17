(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type google_access_context_manager_service_perimeter_ingress_policy__ingress_from__sources = {
  access_level : string option; [@option]
      (** An 'AccessLevel' resource name that allow resources within the
'ServicePerimeters' to be accessed from the internet. 'AccessLevels' listed
must be in the same policy as this 'ServicePerimeter'. Referencing a nonexistent
'AccessLevel' will cause an error. If no 'AccessLevel' names are listed,
resources within the perimeter can only be accessed via Google Cloud calls
with request origins within the perimeter.
Example 'accessPolicies/MY_POLICY/accessLevels/MY_LEVEL.'
If * is specified, then all IngressSources will be allowed. *)
  resource : string option; [@option]
      (** A Google Cloud resource that is allowed to ingress the perimeter.
Requests from these resources will be allowed to access perimeter data.
Currently only projects are allowed. Format 'projects/{project_number}'
The project may be in any Google Cloud organization, not just the
organization that the perimeter is defined in. '*' is not allowed, the case
of allowing all Google Cloud resources only is not supported. *)
}
[@@deriving yojson_of]
(** Sources that this 'IngressPolicy' authorizes access from. *)

type google_access_context_manager_service_perimeter_ingress_policy__ingress_from = {
  identities : string list option; [@option]
      (** A list of identities that are allowed access through this ingress policy.
Should be in the format of email address. The email address should represent
individual user or service account only. *)
  identity_type : string option; [@option]
      (** Specifies the type of identities that are allowed access from outside the
perimeter. If left unspecified, then members of 'identities' field will be
allowed access. Possible values: [ANY_IDENTITY, ANY_USER_ACCOUNT, ANY_SERVICE_ACCOUNT] *)
  sources :
    google_access_context_manager_service_perimeter_ingress_policy__ingress_from__sources
    list;
}
[@@deriving yojson_of]
(** Defines the conditions on the source of a request causing this 'IngressPolicy'
to apply. *)

type google_access_context_manager_service_perimeter_ingress_policy__ingress_to__operations__method_selectors = {
  method_ : string option; [@option] [@key "method"]
      (** Value for method should be a valid method name for the corresponding
serviceName in 'ApiOperation'. If '*' used as value for 'method', then
ALL methods and permissions are allowed. *)
  permission : string option; [@option]
      (** Value for permission should be a valid Cloud IAM permission for the
corresponding 'serviceName' in 'ApiOperation'. *)
}
[@@deriving yojson_of]
(** API methods or permissions to allow. Method or permission must belong to
the service specified by serviceName field. A single 'MethodSelector' entry
with '*' specified for the method field will allow all methods AND
permissions for the service specified in 'serviceName'. *)

type google_access_context_manager_service_perimeter_ingress_policy__ingress_to__operations = {
  service_name : string option; [@option]
      (** The name of the API whose methods or permissions the 'IngressPolicy' or
'EgressPolicy' want to allow. A single 'ApiOperation' with 'serviceName'
field set to '*' will allow all methods AND permissions for all services. *)
  method_selectors :
    google_access_context_manager_service_perimeter_ingress_policy__ingress_to__operations__method_selectors
    list;
}
[@@deriving yojson_of]
(** A list of 'ApiOperations' the sources specified in corresponding 'IngressFrom'
are allowed to perform in this 'ServicePerimeter'. *)

type google_access_context_manager_service_perimeter_ingress_policy__ingress_to = {
  resources : string list option; [@option]
      (** A list of resources, currently only projects in the form
'projects/<projectnumber>', protected by this 'ServicePerimeter'
that are allowed to be accessed by sources defined in the
corresponding 'IngressFrom'. A request matches if it contains
a resource in this list. If '*' is specified for resources,
then this 'IngressTo' rule will authorize access to all
resources inside the perimeter, provided that the request
also matches the 'operations' field. *)
  operations :
    google_access_context_manager_service_perimeter_ingress_policy__ingress_to__operations
    list;
}
[@@deriving yojson_of]
(** Defines the conditions on the 'ApiOperation' and request destination that cause
this 'IngressPolicy' to apply. *)

type google_access_context_manager_service_perimeter_ingress_policy__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** google_access_context_manager_service_perimeter_ingress_policy__timeouts *)

type google_access_context_manager_service_perimeter_ingress_policy = {
  perimeter : string;
      (** The name of the Service Perimeter to add this resource to. *)
  ingress_from :
    google_access_context_manager_service_perimeter_ingress_policy__ingress_from
    list;
  ingress_to :
    google_access_context_manager_service_perimeter_ingress_policy__ingress_to
    list;
  timeouts :
    google_access_context_manager_service_perimeter_ingress_policy__timeouts
    option;
}
[@@deriving yojson_of]
(** google_access_context_manager_service_perimeter_ingress_policy *)

let google_access_context_manager_service_perimeter_ingress_policy
    ?timeouts ~perimeter ~ingress_from ~ingress_to __resource_id =
  let __resource_type =
    "google_access_context_manager_service_perimeter_ingress_policy"
  in
  let __resource =
    { perimeter; ingress_from; ingress_to; timeouts }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_access_context_manager_service_perimeter_ingress_policy
       __resource);
  ()
