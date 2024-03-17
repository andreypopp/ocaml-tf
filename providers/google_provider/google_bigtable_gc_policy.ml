(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type google_bigtable_gc_policy__max_age = {
  days : float option; [@option]
      (** Number of days before applying GC policy. *)
  duration : string option; [@option]
      (** Duration before applying GC policy *)
}
[@@deriving yojson_of]
(** NOTE: 'gc_rules' is more flexible, and should be preferred over this field for new resources. This field may be deprecated in the future. GC policy that applies to all cells older than the given age. *)

type google_bigtable_gc_policy__max_version = {
  number : float;
      (** Number of version before applying the GC policy. *)
}
[@@deriving yojson_of]
(** NOTE: 'gc_rules' is more flexible, and should be preferred over this field for new resources. This field may be deprecated in the future. GC policy that applies to all versions of a cell except for the most recent. *)

type google_bigtable_gc_policy__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
}
[@@deriving yojson_of]
(** google_bigtable_gc_policy__timeouts *)

type google_bigtable_gc_policy = {
  column_family : string;  (** The name of the column family. *)
  deletion_policy : string option; [@option]
      (** The deletion policy for the GC policy. Setting ABANDON allows the resource
				to be abandoned rather than deleted. This is useful for GC policy as it cannot be deleted
				in a replicated instance. Possible values are: ABANDON. *)
  gc_rules : string option; [@option]
      (** Serialized JSON string for garbage collection policy. Conflicts with mode, max_age and max_version. *)
  id : string option; [@option]  (** id *)
  instance_name : string;  (** The name of the Bigtable instance. *)
  mode : string option; [@option]
      (** NOTE: 'gc_rules' is more flexible, and should be preferred over this field for new resources. This field may be deprecated in the future. If multiple policies are set, you should choose between UNION OR INTERSECTION. *)
  project : string option; [@option]
      (** The ID of the project in which the resource belongs. If it is not provided, the provider project is used. *)
  table : string;  (** The name of the table. *)
  max_age : google_bigtable_gc_policy__max_age list;
  max_version : google_bigtable_gc_policy__max_version list;
  timeouts : google_bigtable_gc_policy__timeouts option;
}
[@@deriving yojson_of]
(** google_bigtable_gc_policy *)

let google_bigtable_gc_policy ?deletion_policy ?gc_rules ?id ?mode
    ?project ?timeouts ~column_family ~instance_name ~table ~max_age
    ~max_version __resource_id =
  let __resource_type = "google_bigtable_gc_policy" in
  let __resource =
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
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_bigtable_gc_policy __resource);
  ()
