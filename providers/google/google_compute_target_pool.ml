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

type google_compute_target_pool = {
  backup_pool : string prop option; [@option]
      (** URL to the backup target pool. Must also set failover_ratio. *)
  description : string prop option; [@option]
      (** Textual description field. *)
  failover_ratio : float prop option; [@option]
      (** Ratio (0 to 1) of failed nodes before using the backup pool (which must also be set). *)
  health_checks : string prop list option; [@option]
      (** List of zero or one health check name or self_link. Only legacy google_compute_http_health_check is supported. *)
  id : string prop option; [@option]  (** id *)
  instances : string prop list option; [@option]
      (** List of instances in the pool. They can be given as URLs, or in the form of zone/name. Note that the instances need not exist at the time of target pool creation, so there is no need to use the Terraform interpolators to create a dependency on the instances from the target pool. *)
  name : string prop;
      (** A unique name for the resource, required by GCE. Changing this forces a new resource to be created. *)
  project : string prop option; [@option]
      (** The ID of the project in which the resource belongs. If it is not provided, the provider project is used. *)
  region : string prop option; [@option]
      (** Where the target pool resides. Defaults to project region. *)
  session_affinity : string prop option; [@option]
      (** How to distribute load. Options are NONE (no affinity). CLIENT_IP (hash of the source/dest addresses / ports), and CLIENT_IP_PROTO also includes the protocol (default NONE). *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** google_compute_target_pool *)

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let google_compute_target_pool ?backup_pool ?description
    ?failover_ratio ?health_checks ?id ?instances ?project ?region
    ?session_affinity ?timeouts ~name () : google_compute_target_pool
    =
  {
    backup_pool;
    description;
    failover_ratio;
    health_checks;
    id;
    instances;
    name;
    project;
    region;
    session_affinity;
    timeouts;
  }

type t = {
  backup_pool : string prop;
  description : string prop;
  failover_ratio : float prop;
  health_checks : string list prop;
  id : string prop;
  instances : string list prop;
  name : string prop;
  project : string prop;
  region : string prop;
  self_link : string prop;
  session_affinity : string prop;
}

let register ?tf_module ?backup_pool ?description ?failover_ratio
    ?health_checks ?id ?instances ?project ?region ?session_affinity
    ?timeouts ~name __resource_id =
  let __resource_type = "google_compute_target_pool" in
  let __resource =
    google_compute_target_pool ?backup_pool ?description
      ?failover_ratio ?health_checks ?id ?instances ?project ?region
      ?session_affinity ?timeouts ~name ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_compute_target_pool __resource);
  let __resource_attributes =
    ({
       backup_pool =
         Prop.computed __resource_type __resource_id "backup_pool";
       description =
         Prop.computed __resource_type __resource_id "description";
       failover_ratio =
         Prop.computed __resource_type __resource_id "failover_ratio";
       health_checks =
         Prop.computed __resource_type __resource_id "health_checks";
       id = Prop.computed __resource_type __resource_id "id";
       instances =
         Prop.computed __resource_type __resource_id "instances";
       name = Prop.computed __resource_type __resource_id "name";
       project =
         Prop.computed __resource_type __resource_id "project";
       region = Prop.computed __resource_type __resource_id "region";
       self_link =
         Prop.computed __resource_type __resource_id "self_link";
       session_affinity =
         Prop.computed __resource_type __resource_id
           "session_affinity";
     }
      : t)
  in
  __resource_attributes
