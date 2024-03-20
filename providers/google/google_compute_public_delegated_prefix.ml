(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
}
[@@deriving yojson_of]
(** timeouts *)

type google_compute_public_delegated_prefix = {
  description : string prop option; [@option]
      (** An optional description of this resource. *)
  id : string prop option; [@option]  (** id *)
  ip_cidr_range : string prop;
      (** The IPv4 address range, in CIDR format, represented by this public advertised prefix. *)
  is_live_migration : bool prop option; [@option]
      (** If true, the prefix will be live migrated. *)
  name : string prop;
      (** Name of the resource. The name must be 1-63 characters long, and
comply with RFC1035. Specifically, the name must be 1-63 characters
long and match the regular expression '[a-z]([-a-z0-9]*[a-z0-9])?'
which means the first character must be a lowercase letter, and all
following characters must be a dash, lowercase letter, or digit,
except the last character, which cannot be a dash. *)
  parent_prefix : string prop;
      (** The URL of parent prefix. Either PublicAdvertisedPrefix or PublicDelegatedPrefix. *)
  project : string prop option; [@option]  (** project *)
  region : string prop;
      (** A region where the prefix will reside. *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** google_compute_public_delegated_prefix *)

let timeouts ?create ?delete () : timeouts = { create; delete }

let google_compute_public_delegated_prefix ?description ?id
    ?is_live_migration ?project ?timeouts ~ip_cidr_range ~name
    ~parent_prefix ~region () :
    google_compute_public_delegated_prefix =
  {
    description;
    id;
    ip_cidr_range;
    is_live_migration;
    name;
    parent_prefix;
    project;
    region;
    timeouts;
  }

type t = {
  description : string prop;
  id : string prop;
  ip_cidr_range : string prop;
  is_live_migration : bool prop;
  name : string prop;
  parent_prefix : string prop;
  project : string prop;
  region : string prop;
  self_link : string prop;
}

let make ?description ?id ?is_live_migration ?project ?timeouts
    ~ip_cidr_range ~name ~parent_prefix ~region __id =
  let __type = "google_compute_public_delegated_prefix" in
  let __attrs =
    ({
       description = Prop.computed __type __id "description";
       id = Prop.computed __type __id "id";
       ip_cidr_range = Prop.computed __type __id "ip_cidr_range";
       is_live_migration =
         Prop.computed __type __id "is_live_migration";
       name = Prop.computed __type __id "name";
       parent_prefix = Prop.computed __type __id "parent_prefix";
       project = Prop.computed __type __id "project";
       region = Prop.computed __type __id "region";
       self_link = Prop.computed __type __id "self_link";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_compute_public_delegated_prefix
        (google_compute_public_delegated_prefix ?description ?id
           ?is_live_migration ?project ?timeouts ~ip_cidr_range ~name
           ~parent_prefix ~region ());
    attrs = __attrs;
  }

let register ?tf_module ?description ?id ?is_live_migration ?project
    ?timeouts ~ip_cidr_range ~name ~parent_prefix ~region __id =
  let (r : _ Tf_core.resource) =
    make ?description ?id ?is_live_migration ?project ?timeouts
      ~ip_cidr_range ~name ~parent_prefix ~region __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
