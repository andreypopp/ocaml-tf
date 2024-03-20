(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type egress_from__sources = {
  access_level : string prop option; [@option]
      (** An AccessLevel resource name that allows resources outside the ServicePerimeter to be accessed from the inside. *)
}
[@@deriving yojson_of]
(** Sources that this EgressPolicy authorizes access from. *)

type egress_from = {
  identities : string prop list option; [@option]
      (** A list of identities that are allowed access through this 'EgressPolicy'.
Should be in the format of email address. The email address should
represent individual user or service account only. *)
  identity_type : string prop option; [@option]
      (** Specifies the type of identities that are allowed access to outside the
perimeter. If left unspecified, then members of 'identities' field will
be allowed access. Possible values: [ANY_IDENTITY, ANY_USER_ACCOUNT, ANY_SERVICE_ACCOUNT] *)
  source_restriction : string prop option; [@option]
      (** Whether to enforce traffic restrictions based on 'sources' field. If the 'sources' field is non-empty, then this field must be set to 'SOURCE_RESTRICTION_ENABLED'. Possible values: [SOURCE_RESTRICTION_UNSPECIFIED, SOURCE_RESTRICTION_ENABLED, SOURCE_RESTRICTION_DISABLED] *)
  sources : egress_from__sources list;
}
[@@deriving yojson_of]
(** Defines conditions on the source of a request causing this 'EgressPolicy' to apply. *)

type egress_to__operations__method_selectors = {
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

type egress_to__operations = {
  service_name : string prop option; [@option]
      (** The name of the API whose methods or permissions the 'IngressPolicy' or
'EgressPolicy' want to allow. A single 'ApiOperation' with serviceName
field set to '*' will allow all methods AND permissions for all services. *)
  method_selectors : egress_to__operations__method_selectors list;
}
[@@deriving yojson_of]
(** A list of 'ApiOperations' that this egress rule applies to. A request matches
if it contains an operation/service in this list. *)

type egress_to = {
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
  operations : egress_to__operations list;
}
[@@deriving yojson_of]
(** Defines the conditions on the 'ApiOperation' and destination resources that
cause this 'EgressPolicy' to apply. *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type google_access_context_manager_service_perimeter_egress_policy = {
  id : string prop option; [@option]  (** id *)
  perimeter : string prop;
      (** The name of the Service Perimeter to add this resource to. *)
  egress_from : egress_from list;
  egress_to : egress_to list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** google_access_context_manager_service_perimeter_egress_policy *)

let egress_from__sources ?access_level () : egress_from__sources =
  { access_level }

let egress_from ?identities ?identity_type ?source_restriction
    ~sources () : egress_from =
  { identities; identity_type; source_restriction; sources }

let egress_to__operations__method_selectors ?method_ ?permission () :
    egress_to__operations__method_selectors =
  { method_; permission }

let egress_to__operations ?service_name ~method_selectors () :
    egress_to__operations =
  { service_name; method_selectors }

let egress_to ?external_resources ?resources ~operations () :
    egress_to =
  { external_resources; resources; operations }

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let google_access_context_manager_service_perimeter_egress_policy ?id
    ?timeouts ~perimeter ~egress_from ~egress_to () :
    google_access_context_manager_service_perimeter_egress_policy =
  { id; perimeter; egress_from; egress_to; timeouts }

type t = { id : string prop; perimeter : string prop }

let make ?id ?timeouts ~perimeter ~egress_from ~egress_to __id =
  let __type =
    "google_access_context_manager_service_perimeter_egress_policy"
  in
  let __attrs =
    ({
       id = Prop.computed __type __id "id";
       perimeter = Prop.computed __type __id "perimeter";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_access_context_manager_service_perimeter_egress_policy
        (google_access_context_manager_service_perimeter_egress_policy
           ?id ?timeouts ~perimeter ~egress_from ~egress_to ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?timeouts ~perimeter ~egress_from
    ~egress_to __id =
  let (r : _ Tf_core.resource) =
    make ?id ?timeouts ~perimeter ~egress_from ~egress_to __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
