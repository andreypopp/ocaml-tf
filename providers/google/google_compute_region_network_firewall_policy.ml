(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type google_compute_region_network_firewall_policy = {
  description : string prop option; [@option]
      (** An optional description of this resource. Provide this property when you create the resource. *)
  id : string prop option; [@option]  (** id *)
  name : string prop;
      (** User-provided name of the Network firewall policy. The name should be unique in the project in which the firewall policy is created. The name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression [a-z]([-a-z0-9]*[a-z0-9])? which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash. *)
  project : string prop option; [@option]  (** project *)
  region : string prop option; [@option]
      (** The region of this resource. *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** google_compute_region_network_firewall_policy *)

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let google_compute_region_network_firewall_policy ?description ?id
    ?project ?region ?timeouts ~name () :
    google_compute_region_network_firewall_policy =
  { description; id; name; project; region; timeouts }

type t = {
  creation_timestamp : string prop;
  description : string prop;
  fingerprint : string prop;
  id : string prop;
  name : string prop;
  project : string prop;
  region : string prop;
  region_network_firewall_policy_id : string prop;
  rule_tuple_count : float prop;
  self_link : string prop;
  self_link_with_id : string prop;
}

let register ?tf_module ?description ?id ?project ?region ?timeouts
    ~name __resource_id =
  let __resource_type =
    "google_compute_region_network_firewall_policy"
  in
  let __resource =
    google_compute_region_network_firewall_policy ?description ?id
      ?project ?region ?timeouts ~name ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_compute_region_network_firewall_policy
       __resource);
  let __resource_attributes =
    ({
       creation_timestamp =
         Prop.computed __resource_type __resource_id
           "creation_timestamp";
       description =
         Prop.computed __resource_type __resource_id "description";
       fingerprint =
         Prop.computed __resource_type __resource_id "fingerprint";
       id = Prop.computed __resource_type __resource_id "id";
       name = Prop.computed __resource_type __resource_id "name";
       project =
         Prop.computed __resource_type __resource_id "project";
       region = Prop.computed __resource_type __resource_id "region";
       region_network_firewall_policy_id =
         Prop.computed __resource_type __resource_id
           "region_network_firewall_policy_id";
       rule_tuple_count =
         Prop.computed __resource_type __resource_id
           "rule_tuple_count";
       self_link =
         Prop.computed __resource_type __resource_id "self_link";
       self_link_with_id =
         Prop.computed __resource_type __resource_id
           "self_link_with_id";
     }
      : t)
  in
  __resource_attributes
