(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type ingress_from__sources = {
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

type ingress_from = {
  identities : string prop list option; [@option]
      (** A list of identities that are allowed access through this ingress policy.
Should be in the format of email address. The email address should represent
individual user or service account only. *)
  identity_type : string prop option; [@option]
      (** Specifies the type of identities that are allowed access from outside the
perimeter. If left unspecified, then members of 'identities' field will be
allowed access. Possible values: [ANY_IDENTITY, ANY_USER_ACCOUNT, ANY_SERVICE_ACCOUNT] *)
  sources : ingress_from__sources list;
}
[@@deriving yojson_of]
(** Defines the conditions on the source of a request causing this 'IngressPolicy'
to apply. *)

type ingress_to__operations__method_selectors = {
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

type ingress_to__operations = {
  service_name : string prop option; [@option]
      (** The name of the API whose methods or permissions the 'IngressPolicy' or
'EgressPolicy' want to allow. A single 'ApiOperation' with 'serviceName'
field set to '*' will allow all methods AND permissions for all services. *)
  method_selectors : ingress_to__operations__method_selectors list;
}
[@@deriving yojson_of]
(** A list of 'ApiOperations' the sources specified in corresponding 'IngressFrom'
are allowed to perform in this 'ServicePerimeter'. *)

type ingress_to = {
  resources : string prop list option; [@option]
      (** A list of resources, currently only projects in the form
'projects/<projectnumber>', protected by this 'ServicePerimeter'
that are allowed to be accessed by sources defined in the
corresponding 'IngressFrom'. A request matches if it contains
a resource in this list. If '*' is specified for resources,
then this 'IngressTo' rule will authorize access to all
resources inside the perimeter, provided that the request
also matches the 'operations' field. *)
  operations : ingress_to__operations list;
}
[@@deriving yojson_of]
(** Defines the conditions on the 'ApiOperation' and request destination that cause
this 'IngressPolicy' to apply. *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type google_access_context_manager_service_perimeter_ingress_policy = {
  id : string prop option; [@option]  (** id *)
  perimeter : string prop;
      (** The name of the Service Perimeter to add this resource to. *)
  ingress_from : ingress_from list;
  ingress_to : ingress_to list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** google_access_context_manager_service_perimeter_ingress_policy *)

let ingress_from__sources ?access_level ?resource () :
    ingress_from__sources =
  { access_level; resource }

let ingress_from ?identities ?identity_type ~sources () :
    ingress_from =
  { identities; identity_type; sources }

let ingress_to__operations__method_selectors ?method_ ?permission ()
    : ingress_to__operations__method_selectors =
  { method_; permission }

let ingress_to__operations ?service_name ~method_selectors () :
    ingress_to__operations =
  { service_name; method_selectors }

let ingress_to ?resources ~operations () : ingress_to =
  { resources; operations }

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let google_access_context_manager_service_perimeter_ingress_policy
    ?id ?timeouts ~perimeter ~ingress_from ~ingress_to () :
    google_access_context_manager_service_perimeter_ingress_policy =
  { id; perimeter; ingress_from; ingress_to; timeouts }

type t = { id : string prop; perimeter : string prop }

let register ?tf_module ?id ?timeouts ~perimeter ~ingress_from
    ~ingress_to __resource_id =
  let __resource_type =
    "google_access_context_manager_service_perimeter_ingress_policy"
  in
  let __resource =
    google_access_context_manager_service_perimeter_ingress_policy
      ?id ?timeouts ~perimeter ~ingress_from ~ingress_to ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_access_context_manager_service_perimeter_ingress_policy
       __resource);
  let __resource_attributes =
    ({
       id = Prop.computed __resource_type __resource_id "id";
       perimeter =
         Prop.computed __resource_type __resource_id "perimeter";
     }
      : t)
  in
  __resource_attributes
