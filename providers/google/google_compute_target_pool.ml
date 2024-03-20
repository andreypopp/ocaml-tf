(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

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

let make ?backup_pool ?description ?failover_ratio ?health_checks ?id
    ?instances ?project ?region ?session_affinity ?timeouts ~name
    __id =
  let __type = "google_compute_target_pool" in
  let __attrs =
    ({
       backup_pool = Prop.computed __type __id "backup_pool";
       description = Prop.computed __type __id "description";
       failover_ratio = Prop.computed __type __id "failover_ratio";
       health_checks = Prop.computed __type __id "health_checks";
       id = Prop.computed __type __id "id";
       instances = Prop.computed __type __id "instances";
       name = Prop.computed __type __id "name";
       project = Prop.computed __type __id "project";
       region = Prop.computed __type __id "region";
       self_link = Prop.computed __type __id "self_link";
       session_affinity =
         Prop.computed __type __id "session_affinity";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_compute_target_pool
        (google_compute_target_pool ?backup_pool ?description
           ?failover_ratio ?health_checks ?id ?instances ?project
           ?region ?session_affinity ?timeouts ~name ());
    attrs = __attrs;
  }

let register ?tf_module ?backup_pool ?description ?failover_ratio
    ?health_checks ?id ?instances ?project ?region ?session_affinity
    ?timeouts ~name __id =
  let (r : _ Tf_core.resource) =
    make ?backup_pool ?description ?failover_ratio ?health_checks ?id
      ?instances ?project ?region ?session_affinity ?timeouts ~name
      __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
