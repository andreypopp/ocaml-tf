(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type google_network_security_gateway_security_policy_rule = {
  application_matcher : string prop option; [@option]
      (** CEL expression for matching on L7/application level criteria. *)
  basic_profile : string prop;
      (** Profile which tells what the primitive action should be. Possible values are: * ALLOW * DENY. Possible values: [BASIC_PROFILE_UNSPECIFIED, ALLOW, DENY] *)
  description : string prop option; [@option]
      (** Free-text description of the resource. *)
  enabled : bool prop;  (** Whether the rule is enforced. *)
  gateway_security_policy : string prop;
      (** The name of the gatewat security policy this rule belongs to. *)
  id : string prop option; [@option]  (** id *)
  location : string prop;
      (** The location of the gateway security policy. *)
  name : string prop;
      (** Name of the resource. ame is the full resource name so projects/{project}/locations/{location}/gatewaySecurityPolicies/{gateway_security_policy}/rules/{rule}
rule should match the pattern: (^a-z?$). *)
  priority : float prop;
      (** Priority of the rule. Lower number corresponds to higher precedence. *)
  project : string prop option; [@option]  (** project *)
  session_matcher : string prop;
      (** CEL expression for matching on session criteria. *)
  tls_inspection_enabled : bool prop option; [@option]
      (** Flag to enable TLS inspection of traffic matching on. Can only be true if the
parent GatewaySecurityPolicy references a TLSInspectionConfig. *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** google_network_security_gateway_security_policy_rule *)

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let google_network_security_gateway_security_policy_rule
    ?application_matcher ?description ?id ?project
    ?tls_inspection_enabled ?timeouts ~basic_profile ~enabled
    ~gateway_security_policy ~location ~name ~priority
    ~session_matcher () :
    google_network_security_gateway_security_policy_rule =
  {
    application_matcher;
    basic_profile;
    description;
    enabled;
    gateway_security_policy;
    id;
    location;
    name;
    priority;
    project;
    session_matcher;
    tls_inspection_enabled;
    timeouts;
  }

type t = {
  application_matcher : string prop;
  basic_profile : string prop;
  create_time : string prop;
  description : string prop;
  enabled : bool prop;
  gateway_security_policy : string prop;
  id : string prop;
  location : string prop;
  name : string prop;
  priority : float prop;
  project : string prop;
  self_link : string prop;
  session_matcher : string prop;
  tls_inspection_enabled : bool prop;
  update_time : string prop;
}

let make ?application_matcher ?description ?id ?project
    ?tls_inspection_enabled ?timeouts ~basic_profile ~enabled
    ~gateway_security_policy ~location ~name ~priority
    ~session_matcher __id =
  let __type =
    "google_network_security_gateway_security_policy_rule"
  in
  let __attrs =
    ({
       application_matcher =
         Prop.computed __type __id "application_matcher";
       basic_profile = Prop.computed __type __id "basic_profile";
       create_time = Prop.computed __type __id "create_time";
       description = Prop.computed __type __id "description";
       enabled = Prop.computed __type __id "enabled";
       gateway_security_policy =
         Prop.computed __type __id "gateway_security_policy";
       id = Prop.computed __type __id "id";
       location = Prop.computed __type __id "location";
       name = Prop.computed __type __id "name";
       priority = Prop.computed __type __id "priority";
       project = Prop.computed __type __id "project";
       self_link = Prop.computed __type __id "self_link";
       session_matcher = Prop.computed __type __id "session_matcher";
       tls_inspection_enabled =
         Prop.computed __type __id "tls_inspection_enabled";
       update_time = Prop.computed __type __id "update_time";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_network_security_gateway_security_policy_rule
        (google_network_security_gateway_security_policy_rule
           ?application_matcher ?description ?id ?project
           ?tls_inspection_enabled ?timeouts ~basic_profile ~enabled
           ~gateway_security_policy ~location ~name ~priority
           ~session_matcher ());
    attrs = __attrs;
  }

let register ?tf_module ?application_matcher ?description ?id
    ?project ?tls_inspection_enabled ?timeouts ~basic_profile
    ~enabled ~gateway_security_policy ~location ~name ~priority
    ~session_matcher __id =
  let (r : _ Tf_core.resource) =
    make ?application_matcher ?description ?id ?project
      ?tls_inspection_enabled ?timeouts ~basic_profile ~enabled
      ~gateway_security_policy ~location ~name ~priority
      ~session_matcher __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
