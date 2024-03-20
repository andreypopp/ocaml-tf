(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type access_restrictions__allowed_services = {
  domain : string prop option; [@option]
      (** Domain name of the service.
Example: console.cloud.google *)
}
[@@deriving yojson_of]
(** Services allowed for web sign-in with the workforce pool.
If not set by default there are no restrictions. *)

type access_restrictions = {
  disable_programmatic_signin : bool prop option; [@option]
      (** Disable programmatic sign-in by disabling token issue via the Security Token API endpoint.
See [Security Token Service API](https://cloud.google.com/iam/docs/reference/sts/rest). *)
  allowed_services : access_restrictions__allowed_services list;
}
[@@deriving yojson_of]
(** Configure access restrictions on the workforce pool users. This is an optional field. If specified web
sign-in can be restricted to given set of services or programmatic sign-in can be disabled for pool users. *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type google_iam_workforce_pool = {
  description : string prop option; [@option]
      (** A user-specified description of the pool. Cannot exceed 256 characters. *)
  disabled : bool prop option; [@option]
      (** Whether the pool is disabled. You cannot use a disabled pool to exchange tokens,
or use existing tokens to access resources. If the pool is re-enabled, existing tokens grant access again. *)
  display_name : string prop option; [@option]
      (** A user-specified display name of the pool in Google Cloud Console. Cannot exceed 32 characters. *)
  id : string prop option; [@option]  (** id *)
  location : string prop;  (** The location for the resource. *)
  parent : string prop;
      (** Immutable. The resource name of the parent. Format: 'organizations/{org-id}'. *)
  session_duration : string prop option; [@option]
      (** Duration that the Google Cloud access tokens, console sign-in sessions,
and 'gcloud' sign-in sessions from this pool are valid.
Must be greater than 15 minutes (900s) and less than 12 hours (43200s).
If 'sessionDuration' is not configured, minted credentials have a default duration of one hour (3600s).
A duration in seconds with up to nine fractional digits, ending with ''s''. Example: '3.5s'. *)
  workforce_pool_id : string prop;
      (** The name of the pool. The ID must be a globally unique string of 6 to 63 lowercase letters,
digits, or hyphens. It must start with a letter, and cannot have a trailing hyphen.
The prefix 'gcp-' is reserved for use by Google, and may not be specified. *)
  access_restrictions : access_restrictions list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** google_iam_workforce_pool *)

let access_restrictions__allowed_services ?domain () :
    access_restrictions__allowed_services =
  { domain }

let access_restrictions ?disable_programmatic_signin
    ~allowed_services () : access_restrictions =
  { disable_programmatic_signin; allowed_services }

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let google_iam_workforce_pool ?description ?disabled ?display_name
    ?id ?session_duration ?timeouts ~location ~parent
    ~workforce_pool_id ~access_restrictions () :
    google_iam_workforce_pool =
  {
    description;
    disabled;
    display_name;
    id;
    location;
    parent;
    session_duration;
    workforce_pool_id;
    access_restrictions;
    timeouts;
  }

type t = {
  description : string prop;
  disabled : bool prop;
  display_name : string prop;
  id : string prop;
  location : string prop;
  name : string prop;
  parent : string prop;
  session_duration : string prop;
  state : string prop;
  workforce_pool_id : string prop;
}

let make ?description ?disabled ?display_name ?id ?session_duration
    ?timeouts ~location ~parent ~workforce_pool_id
    ~access_restrictions __id =
  let __type = "google_iam_workforce_pool" in
  let __attrs =
    ({
       description = Prop.computed __type __id "description";
       disabled = Prop.computed __type __id "disabled";
       display_name = Prop.computed __type __id "display_name";
       id = Prop.computed __type __id "id";
       location = Prop.computed __type __id "location";
       name = Prop.computed __type __id "name";
       parent = Prop.computed __type __id "parent";
       session_duration =
         Prop.computed __type __id "session_duration";
       state = Prop.computed __type __id "state";
       workforce_pool_id =
         Prop.computed __type __id "workforce_pool_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_iam_workforce_pool
        (google_iam_workforce_pool ?description ?disabled
           ?display_name ?id ?session_duration ?timeouts ~location
           ~parent ~workforce_pool_id ~access_restrictions ());
    attrs = __attrs;
  }

let register ?tf_module ?description ?disabled ?display_name ?id
    ?session_duration ?timeouts ~location ~parent ~workforce_pool_id
    ~access_restrictions __id =
  let (r : _ Tf_core.resource) =
    make ?description ?disabled ?display_name ?id ?session_duration
      ?timeouts ~location ~parent ~workforce_pool_id
      ~access_restrictions __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
