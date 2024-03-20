(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type google_compute_network_firewall_policy = {
  description : string prop option; [@option]
      (** An optional description of this resource. Provide this property when you create the resource. *)
  id : string prop option; [@option]  (** id *)
  name : string prop;
      (** User-provided name of the Network firewall policy. The name should be unique in the project in which the firewall policy is created. The name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression [a-z]([-a-z0-9]*[a-z0-9])? which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash. *)
  project : string prop option; [@option]  (** project *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** google_compute_network_firewall_policy *)

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let google_compute_network_firewall_policy ?description ?id ?project
    ?timeouts ~name () : google_compute_network_firewall_policy =
  { description; id; name; project; timeouts }

type t = {
  creation_timestamp : string prop;
  description : string prop;
  fingerprint : string prop;
  id : string prop;
  name : string prop;
  network_firewall_policy_id : string prop;
  project : string prop;
  rule_tuple_count : float prop;
  self_link : string prop;
  self_link_with_id : string prop;
}

let make ?description ?id ?project ?timeouts ~name __id =
  let __type = "google_compute_network_firewall_policy" in
  let __attrs =
    ({
       creation_timestamp =
         Prop.computed __type __id "creation_timestamp";
       description = Prop.computed __type __id "description";
       fingerprint = Prop.computed __type __id "fingerprint";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       network_firewall_policy_id =
         Prop.computed __type __id "network_firewall_policy_id";
       project = Prop.computed __type __id "project";
       rule_tuple_count =
         Prop.computed __type __id "rule_tuple_count";
       self_link = Prop.computed __type __id "self_link";
       self_link_with_id =
         Prop.computed __type __id "self_link_with_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_compute_network_firewall_policy
        (google_compute_network_firewall_policy ?description ?id
           ?project ?timeouts ~name ());
    attrs = __attrs;
  }

let register ?tf_module ?description ?id ?project ?timeouts ~name
    __id =
  let (r : _ Tf_core.resource) =
    make ?description ?id ?project ?timeouts ~name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
