(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type google_compute_firewall_policy = {
  description : string prop option; [@option]
      (** An optional description of this resource. Provide this property when you create the resource. *)
  id : string prop option; [@option]  (** id *)
  parent : string prop;  (** The parent of the firewall policy. *)
  short_name : string prop;
      (** User-provided name of the Organization firewall policy. The name should be unique in the organization in which the firewall policy is created. The name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression [a-z]([-a-z0-9]*[a-z0-9])? which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash. *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** google_compute_firewall_policy *)

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let google_compute_firewall_policy ?description ?id ?timeouts ~parent
    ~short_name () : google_compute_firewall_policy =
  { description; id; parent; short_name; timeouts }

type t = {
  creation_timestamp : string prop;
  description : string prop;
  fingerprint : string prop;
  firewall_policy_id : string prop;
  id : string prop;
  name : string prop;
  parent : string prop;
  rule_tuple_count : float prop;
  self_link : string prop;
  self_link_with_id : string prop;
  short_name : string prop;
}

let make ?description ?id ?timeouts ~parent ~short_name __id =
  let __type = "google_compute_firewall_policy" in
  let __attrs =
    ({
       creation_timestamp =
         Prop.computed __type __id "creation_timestamp";
       description = Prop.computed __type __id "description";
       fingerprint = Prop.computed __type __id "fingerprint";
       firewall_policy_id =
         Prop.computed __type __id "firewall_policy_id";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       parent = Prop.computed __type __id "parent";
       rule_tuple_count =
         Prop.computed __type __id "rule_tuple_count";
       self_link = Prop.computed __type __id "self_link";
       self_link_with_id =
         Prop.computed __type __id "self_link_with_id";
       short_name = Prop.computed __type __id "short_name";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_compute_firewall_policy
        (google_compute_firewall_policy ?description ?id ?timeouts
           ~parent ~short_name ());
    attrs = __attrs;
  }

let register ?tf_module ?description ?id ?timeouts ~parent
    ~short_name __id =
  let (r : _ Tf_core.resource) =
    make ?description ?id ?timeouts ~parent ~short_name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
