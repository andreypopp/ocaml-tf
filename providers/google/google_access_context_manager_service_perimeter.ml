(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type spec__egress_policies__egress_from__sources = {
  access_level : string prop option; [@option]
      (** An AccessLevel resource name that allows resources outside the ServicePerimeter to be accessed from the inside. *)
}
[@@deriving yojson_of]
(** Sources that this EgressPolicy authorizes access from. *)

type spec__egress_policies__egress_from = {
  identities : string prop list option; [@option]
      (** A list of identities that are allowed access through this 'EgressPolicy'.
Should be in the format of email address. The email address should
represent individual user or service account only. *)
  identity_type : string prop option; [@option]
      (** Specifies the type of identities that are allowed access to outside the
perimeter. If left unspecified, then members of 'identities' field will
be allowed access. Possible values: [IDENTITY_TYPE_UNSPECIFIED, ANY_IDENTITY, ANY_USER_ACCOUNT, ANY_SERVICE_ACCOUNT] *)
  source_restriction : string prop option; [@option]
      (** Whether to enforce traffic restrictions based on 'sources' field. If the 'sources' field is non-empty, then this field must be set to 'SOURCE_RESTRICTION_ENABLED'. Possible values: [SOURCE_RESTRICTION_UNSPECIFIED, SOURCE_RESTRICTION_ENABLED, SOURCE_RESTRICTION_DISABLED] *)
  sources : spec__egress_policies__egress_from__sources list;
}
[@@deriving yojson_of]
(** Defines conditions on the source of a request causing this 'EgressPolicy' to apply. *)

type spec__egress_policies__egress_to__operations__method_selectors = {
  method_ : string prop option; [@option] [@key "method"]
      (** Value for 'method' should be a valid method name for the corresponding
'serviceName' in 'ApiOperation'. If '*' used as value for method,
then ALL methods and permissions are allowed. *)
  permission : string prop option; [@option]
      (** Value for permission should be a valid Cloud IAM permission for the
corresponding 'serviceName' in 'ApiOperation'. *)
}
[@@deriving yojson_of]
(** API methods or permissions to allow. Method or permission must belong
to the service specified by 'serviceName' field. A single MethodSelector
entry with '*' specified for the 'method' field will allow all methods
AND permissions for the service specified in 'serviceName'. *)

type spec__egress_policies__egress_to__operations = {
  service_name : string prop option; [@option]
      (** The name of the API whose methods or permissions the 'IngressPolicy' or
'EgressPolicy' want to allow. A single 'ApiOperation' with serviceName
field set to '*' will allow all methods AND permissions for all services. *)
  method_selectors :
    spec__egress_policies__egress_to__operations__method_selectors
    list;
}
[@@deriving yojson_of]
(** A list of 'ApiOperations' that this egress rule applies to. A request matches
if it contains an operation/service in this list. *)

type spec__egress_policies__egress_to = {
  external_resources : string prop list option; [@option]
      (** A list of external resources that are allowed to be accessed. A request
matches if it contains an external resource in this list (Example:
s3://bucket/path). Currently '*' is not allowed. *)
  resources : string prop list option; [@option]
      (** A list of resources, currently only projects in the form
'projects/<projectnumber>', that match this to stanza. A request matches
if it contains a resource in this list. If * is specified for resources,
then this 'EgressTo' rule will authorize access to all resources outside
the perimeter. *)
  operations : spec__egress_policies__egress_to__operations list;
}
[@@deriving yojson_of]
(** Defines the conditions on the 'ApiOperation' and destination resources that
cause this 'EgressPolicy' to apply. *)

type spec__egress_policies = {
  egress_from : spec__egress_policies__egress_from list;
  egress_to : spec__egress_policies__egress_to list;
}
[@@deriving yojson_of]
(** List of EgressPolicies to apply to the perimeter. A perimeter may
have multiple EgressPolicies, each of which is evaluated separately.
Access is granted if any EgressPolicy grants it. Must be empty for
a perimeter bridge. *)

type spec__ingress_policies__ingress_from__sources = {
  access_level : string prop option; [@option]
      (** An 'AccessLevel' resource name that allow resources within the
'ServicePerimeters' to be accessed from the internet. 'AccessLevels' listed
must be in the same policy as this 'ServicePerimeter'. Referencing a nonexistent
'AccessLevel' will cause an error. If no 'AccessLevel' names are listed,
resources within the perimeter can only be accessed via Google Cloud calls
with request origins within the perimeter.
Example 'accessPolicies/MY_POLICY/accessLevels/MY_LEVEL.'
If * is specified, then all IngressSources will be allowed. *)
  resource : string prop option; [@option]
      (** A Google Cloud resource that is allowed to ingress the perimeter.
Requests from these resources will be allowed to access perimeter data.
Currently only projects are allowed. Format 'projects/{project_number}'
The project may be in any Google Cloud organization, not just the
organization that the perimeter is defined in. '*' is not allowed, the case
of allowing all Google Cloud resources only is not supported. *)
}
[@@deriving yojson_of]
(** Sources that this 'IngressPolicy' authorizes access from. *)

type spec__ingress_policies__ingress_from = {
  identities : string prop list option; [@option]
      (** A list of identities that are allowed access through this ingress policy.
Should be in the format of email address. The email address should represent
individual user or service account only. *)
  identity_type : string prop option; [@option]
      (** Specifies the type of identities that are allowed access from outside the
perimeter. If left unspecified, then members of 'identities' field will be
allowed access. Possible values: [IDENTITY_TYPE_UNSPECIFIED, ANY_IDENTITY, ANY_USER_ACCOUNT, ANY_SERVICE_ACCOUNT] *)
  sources : spec__ingress_policies__ingress_from__sources list;
}
[@@deriving yojson_of]
(** Defines the conditions on the source of a request causing this 'IngressPolicy'
to apply. *)

type spec__ingress_policies__ingress_to__operations__method_selectors = {
  method_ : string prop option; [@option] [@key "method"]
      (** Value for method should be a valid method name for the corresponding
serviceName in 'ApiOperation'. If '*' used as value for 'method', then
ALL methods and permissions are allowed. *)
  permission : string prop option; [@option]
      (** Value for permission should be a valid Cloud IAM permission for the
corresponding 'serviceName' in 'ApiOperation'. *)
}
[@@deriving yojson_of]
(** API methods or permissions to allow. Method or permission must belong to
the service specified by serviceName field. A single 'MethodSelector' entry
with '*' specified for the method field will allow all methods AND
permissions for the service specified in 'serviceName'. *)

type spec__ingress_policies__ingress_to__operations = {
  service_name : string prop option; [@option]
      (** The name of the API whose methods or permissions the 'IngressPolicy' or
'EgressPolicy' want to allow. A single 'ApiOperation' with 'serviceName'
field set to '*' will allow all methods AND permissions for all services. *)
  method_selectors :
    spec__ingress_policies__ingress_to__operations__method_selectors
    list;
}
[@@deriving yojson_of]
(** A list of 'ApiOperations' the sources specified in corresponding 'IngressFrom'
are allowed to perform in this 'ServicePerimeter'. *)

type spec__ingress_policies__ingress_to = {
  resources : string prop list option; [@option]
      (** A list of resources, currently only projects in the form
'projects/<projectnumber>', protected by this 'ServicePerimeter'
that are allowed to be accessed by sources defined in the
corresponding 'IngressFrom'. A request matches if it contains
a resource in this list. If '*' is specified for resources,
then this 'IngressTo' rule will authorize access to all
resources inside the perimeter, provided that the request
also matches the 'operations' field. *)
  operations : spec__ingress_policies__ingress_to__operations list;
}
[@@deriving yojson_of]
(** Defines the conditions on the 'ApiOperation' and request destination that cause
this 'IngressPolicy' to apply. *)

type spec__ingress_policies = {
  ingress_from : spec__ingress_policies__ingress_from list;
  ingress_to : spec__ingress_policies__ingress_to list;
}
[@@deriving yojson_of]
(** List of 'IngressPolicies' to apply to the perimeter. A perimeter may
have multiple 'IngressPolicies', each of which is evaluated
separately. Access is granted if any 'Ingress Policy' grants it.
Must be empty for a perimeter bridge. *)

type spec__vpc_accessible_services = {
  allowed_services : string prop list option; [@option]
      (** The list of APIs usable within the Service Perimeter.
Must be empty unless 'enableRestriction' is True. *)
  enable_restriction : bool prop option; [@option]
      (** Whether to restrict API calls within the Service Perimeter to the
list of APIs specified in 'allowedServices'. *)
}
[@@deriving yojson_of]
(** Specifies how APIs are allowed to communicate within the Service
Perimeter. *)

type spec = {
  access_levels : string prop list option; [@option]
      (** A list of AccessLevel resource names that allow resources within
the ServicePerimeter to be accessed from the internet.
AccessLevels listed must be in the same policy as this
ServicePerimeter. Referencing a nonexistent AccessLevel is a
syntax error. If no AccessLevel names are listed, resources within
the perimeter can only be accessed via GCP calls with request
origins within the perimeter. For Service Perimeter Bridge, must
be empty.

Format: accessPolicies/{policy_id}/accessLevels/{access_level_name} *)
  resources : string prop list option; [@option]
      (** A list of GCP resources that are inside of the service perimeter.
Currently only projects are allowed.
Format: projects/{project_number} *)
  restricted_services : string prop list option; [@option]
      (** GCP services that are subject to the Service Perimeter
restrictions. Must contain a list of services. For example, if
'storage.googleapis.com' is specified, access to the storage
buckets inside the perimeter must meet the perimeter's access
restrictions. *)
  egress_policies : spec__egress_policies list;
  ingress_policies : spec__ingress_policies list;
  vpc_accessible_services : spec__vpc_accessible_services list;
}
[@@deriving yojson_of]
(** Proposed (or dry run) ServicePerimeter configuration.
This configuration allows to specify and test ServicePerimeter configuration
without enforcing actual access restrictions. Only allowed to be set when
the 'useExplicitDryRunSpec' flag is set. *)

type status__egress_policies__egress_from__sources = {
  access_level : string prop option; [@option]
      (** An AccessLevel resource name that allows resources outside the ServicePerimeter to be accessed from the inside. *)
}
[@@deriving yojson_of]
(** Sources that this EgressPolicy authorizes access from. *)

type status__egress_policies__egress_from = {
  identities : string prop list option; [@option]
      (** A list of identities that are allowed access through this 'EgressPolicy'.
Should be in the format of email address. The email address should
represent individual user or service account only. *)
  identity_type : string prop option; [@option]
      (** Specifies the type of identities that are allowed access to outside the
perimeter. If left unspecified, then members of 'identities' field will
be allowed access. Possible values: [IDENTITY_TYPE_UNSPECIFIED, ANY_IDENTITY, ANY_USER_ACCOUNT, ANY_SERVICE_ACCOUNT] *)
  source_restriction : string prop option; [@option]
      (** Whether to enforce traffic restrictions based on 'sources' field. If the 'sources' field is non-empty, then this field must be set to 'SOURCE_RESTRICTION_ENABLED'. Possible values: [SOURCE_RESTRICTION_UNSPECIFIED, SOURCE_RESTRICTION_ENABLED, SOURCE_RESTRICTION_DISABLED] *)
  sources : status__egress_policies__egress_from__sources list;
}
[@@deriving yojson_of]
(** Defines conditions on the source of a request causing this 'EgressPolicy' to apply. *)

type status__egress_policies__egress_to__operations__method_selectors = {
  method_ : string prop option; [@option] [@key "method"]
      (** Value for 'method' should be a valid method name for the corresponding
'serviceName' in 'ApiOperation'. If '*' used as value for method,
then ALL methods and permissions are allowed. *)
  permission : string prop option; [@option]
      (** Value for permission should be a valid Cloud IAM permission for the
corresponding 'serviceName' in 'ApiOperation'. *)
}
[@@deriving yojson_of]
(** API methods or permissions to allow. Method or permission must belong
to the service specified by 'serviceName' field. A single MethodSelector
entry with '*' specified for the 'method' field will allow all methods
AND permissions for the service specified in 'serviceName'. *)

type status__egress_policies__egress_to__operations = {
  service_name : string prop option; [@option]
      (** The name of the API whose methods or permissions the 'IngressPolicy' or
'EgressPolicy' want to allow. A single 'ApiOperation' with serviceName
field set to '*' will allow all methods AND permissions for all services. *)
  method_selectors :
    status__egress_policies__egress_to__operations__method_selectors
    list;
}
[@@deriving yojson_of]
(** A list of 'ApiOperations' that this egress rule applies to. A request matches
if it contains an operation/service in this list. *)

type status__egress_policies__egress_to = {
  external_resources : string prop list option; [@option]
      (** A list of external resources that are allowed to be accessed. A request
matches if it contains an external resource in this list (Example:
s3://bucket/path). Currently '*' is not allowed. *)
  resources : string prop list option; [@option]
      (** A list of resources, currently only projects in the form
'projects/<projectnumber>', that match this to stanza. A request matches
if it contains a resource in this list. If * is specified for resources,
then this 'EgressTo' rule will authorize access to all resources outside
the perimeter. *)
  operations : status__egress_policies__egress_to__operations list;
}
[@@deriving yojson_of]
(** Defines the conditions on the 'ApiOperation' and destination resources that
cause this 'EgressPolicy' to apply. *)

type status__egress_policies = {
  egress_from : status__egress_policies__egress_from list;
  egress_to : status__egress_policies__egress_to list;
}
[@@deriving yojson_of]
(** List of EgressPolicies to apply to the perimeter. A perimeter may
have multiple EgressPolicies, each of which is evaluated separately.
Access is granted if any EgressPolicy grants it. Must be empty for
a perimeter bridge. *)

type status__ingress_policies__ingress_from__sources = {
  access_level : string prop option; [@option]
      (** An 'AccessLevel' resource name that allow resources within the
'ServicePerimeters' to be accessed from the internet. 'AccessLevels' listed
must be in the same policy as this 'ServicePerimeter'. Referencing a nonexistent
'AccessLevel' will cause an error. If no 'AccessLevel' names are listed,
resources within the perimeter can only be accessed via Google Cloud calls
with request origins within the perimeter.
Example 'accessPolicies/MY_POLICY/accessLevels/MY_LEVEL.'
If * is specified, then all IngressSources will be allowed. *)
  resource : string prop option; [@option]
      (** A Google Cloud resource that is allowed to ingress the perimeter.
Requests from these resources will be allowed to access perimeter data.
Currently only projects are allowed. Format 'projects/{project_number}'
The project may be in any Google Cloud organization, not just the
organization that the perimeter is defined in. '*' is not allowed, the case
of allowing all Google Cloud resources only is not supported. *)
}
[@@deriving yojson_of]
(** Sources that this 'IngressPolicy' authorizes access from. *)

type status__ingress_policies__ingress_from = {
  identities : string prop list option; [@option]
      (** A list of identities that are allowed access through this ingress policy.
Should be in the format of email address. The email address should represent
individual user or service account only. *)
  identity_type : string prop option; [@option]
      (** Specifies the type of identities that are allowed access from outside the
perimeter. If left unspecified, then members of 'identities' field will be
allowed access. Possible values: [IDENTITY_TYPE_UNSPECIFIED, ANY_IDENTITY, ANY_USER_ACCOUNT, ANY_SERVICE_ACCOUNT] *)
  sources : status__ingress_policies__ingress_from__sources list;
}
[@@deriving yojson_of]
(** Defines the conditions on the source of a request causing this 'IngressPolicy'
to apply. *)

type status__ingress_policies__ingress_to__operations__method_selectors = {
  method_ : string prop option; [@option] [@key "method"]
      (** Value for method should be a valid method name for the corresponding
serviceName in 'ApiOperation'. If '*' used as value for 'method', then
ALL methods and permissions are allowed. *)
  permission : string prop option; [@option]
      (** Value for permission should be a valid Cloud IAM permission for the
corresponding 'serviceName' in 'ApiOperation'. *)
}
[@@deriving yojson_of]
(** API methods or permissions to allow. Method or permission must belong to
the service specified by serviceName field. A single 'MethodSelector' entry
with '*' specified for the method field will allow all methods AND
permissions for the service specified in 'serviceName'. *)

type status__ingress_policies__ingress_to__operations = {
  service_name : string prop option; [@option]
      (** The name of the API whose methods or permissions the 'IngressPolicy' or
'EgressPolicy' want to allow. A single 'ApiOperation' with 'serviceName'
field set to '*' will allow all methods AND permissions for all services. *)
  method_selectors :
    status__ingress_policies__ingress_to__operations__method_selectors
    list;
}
[@@deriving yojson_of]
(** A list of 'ApiOperations' the sources specified in corresponding 'IngressFrom'
are allowed to perform in this 'ServicePerimeter'. *)

type status__ingress_policies__ingress_to = {
  resources : string prop list option; [@option]
      (** A list of resources, currently only projects in the form
'projects/<projectnumber>', protected by this 'ServicePerimeter'
that are allowed to be accessed by sources defined in the
corresponding 'IngressFrom'. A request matches if it contains
a resource in this list. If '*' is specified for resources,
then this 'IngressTo' rule will authorize access to all
resources inside the perimeter, provided that the request
also matches the 'operations' field. *)
  operations : status__ingress_policies__ingress_to__operations list;
}
[@@deriving yojson_of]
(** Defines the conditions on the 'ApiOperation' and request destination that cause
this 'IngressPolicy' to apply. *)

type status__ingress_policies = {
  ingress_from : status__ingress_policies__ingress_from list;
  ingress_to : status__ingress_policies__ingress_to list;
}
[@@deriving yojson_of]
(** List of 'IngressPolicies' to apply to the perimeter. A perimeter may
have multiple 'IngressPolicies', each of which is evaluated
separately. Access is granted if any 'Ingress Policy' grants it.
Must be empty for a perimeter bridge. *)

type status__vpc_accessible_services = {
  allowed_services : string prop list option; [@option]
      (** The list of APIs usable within the Service Perimeter.
Must be empty unless 'enableRestriction' is True. *)
  enable_restriction : bool prop option; [@option]
      (** Whether to restrict API calls within the Service Perimeter to the
list of APIs specified in 'allowedServices'. *)
}
[@@deriving yojson_of]
(** Specifies how APIs are allowed to communicate within the Service
Perimeter. *)

type status = {
  access_levels : string prop list option; [@option]
      (** A list of AccessLevel resource names that allow resources within
the ServicePerimeter to be accessed from the internet.
AccessLevels listed must be in the same policy as this
ServicePerimeter. Referencing a nonexistent AccessLevel is a
syntax error. If no AccessLevel names are listed, resources within
the perimeter can only be accessed via GCP calls with request
origins within the perimeter. For Service Perimeter Bridge, must
be empty.

Format: accessPolicies/{policy_id}/accessLevels/{access_level_name} *)
  resources : string prop list option; [@option]
      (** A list of GCP resources that are inside of the service perimeter.
Currently only projects are allowed.
Format: projects/{project_number} *)
  restricted_services : string prop list option; [@option]
      (** GCP services that are subject to the Service Perimeter
restrictions. Must contain a list of services. For example, if
'storage.googleapis.com' is specified, access to the storage
buckets inside the perimeter must meet the perimeter's access
restrictions. *)
  egress_policies : status__egress_policies list;
  ingress_policies : status__ingress_policies list;
  vpc_accessible_services : status__vpc_accessible_services list;
}
[@@deriving yojson_of]
(** ServicePerimeter configuration. Specifies sets of resources,
restricted services and access levels that determine
perimeter content and boundaries. *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type google_access_context_manager_service_perimeter = {
  description : string prop option; [@option]
      (** Description of the ServicePerimeter and its use. Does not affect
behavior. *)
  id : string prop option; [@option]  (** id *)
  name : string prop;
      (** Resource name for the ServicePerimeter. The short_name component must
begin with a letter and only include alphanumeric and '_'.
Format: accessPolicies/{policy_id}/servicePerimeters/{short_name} *)
  parent : string prop;
      (** The AccessPolicy this ServicePerimeter lives in.
Format: accessPolicies/{policy_id} *)
  perimeter_type : string prop option; [@option]
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
  title : string prop;
      (** Human readable title. Must be unique within the Policy. *)
  use_explicit_dry_run_spec : bool prop option; [@option]
      (** Use explicit dry run spec flag. Ordinarily, a dry-run spec implicitly exists
for all Service Perimeters, and that spec is identical to the status for those
Service Perimeters. When this flag is set, it inhibits the generation of the
implicit spec, thereby allowing the user to explicitly provide a
configuration (spec) to use in a dry-run version of the Service Perimeter.
This allows the user to test changes to the enforced config (status) without
actually enforcing them. This testing is done through analyzing the differences
between currently enforced and suggested restrictions. useExplicitDryRunSpec must
bet set to True if any of the fields in the spec are set to non-default values. *)
  spec : spec list;
  status : status list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** google_access_context_manager_service_perimeter *)

let spec__egress_policies__egress_from__sources ?access_level () :
    spec__egress_policies__egress_from__sources =
  { access_level }

let spec__egress_policies__egress_from ?identities ?identity_type
    ?source_restriction ~sources () :
    spec__egress_policies__egress_from =
  { identities; identity_type; source_restriction; sources }

let spec__egress_policies__egress_to__operations__method_selectors
    ?method_ ?permission () :
    spec__egress_policies__egress_to__operations__method_selectors =
  { method_; permission }

let spec__egress_policies__egress_to__operations ?service_name
    ~method_selectors () :
    spec__egress_policies__egress_to__operations =
  { service_name; method_selectors }

let spec__egress_policies__egress_to ?external_resources ?resources
    ~operations () : spec__egress_policies__egress_to =
  { external_resources; resources; operations }

let spec__egress_policies ~egress_from ~egress_to () :
    spec__egress_policies =
  { egress_from; egress_to }

let spec__ingress_policies__ingress_from__sources ?access_level
    ?resource () : spec__ingress_policies__ingress_from__sources =
  { access_level; resource }

let spec__ingress_policies__ingress_from ?identities ?identity_type
    ~sources () : spec__ingress_policies__ingress_from =
  { identities; identity_type; sources }

let spec__ingress_policies__ingress_to__operations__method_selectors
    ?method_ ?permission () :
    spec__ingress_policies__ingress_to__operations__method_selectors
    =
  { method_; permission }

let spec__ingress_policies__ingress_to__operations ?service_name
    ~method_selectors () :
    spec__ingress_policies__ingress_to__operations =
  { service_name; method_selectors }

let spec__ingress_policies__ingress_to ?resources ~operations () :
    spec__ingress_policies__ingress_to =
  { resources; operations }

let spec__ingress_policies ~ingress_from ~ingress_to () :
    spec__ingress_policies =
  { ingress_from; ingress_to }

let spec__vpc_accessible_services ?allowed_services
    ?enable_restriction () : spec__vpc_accessible_services =
  { allowed_services; enable_restriction }

let spec ?access_levels ?resources ?restricted_services
    ~egress_policies ~ingress_policies ~vpc_accessible_services () :
    spec =
  {
    access_levels;
    resources;
    restricted_services;
    egress_policies;
    ingress_policies;
    vpc_accessible_services;
  }

let status__egress_policies__egress_from__sources ?access_level () :
    status__egress_policies__egress_from__sources =
  { access_level }

let status__egress_policies__egress_from ?identities ?identity_type
    ?source_restriction ~sources () :
    status__egress_policies__egress_from =
  { identities; identity_type; source_restriction; sources }

let status__egress_policies__egress_to__operations__method_selectors
    ?method_ ?permission () :
    status__egress_policies__egress_to__operations__method_selectors
    =
  { method_; permission }

let status__egress_policies__egress_to__operations ?service_name
    ~method_selectors () :
    status__egress_policies__egress_to__operations =
  { service_name; method_selectors }

let status__egress_policies__egress_to ?external_resources ?resources
    ~operations () : status__egress_policies__egress_to =
  { external_resources; resources; operations }

let status__egress_policies ~egress_from ~egress_to () :
    status__egress_policies =
  { egress_from; egress_to }

let status__ingress_policies__ingress_from__sources ?access_level
    ?resource () : status__ingress_policies__ingress_from__sources =
  { access_level; resource }

let status__ingress_policies__ingress_from ?identities ?identity_type
    ~sources () : status__ingress_policies__ingress_from =
  { identities; identity_type; sources }

let status__ingress_policies__ingress_to__operations__method_selectors
    ?method_ ?permission () :
    status__ingress_policies__ingress_to__operations__method_selectors
    =
  { method_; permission }

let status__ingress_policies__ingress_to__operations ?service_name
    ~method_selectors () :
    status__ingress_policies__ingress_to__operations =
  { service_name; method_selectors }

let status__ingress_policies__ingress_to ?resources ~operations () :
    status__ingress_policies__ingress_to =
  { resources; operations }

let status__ingress_policies ~ingress_from ~ingress_to () :
    status__ingress_policies =
  { ingress_from; ingress_to }

let status__vpc_accessible_services ?allowed_services
    ?enable_restriction () : status__vpc_accessible_services =
  { allowed_services; enable_restriction }

let status ?access_levels ?resources ?restricted_services
    ~egress_policies ~ingress_policies ~vpc_accessible_services () :
    status =
  {
    access_levels;
    resources;
    restricted_services;
    egress_policies;
    ingress_policies;
    vpc_accessible_services;
  }

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let google_access_context_manager_service_perimeter ?description ?id
    ?perimeter_type ?use_explicit_dry_run_spec ?timeouts ~name
    ~parent ~title ~spec ~status () :
    google_access_context_manager_service_perimeter =
  {
    description;
    id;
    name;
    parent;
    perimeter_type;
    title;
    use_explicit_dry_run_spec;
    spec;
    status;
    timeouts;
  }

type t = {
  create_time : string prop;
  description : string prop;
  id : string prop;
  name : string prop;
  parent : string prop;
  perimeter_type : string prop;
  title : string prop;
  update_time : string prop;
  use_explicit_dry_run_spec : bool prop;
}

let make ?description ?id ?perimeter_type ?use_explicit_dry_run_spec
    ?timeouts ~name ~parent ~title ~spec ~status __id =
  let __type = "google_access_context_manager_service_perimeter" in
  let __attrs =
    ({
       create_time = Prop.computed __type __id "create_time";
       description = Prop.computed __type __id "description";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       parent = Prop.computed __type __id "parent";
       perimeter_type = Prop.computed __type __id "perimeter_type";
       title = Prop.computed __type __id "title";
       update_time = Prop.computed __type __id "update_time";
       use_explicit_dry_run_spec =
         Prop.computed __type __id "use_explicit_dry_run_spec";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_access_context_manager_service_perimeter
        (google_access_context_manager_service_perimeter ?description
           ?id ?perimeter_type ?use_explicit_dry_run_spec ?timeouts
           ~name ~parent ~title ~spec ~status ());
    attrs = __attrs;
  }

let register ?tf_module ?description ?id ?perimeter_type
    ?use_explicit_dry_run_spec ?timeouts ~name ~parent ~title ~spec
    ~status __id =
  let (r : _ Tf_core.resource) =
    make ?description ?id ?perimeter_type ?use_explicit_dry_run_spec
      ?timeouts ~name ~parent ~title ~spec ~status __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
