(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type google_network_security_gateway_security_policy = {
  description : string prop option; [@option]
      (** A free-text description of the resource. Max length 1024 characters. *)
  id : string prop option; [@option]  (** id *)
  location : string prop option; [@option]
      (** The location of the gateway security policy.
The default value is 'global'. *)
  name : string prop;
      (** Name of the resource. Name is of the form projects/{project}/locations/{location}/gatewaySecurityPolicies/{gatewaySecurityPolicy}
gatewaySecurityPolicy should match the pattern:(^a-z?$). *)
  project : string prop option; [@option]  (** project *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** google_network_security_gateway_security_policy *)

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let google_network_security_gateway_security_policy ?description ?id
    ?location ?project ?timeouts ~name () :
    google_network_security_gateway_security_policy =
  { description; id; location; name; project; timeouts }

type t = {
  create_time : string prop;
  description : string prop;
  id : string prop;
  location : string prop;
  name : string prop;
  project : string prop;
  self_link : string prop;
  update_time : string prop;
}

let make ?description ?id ?location ?project ?timeouts ~name __id =
  let __type = "google_network_security_gateway_security_policy" in
  let __attrs =
    ({
       create_time = Prop.computed __type __id "create_time";
       description = Prop.computed __type __id "description";
       id = Prop.computed __type __id "id";
       location = Prop.computed __type __id "location";
       name = Prop.computed __type __id "name";
       project = Prop.computed __type __id "project";
       self_link = Prop.computed __type __id "self_link";
       update_time = Prop.computed __type __id "update_time";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_network_security_gateway_security_policy
        (google_network_security_gateway_security_policy ?description
           ?id ?location ?project ?timeouts ~name ());
    attrs = __attrs;
  }

let register ?tf_module ?description ?id ?location ?project ?timeouts
    ~name __id =
  let (r : _ Tf_core.resource) =
    make ?description ?id ?location ?project ?timeouts ~name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
