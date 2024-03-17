(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type google_access_context_manager_service_perimeters__service_perimeters__spec__egress_policies__egress_from__sources = {
  access_level : string option; [@option]
      (** An AccessLevel resource name that allows resources outside the ServicePerimeter to be accessed from the inside. *)
}
[@@deriving yojson_of]
(** Sources that this EgressPolicy authorizes access from. *)

type google_access_context_manager_service_perimeters__service_perimeters__spec__egress_policies__egress_from = {
  identities : string list option; [@option]
      (** A list of identities that are allowed access through this 'EgressPolicy'.
Should be in the format of email address. The email address should
represent individual user or service account only. *)
  identity_type : string option; [@option]
      (** Specifies the type of identities that are allowed access to outside the
perimeter. If left unspecified, then members of 'identities' field will
be allowed access. Possible values: [IDENTITY_TYPE_UNSPECIFIED, ANY_IDENTITY, ANY_USER_ACCOUNT, ANY_SERVICE_ACCOUNT] *)
  source_restriction : string option; [@option]
      (** Whether to enforce traffic restrictions based on 'sources' field. If the 'sources' field is non-empty, then this field must be set to 'SOURCE_RESTRICTION_ENABLED'. Possible values: [SOURCE_RESTRICTION_UNSPECIFIED, SOURCE_RESTRICTION_ENABLED, SOURCE_RESTRICTION_DISABLED] *)
  sources :
    google_access_context_manager_service_perimeters__service_perimeters__spec__egress_policies__egress_from__sources
    list;
}
[@@deriving yojson_of]
(** Defines conditions on the source of a request causing this 'EgressPolicy' to apply. *)

type google_access_context_manager_service_perimeters__service_perimeters__spec__egress_policies__egress_to__operations__method_selectors = {
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

type google_access_context_manager_service_perimeters__service_perimeters__spec__egress_policies__egress_to__operations = {
  service_name : string option; [@option]
      (** The name of the API whose methods or permissions the 'IngressPolicy' or
'EgressPolicy' want to allow. A single 'ApiOperation' with serviceName
field set to '*' will allow all methods AND permissions for all services. *)
  method_selectors :
    google_access_context_manager_service_perimeters__service_perimeters__spec__egress_policies__egress_to__operations__method_selectors
    list;
}
[@@deriving yojson_of]
(** A list of 'ApiOperations' that this egress rule applies to. A request matches
if it contains an operation/service in this list. *)

type google_access_context_manager_service_perimeters__service_perimeters__spec__egress_policies__egress_to = {
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
    google_access_context_manager_service_perimeters__service_perimeters__spec__egress_policies__egress_to__operations
    list;
}
[@@deriving yojson_of]
(** Defines the conditions on the 'ApiOperation' and destination resources that
cause this 'EgressPolicy' to apply. *)

type google_access_context_manager_service_perimeters__service_perimeters__spec__egress_policies = {
  egress_from :
    google_access_context_manager_service_perimeters__service_perimeters__spec__egress_policies__egress_from
    list;
  egress_to :
    google_access_context_manager_service_perimeters__service_perimeters__spec__egress_policies__egress_to
    list;
}
[@@deriving yojson_of]
(** List of EgressPolicies to apply to the perimeter. A perimeter may
have multiple EgressPolicies, each of which is evaluated separately.
Access is granted if any EgressPolicy grants it. Must be empty for
a perimeter bridge. *)

type google_access_context_manager_service_perimeters__service_perimeters__spec__ingress_policies__ingress_from__sources = {
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

type google_access_context_manager_service_perimeters__service_perimeters__spec__ingress_policies__ingress_from = {
  identities : string list option; [@option]
      (** A list of identities that are allowed access through this ingress policy.
Should be in the format of email address. The email address should represent
individual user or service account only. *)
  identity_type : string option; [@option]
      (** Specifies the type of identities that are allowed access from outside the
perimeter. If left unspecified, then members of 'identities' field will be
allowed access. Possible values: [IDENTITY_TYPE_UNSPECIFIED, ANY_IDENTITY, ANY_USER_ACCOUNT, ANY_SERVICE_ACCOUNT] *)
  sources :
    google_access_context_manager_service_perimeters__service_perimeters__spec__ingress_policies__ingress_from__sources
    list;
}
[@@deriving yojson_of]
(** Defines the conditions on the source of a request causing this 'IngressPolicy'
to apply. *)

type google_access_context_manager_service_perimeters__service_perimeters__spec__ingress_policies__ingress_to__operations__method_selectors = {
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

type google_access_context_manager_service_perimeters__service_perimeters__spec__ingress_policies__ingress_to__operations = {
  service_name : string option; [@option]
      (** The name of the API whose methods or permissions the 'IngressPolicy' or
'EgressPolicy' want to allow. A single 'ApiOperation' with 'serviceName'
field set to '*' will allow all methods AND permissions for all services. *)
  method_selectors :
    google_access_context_manager_service_perimeters__service_perimeters__spec__ingress_policies__ingress_to__operations__method_selectors
    list;
}
[@@deriving yojson_of]
(** A list of 'ApiOperations' the sources specified in corresponding 'IngressFrom'
are allowed to perform in this 'ServicePerimeter'. *)

type google_access_context_manager_service_perimeters__service_perimeters__spec__ingress_policies__ingress_to = {
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
    google_access_context_manager_service_perimeters__service_perimeters__spec__ingress_policies__ingress_to__operations
    list;
}
[@@deriving yojson_of]
(** Defines the conditions on the 'ApiOperation' and request destination that cause
this 'IngressPolicy' to apply. *)

type google_access_context_manager_service_perimeters__service_perimeters__spec__ingress_policies = {
  ingress_from :
    google_access_context_manager_service_perimeters__service_perimeters__spec__ingress_policies__ingress_from
    list;
  ingress_to :
    google_access_context_manager_service_perimeters__service_perimeters__spec__ingress_policies__ingress_to
    list;
}
[@@deriving yojson_of]
(** List of 'IngressPolicies' to apply to the perimeter. A perimeter may
have multiple 'IngressPolicies', each of which is evaluated
separately. Access is granted if any 'Ingress Policy' grants it.
Must be empty for a perimeter bridge. *)

type google_access_context_manager_service_perimeters__service_perimeters__spec__vpc_accessible_services = {
  allowed_services : string list option; [@option]
      (** The list of APIs usable within the Service Perimeter.
Must be empty unless 'enableRestriction' is True. *)
  enable_restriction : bool option; [@option]
      (** Whether to restrict API calls within the Service Perimeter to the
list of APIs specified in 'allowedServices'. *)
}
[@@deriving yojson_of]
(** Specifies how APIs are allowed to communicate within the Service
Perimeter. *)

type google_access_context_manager_service_perimeters__service_perimeters__spec = {
  access_levels : string list option; [@option]
      (** A list of AccessLevel resource names that allow resources within
the ServicePerimeter to be accessed from the internet.
AccessLevels listed must be in the same policy as this
ServicePerimeter. Referencing a nonexistent AccessLevel is a
syntax error. If no AccessLevel names are listed, resources within
the perimeter can only be accessed via GCP calls with request
origins within the perimeter. For Service Perimeter Bridge, must
be empty.

Format: accessPolicies/{policy_id}/accessLevels/{access_level_name} *)
  resources : string list option; [@option]
      (** A list of GCP resources that are inside of the service perimeter.
Currently only projects are allowed.
Format: projects/{project_number} *)
  restricted_services : string list option; [@option]
      (** GCP services that are subject to the Service Perimeter
restrictions. Must contain a list of services. For example, if
'storage.googleapis.com' is specified, access to the storage
buckets inside the perimeter must meet the perimeter's access
restrictions. *)
  egress_policies :
    google_access_context_manager_service_perimeters__service_perimeters__spec__egress_policies
    list;
  ingress_policies :
    google_access_context_manager_service_perimeters__service_perimeters__spec__ingress_policies
    list;
  vpc_accessible_services :
    google_access_context_manager_service_perimeters__service_perimeters__spec__vpc_accessible_services
    list;
}
[@@deriving yojson_of]
(** Proposed (or dry run) ServicePerimeter configuration.
This configuration allows to specify and test ServicePerimeter configuration
without enforcing actual access restrictions. Only allowed to be set when
the 'useExplicitDryRunSpec' flag is set. *)

type google_access_context_manager_service_perimeters__service_perimeters__status__egress_policies__egress_from__sources = {
  access_level : string option; [@option]
      (** An AccessLevel resource name that allows resources outside the ServicePerimeter to be accessed from the inside. *)
}
[@@deriving yojson_of]
(** Sources that this EgressPolicy authorizes access from. *)

type google_access_context_manager_service_perimeters__service_perimeters__status__egress_policies__egress_from = {
  identities : string list option; [@option]
      (** A list of identities that are allowed access through this 'EgressPolicy'.
Should be in the format of email address. The email address should
represent individual user or service account only. *)
  identity_type : string option; [@option]
      (** Specifies the type of identities that are allowed access to outside the
perimeter. If left unspecified, then members of 'identities' field will
be allowed access. Possible values: [IDENTITY_TYPE_UNSPECIFIED, ANY_IDENTITY, ANY_USER_ACCOUNT, ANY_SERVICE_ACCOUNT] *)
  source_restriction : string option; [@option]
      (** Whether to enforce traffic restrictions based on 'sources' field. If the 'sources' field is non-empty, then this field must be set to 'SOURCE_RESTRICTION_ENABLED'. Possible values: [SOURCE_RESTRICTION_UNSPECIFIED, SOURCE_RESTRICTION_ENABLED, SOURCE_RESTRICTION_DISABLED] *)
  sources :
    google_access_context_manager_service_perimeters__service_perimeters__status__egress_policies__egress_from__sources
    list;
}
[@@deriving yojson_of]
(** Defines conditions on the source of a request causing this 'EgressPolicy' to apply. *)

type google_access_context_manager_service_perimeters__service_perimeters__status__egress_policies__egress_to__operations__method_selectors = {
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

type google_access_context_manager_service_perimeters__service_perimeters__status__egress_policies__egress_to__operations = {
  service_name : string option; [@option]
      (** The name of the API whose methods or permissions the 'IngressPolicy' or
'EgressPolicy' want to allow. A single 'ApiOperation' with serviceName
field set to '*' will allow all methods AND permissions for all services. *)
  method_selectors :
    google_access_context_manager_service_perimeters__service_perimeters__status__egress_policies__egress_to__operations__method_selectors
    list;
}
[@@deriving yojson_of]
(** A list of 'ApiOperations' that this egress rule applies to. A request matches
if it contains an operation/service in this list. *)

type google_access_context_manager_service_perimeters__service_perimeters__status__egress_policies__egress_to = {
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
    google_access_context_manager_service_perimeters__service_perimeters__status__egress_policies__egress_to__operations
    list;
}
[@@deriving yojson_of]
(** Defines the conditions on the 'ApiOperation' and destination resources that
cause this 'EgressPolicy' to apply. *)

type google_access_context_manager_service_perimeters__service_perimeters__status__egress_policies = {
  egress_from :
    google_access_context_manager_service_perimeters__service_perimeters__status__egress_policies__egress_from
    list;
  egress_to :
    google_access_context_manager_service_perimeters__service_perimeters__status__egress_policies__egress_to
    list;
}
[@@deriving yojson_of]
(** List of EgressPolicies to apply to the perimeter. A perimeter may
have multiple EgressPolicies, each of which is evaluated separately.
Access is granted if any EgressPolicy grants it. Must be empty for
a perimeter bridge. *)

type google_access_context_manager_service_perimeters__service_perimeters__status__ingress_policies__ingress_from__sources = {
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

type google_access_context_manager_service_perimeters__service_perimeters__status__ingress_policies__ingress_from = {
  identities : string list option; [@option]
      (** A list of identities that are allowed access through this ingress policy.
Should be in the format of email address. The email address should represent
individual user or service account only. *)
  identity_type : string option; [@option]
      (** Specifies the type of identities that are allowed access from outside the
perimeter. If left unspecified, then members of 'identities' field will be
allowed access. Possible values: [IDENTITY_TYPE_UNSPECIFIED, ANY_IDENTITY, ANY_USER_ACCOUNT, ANY_SERVICE_ACCOUNT] *)
  sources :
    google_access_context_manager_service_perimeters__service_perimeters__status__ingress_policies__ingress_from__sources
    list;
}
[@@deriving yojson_of]
(** Defines the conditions on the source of a request causing this 'IngressPolicy'
to apply. *)

type google_access_context_manager_service_perimeters__service_perimeters__status__ingress_policies__ingress_to__operations__method_selectors = {
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

type google_access_context_manager_service_perimeters__service_perimeters__status__ingress_policies__ingress_to__operations = {
  service_name : string option; [@option]
      (** The name of the API whose methods or permissions the 'IngressPolicy' or
'EgressPolicy' want to allow. A single 'ApiOperation' with 'serviceName'
field set to '*' will allow all methods AND permissions for all services. *)
  method_selectors :
    google_access_context_manager_service_perimeters__service_perimeters__status__ingress_policies__ingress_to__operations__method_selectors
    list;
}
[@@deriving yojson_of]
(** A list of 'ApiOperations' the sources specified in corresponding 'IngressFrom'
are allowed to perform in this 'ServicePerimeter'. *)

type google_access_context_manager_service_perimeters__service_perimeters__status__ingress_policies__ingress_to = {
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
    google_access_context_manager_service_perimeters__service_perimeters__status__ingress_policies__ingress_to__operations
    list;
}
[@@deriving yojson_of]
(** Defines the conditions on the 'ApiOperation' and request destination that cause
this 'IngressPolicy' to apply. *)

type google_access_context_manager_service_perimeters__service_perimeters__status__ingress_policies = {
  ingress_from :
    google_access_context_manager_service_perimeters__service_perimeters__status__ingress_policies__ingress_from
    list;
  ingress_to :
    google_access_context_manager_service_perimeters__service_perimeters__status__ingress_policies__ingress_to
    list;
}
[@@deriving yojson_of]
(** List of 'IngressPolicies' to apply to the perimeter. A perimeter may
have multiple 'IngressPolicies', each of which is evaluated
separately. Access is granted if any 'Ingress Policy' grants it.
Must be empty for a perimeter bridge. *)

type google_access_context_manager_service_perimeters__service_perimeters__status__vpc_accessible_services = {
  allowed_services : string list option; [@option]
      (** The list of APIs usable within the Service Perimeter.
Must be empty unless 'enableRestriction' is True. *)
  enable_restriction : bool option; [@option]
      (** Whether to restrict API calls within the Service Perimeter to the
list of APIs specified in 'allowedServices'. *)
}
[@@deriving yojson_of]
(** Specifies how APIs are allowed to communicate within the Service
Perimeter. *)

type google_access_context_manager_service_perimeters__service_perimeters__status = {
  access_levels : string list option; [@option]
      (** A list of AccessLevel resource names that allow resources within
the ServicePerimeter to be accessed from the internet.
AccessLevels listed must be in the same policy as this
ServicePerimeter. Referencing a nonexistent AccessLevel is a
syntax error. If no AccessLevel names are listed, resources within
the perimeter can only be accessed via GCP calls with request
origins within the perimeter. For Service Perimeter Bridge, must
be empty.

Format: accessPolicies/{policy_id}/accessLevels/{access_level_name} *)
  resources : string list option; [@option]
      (** A list of GCP resources that are inside of the service perimeter.
Currently only projects are allowed.
Format: projects/{project_number} *)
  restricted_services : string list option; [@option]
      (** GCP services that are subject to the Service Perimeter
restrictions. Must contain a list of services. For example, if
'storage.googleapis.com' is specified, access to the storage
buckets inside the perimeter must meet the perimeter's access
restrictions. *)
  egress_policies :
    google_access_context_manager_service_perimeters__service_perimeters__status__egress_policies
    list;
  ingress_policies :
    google_access_context_manager_service_perimeters__service_perimeters__status__ingress_policies
    list;
  vpc_accessible_services :
    google_access_context_manager_service_perimeters__service_perimeters__status__vpc_accessible_services
    list;
}
[@@deriving yojson_of]
(** ServicePerimeter configuration. Specifies sets of resources,
restricted services and access levels that determine
perimeter content and boundaries. *)

type google_access_context_manager_service_perimeters__service_perimeters = {
  create_time : string;
      (** Time the AccessPolicy was created in UTC. *)
  description : string option; [@option]
      (** Description of the ServicePerimeter and its use. Does not affect
behavior. *)
  name : string;
      (** Resource name for the ServicePerimeter. The short_name component must
begin with a letter and only include alphanumeric and '_'.
Format: accessPolicies/{policy_id}/servicePerimeters/{short_name} *)
  perimeter_type : string option; [@option]
      (** Specifies the type of the Perimeter. There are two types: regular and
bridge. Regular Service Perimeter contains resources, access levels,
and restricted services. Every resource can be in at most
ONE regular Service Perimeter.

In addition to being in a regular service perimeter, a resource can also
be in zero or more perimeter bridges. A perimeter bridge only contains
resources. Cross project operations are permitted if all effected
resources share some perimeter (whether bridge or regular). Perimeter
Bridge does not contain access levels or services: those are governed
entirely by the regular perimeter that resource is in.

Perimeter Bridges are typically useful when building more complex
topologies with many independent perimeters that need to share some data
with a common perimeter, but should not be able to share data among
themselves. Default value: PERIMETER_TYPE_REGULAR Possible values: [PERIMETER_TYPE_REGULAR, PERIMETER_TYPE_BRIDGE] *)
  title : string;
      (** Human readable title. Must be unique within the Policy. *)
  update_time : string;
      (** Time the AccessPolicy was updated in UTC. *)
  use_explicit_dry_run_spec : bool option; [@option]
      (** Use explicit dry run spec flag. Ordinarily, a dry-run spec implicitly exists
for all Service Perimeters, and that spec is identical to the status for those
Service Perimeters. When this flag is set, it inhibits the generation of the
implicit spec, thereby allowing the user to explicitly provide a
configuration (spec) to use in a dry-run version of the Service Perimeter.
This allows the user to test changes to the enforced config (status) without
actually enforcing them. This testing is done through analyzing the differences
between currently enforced and suggested restrictions. useExplicitDryRunSpec must
bet set to True if any of the fields in the spec are set to non-default values. *)
  spec :
    google_access_context_manager_service_perimeters__service_perimeters__spec
    list;
  status :
    google_access_context_manager_service_perimeters__service_perimeters__status
    list;
}
[@@deriving yojson_of]
(** The desired Service Perimeters that should replace all existing Service Perimeters in the Access Policy. *)

type google_access_context_manager_service_perimeters__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** google_access_context_manager_service_perimeters__timeouts *)

type google_access_context_manager_service_perimeters = {
  id : string option; [@option]  (** id *)
  parent : string;
      (** The AccessPolicy this ServicePerimeter lives in.
Format: accessPolicies/{policy_id} *)
  service_perimeters :
    google_access_context_manager_service_perimeters__service_perimeters
    list;
  timeouts :
    google_access_context_manager_service_perimeters__timeouts option;
}
[@@deriving yojson_of]
(** google_access_context_manager_service_perimeters *)

let google_access_context_manager_service_perimeters ?id ?timeouts
    ~parent ~service_perimeters __resource_id =
  let __resource_type =
    "google_access_context_manager_service_perimeters"
  in
  let __resource = { id; parent; service_perimeters; timeouts } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_access_context_manager_service_perimeters
       __resource);
  ()
