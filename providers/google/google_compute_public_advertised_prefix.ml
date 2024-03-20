(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
}
[@@deriving yojson_of]
(** timeouts *)

type google_compute_public_advertised_prefix = {
  description : string prop option; [@option]
      (** An optional description of this resource. *)
  dns_verification_ip : string prop;
      (** The IPv4 address to be used for reverse DNS verification. *)
  id : string prop option; [@option]  (** id *)
  ip_cidr_range : string prop;
      (** The IPv4 address range, in CIDR format, represented by this public advertised prefix. *)
  name : string prop;
      (** Name of the resource. The name must be 1-63 characters long, and
comply with RFC1035. Specifically, the name must be 1-63 characters
long and match the regular expression '[a-z]([-a-z0-9]*[a-z0-9])?'
which means the first character must be a lowercase letter, and all
following characters must be a dash, lowercase letter, or digit,
except the last character, which cannot be a dash. *)
  project : string prop option; [@option]  (** project *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** google_compute_public_advertised_prefix *)

let timeouts ?create ?delete () : timeouts = { create; delete }

let google_compute_public_advertised_prefix ?description ?id ?project
    ?timeouts ~dns_verification_ip ~ip_cidr_range ~name () :
    google_compute_public_advertised_prefix =
  {
    description;
    dns_verification_ip;
    id;
    ip_cidr_range;
    name;
    project;
    timeouts;
  }

type t = {
  description : string prop;
  dns_verification_ip : string prop;
  id : string prop;
  ip_cidr_range : string prop;
  name : string prop;
  project : string prop;
  self_link : string prop;
}

let make ?description ?id ?project ?timeouts ~dns_verification_ip
    ~ip_cidr_range ~name __id =
  let __type = "google_compute_public_advertised_prefix" in
  let __attrs =
    ({
       description = Prop.computed __type __id "description";
       dns_verification_ip =
         Prop.computed __type __id "dns_verification_ip";
       id = Prop.computed __type __id "id";
       ip_cidr_range = Prop.computed __type __id "ip_cidr_range";
       name = Prop.computed __type __id "name";
       project = Prop.computed __type __id "project";
       self_link = Prop.computed __type __id "self_link";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_compute_public_advertised_prefix
        (google_compute_public_advertised_prefix ?description ?id
           ?project ?timeouts ~dns_verification_ip ~ip_cidr_range
           ~name ());
    attrs = __attrs;
  }

let register ?tf_module ?description ?id ?project ?timeouts
    ~dns_verification_ip ~ip_cidr_range ~name __id =
  let (r : _ Tf_core.resource) =
    make ?description ?id ?project ?timeouts ~dns_verification_ip
      ~ip_cidr_range ~name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
