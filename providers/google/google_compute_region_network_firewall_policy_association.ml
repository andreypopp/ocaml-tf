(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
}
[@@deriving yojson_of]
(** timeouts *)

type google_compute_region_network_firewall_policy_association = {
  attachment_target : string prop;
      (** The target that the firewall policy is attached to. *)
  firewall_policy : string prop;
      (** The firewall policy ID of the association. *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** The name for an association. *)
  project : string prop option; [@option]
      (** The project for the resource *)
  region : string prop option; [@option]
      (** The location of this resource. *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** google_compute_region_network_firewall_policy_association *)

let timeouts ?create ?delete () : timeouts = { create; delete }

let google_compute_region_network_firewall_policy_association ?id
    ?project ?region ?timeouts ~attachment_target ~firewall_policy
    ~name () :
    google_compute_region_network_firewall_policy_association =
  {
    attachment_target;
    firewall_policy;
    id;
    name;
    project;
    region;
    timeouts;
  }

type t = {
  attachment_target : string prop;
  firewall_policy : string prop;
  id : string prop;
  name : string prop;
  project : string prop;
  region : string prop;
  short_name : string prop;
}

let make ?id ?project ?region ?timeouts ~attachment_target
    ~firewall_policy ~name __id =
  let __type =
    "google_compute_region_network_firewall_policy_association"
  in
  let __attrs =
    ({
       attachment_target =
         Prop.computed __type __id "attachment_target";
       firewall_policy = Prop.computed __type __id "firewall_policy";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       project = Prop.computed __type __id "project";
       region = Prop.computed __type __id "region";
       short_name = Prop.computed __type __id "short_name";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_compute_region_network_firewall_policy_association
        (google_compute_region_network_firewall_policy_association
           ?id ?project ?region ?timeouts ~attachment_target
           ~firewall_policy ~name ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?project ?region ?timeouts
    ~attachment_target ~firewall_policy ~name __id =
  let (r : _ Tf_core.resource) =
    make ?id ?project ?region ?timeouts ~attachment_target
      ~firewall_policy ~name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
