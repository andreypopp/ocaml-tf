(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type max_age = {
  days : float prop option; [@option]
      (** Number of days before applying GC policy. *)
  duration : string prop option; [@option]
      (** Duration before applying GC policy *)
}
[@@deriving yojson_of]
(** NOTE: 'gc_rules' is more flexible, and should be preferred over this field for new resources. This field may be deprecated in the future. GC policy that applies to all cells older than the given age. *)

type max_version = {
  number : float prop;
      (** Number of version before applying the GC policy. *)
}
[@@deriving yojson_of]
(** NOTE: 'gc_rules' is more flexible, and should be preferred over this field for new resources. This field may be deprecated in the future. GC policy that applies to all versions of a cell except for the most recent. *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
}
[@@deriving yojson_of]
(** timeouts *)

type google_bigtable_gc_policy = {
  column_family : string prop;  (** The name of the column family. *)
  deletion_policy : string prop option; [@option]
      (** The deletion policy for the GC policy. Setting ABANDON allows the resource
				to be abandoned rather than deleted. This is useful for GC policy as it cannot be deleted
				in a replicated instance. Possible values are: ABANDON. *)
  gc_rules : string prop option; [@option]
      (** Serialized JSON string for garbage collection policy. Conflicts with mode, max_age and max_version. *)
  id : string prop option; [@option]  (** id *)
  instance_name : string prop;
      (** The name of the Bigtable instance. *)
  mode : string prop option; [@option]
      (** NOTE: 'gc_rules' is more flexible, and should be preferred over this field for new resources. This field may be deprecated in the future. If multiple policies are set, you should choose between UNION OR INTERSECTION. *)
  project : string prop option; [@option]
      (** The ID of the project in which the resource belongs. If it is not provided, the provider project is used. *)
  table : string prop;  (** The name of the table. *)
  max_age : max_age list;
  max_version : max_version list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** google_bigtable_gc_policy *)

let max_age ?days ?duration () : max_age = { days; duration }
let max_version ~number () : max_version = { number }
let timeouts ?create ?delete () : timeouts = { create; delete }

let google_bigtable_gc_policy ?deletion_policy ?gc_rules ?id ?mode
    ?project ?timeouts ~column_family ~instance_name ~table ~max_age
    ~max_version () : google_bigtable_gc_policy =
  {
    column_family;
    deletion_policy;
    gc_rules;
    id;
    instance_name;
    mode;
    project;
    table;
    max_age;
    max_version;
    timeouts;
  }

type t = {
  column_family : string prop;
  deletion_policy : string prop;
  gc_rules : string prop;
  id : string prop;
  instance_name : string prop;
  mode : string prop;
  project : string prop;
  table : string prop;
}

let make ?deletion_policy ?gc_rules ?id ?mode ?project ?timeouts
    ~column_family ~instance_name ~table ~max_age ~max_version __id =
  let __type = "google_bigtable_gc_policy" in
  let __attrs =
    ({
       column_family = Prop.computed __type __id "column_family";
       deletion_policy = Prop.computed __type __id "deletion_policy";
       gc_rules = Prop.computed __type __id "gc_rules";
       id = Prop.computed __type __id "id";
       instance_name = Prop.computed __type __id "instance_name";
       mode = Prop.computed __type __id "mode";
       project = Prop.computed __type __id "project";
       table = Prop.computed __type __id "table";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_bigtable_gc_policy
        (google_bigtable_gc_policy ?deletion_policy ?gc_rules ?id
           ?mode ?project ?timeouts ~column_family ~instance_name
           ~table ~max_age ~max_version ());
    attrs = __attrs;
  }

let register ?tf_module ?deletion_policy ?gc_rules ?id ?mode ?project
    ?timeouts ~column_family ~instance_name ~table ~max_age
    ~max_version __id =
  let (r : _ Tf_core.resource) =
    make ?deletion_policy ?gc_rules ?id ?mode ?project ?timeouts
      ~column_family ~instance_name ~table ~max_age ~max_version __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
