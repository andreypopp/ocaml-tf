(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type rules__advance_rollout_rule = {
  id : string prop;
  source_phases : string prop list option; [@option]
  wait : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : rules__advance_rollout_rule) -> ()

let yojson_of_rules__advance_rollout_rule =
  (function
   | { id = v_id; source_phases = v_source_phases; wait = v_wait } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_wait with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "wait", arg in
             bnd :: bnds
       in
       let bnds =
         match v_source_phases with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "source_phases", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_id in
         ("id", arg) :: bnds
       in
       `Assoc bnds
    : rules__advance_rollout_rule ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_rules__advance_rollout_rule

[@@@deriving.end]

type rules__promote_release_rule = {
  destination_phase : string prop option; [@option]
  destination_target_id : string prop option; [@option]
  id : string prop;
  wait : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : rules__promote_release_rule) -> ()

let yojson_of_rules__promote_release_rule =
  (function
   | {
       destination_phase = v_destination_phase;
       destination_target_id = v_destination_target_id;
       id = v_id;
       wait = v_wait;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_wait with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "wait", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_id in
         ("id", arg) :: bnds
       in
       let bnds =
         match v_destination_target_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "destination_target_id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_destination_phase with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "destination_phase", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : rules__promote_release_rule ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_rules__promote_release_rule

[@@@deriving.end]

type rules = {
  advance_rollout_rule : rules__advance_rollout_rule list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  promote_release_rule : rules__promote_release_rule list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : rules) -> ()

let yojson_of_rules =
  (function
   | {
       advance_rollout_rule = v_advance_rollout_rule;
       promote_release_rule = v_promote_release_rule;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_promote_release_rule then bnds
         else
           let arg =
             (yojson_of_list yojson_of_rules__promote_release_rule)
               v_promote_release_rule
           in
           let bnd = "promote_release_rule", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_advance_rollout_rule then bnds
         else
           let arg =
             (yojson_of_list yojson_of_rules__advance_rollout_rule)
               v_advance_rollout_rule
           in
           let bnd = "advance_rollout_rule", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : rules -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_rules

[@@@deriving.end]

type selector__targets = {
  id : string prop option; [@option]
  labels : (string * string prop) list option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : selector__targets) -> ()

let yojson_of_selector__targets =
  (function
   | { id = v_id; labels = v_labels } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_labels with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list
                 (function
                   | v0, v1 ->
                       let v0 = yojson_of_string v0
                       and v1 = yojson_of_prop yojson_of_string v1 in
                       `List [ v0; v1 ])
                 v
             in
             let bnd = "labels", arg in
             bnd :: bnds
       in
       let bnds =
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : selector__targets -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_selector__targets

[@@@deriving.end]

type selector = {
  targets : selector__targets list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : selector) -> ()

let yojson_of_selector =
  (function
   | { targets = v_targets } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_targets then bnds
         else
           let arg =
             (yojson_of_list yojson_of_selector__targets) v_targets
           in
           let bnd = "targets", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : selector -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_selector

[@@@deriving.end]

type timeouts = {
  create : string prop option; [@option]
  delete : string prop option; [@option]
  update : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : timeouts) -> ()

let yojson_of_timeouts =
  (function
   | { create = v_create; delete = v_delete; update = v_update } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_update with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "update", arg in
             bnd :: bnds
       in
       let bnds =
         match v_delete with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "delete", arg in
             bnd :: bnds
       in
       let bnds =
         match v_create with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "create", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : timeouts -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_timeouts

[@@@deriving.end]

type google_clouddeploy_automation = {
  annotations : (string * string prop) list option; [@option]
  delivery_pipeline : string prop;
  description : string prop option; [@option]
  id : string prop option; [@option]
  labels : (string * string prop) list option; [@option]
  location : string prop;
  name : string prop;
  project : string prop option; [@option]
  service_account : string prop;
  suspended : bool prop option; [@option]
  rules : rules list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  selector : selector list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : google_clouddeploy_automation) -> ()

let yojson_of_google_clouddeploy_automation =
  (function
   | {
       annotations = v_annotations;
       delivery_pipeline = v_delivery_pipeline;
       description = v_description;
       id = v_id;
       labels = v_labels;
       location = v_location;
       name = v_name;
       project = v_project;
       service_account = v_service_account;
       suspended = v_suspended;
       rules = v_rules;
       selector = v_selector;
       timeouts = v_timeouts;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_option yojson_of_timeouts v_timeouts in
         ("timeouts", arg) :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_selector then bnds
         else
           let arg =
             (yojson_of_list yojson_of_selector) v_selector
           in
           let bnd = "selector", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_rules then bnds
         else
           let arg = (yojson_of_list yojson_of_rules) v_rules in
           let bnd = "rules", arg in
           bnd :: bnds
       in
       let bnds =
         match v_suspended with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "suspended", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_service_account
         in
         ("service_account", arg) :: bnds
       in
       let bnds =
         match v_project with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "project", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_location in
         ("location", arg) :: bnds
       in
       let bnds =
         match v_labels with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list
                 (function
                   | v0, v1 ->
                       let v0 = yojson_of_string v0
                       and v1 = yojson_of_prop yojson_of_string v1 in
                       `List [ v0; v1 ])
                 v
             in
             let bnd = "labels", arg in
             bnd :: bnds
       in
       let bnds =
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_description with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "description", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_delivery_pipeline
         in
         ("delivery_pipeline", arg) :: bnds
       in
       let bnds =
         match v_annotations with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list
                 (function
                   | v0, v1 ->
                       let v0 = yojson_of_string v0
                       and v1 = yojson_of_prop yojson_of_string v1 in
                       `List [ v0; v1 ])
                 v
             in
             let bnd = "annotations", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : google_clouddeploy_automation ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_clouddeploy_automation

[@@@deriving.end]

let rules__advance_rollout_rule ?source_phases ?wait ~id () :
    rules__advance_rollout_rule =
  { id; source_phases; wait }

let rules__promote_release_rule ?destination_phase
    ?destination_target_id ?wait ~id () : rules__promote_release_rule
    =
  { destination_phase; destination_target_id; id; wait }

let rules ?(advance_rollout_rule = []) ?(promote_release_rule = [])
    () : rules =
  { advance_rollout_rule; promote_release_rule }

let selector__targets ?id ?labels () : selector__targets =
  { id; labels }

let selector ~targets () : selector = { targets }

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let google_clouddeploy_automation ?annotations ?description ?id
    ?labels ?project ?suspended ?timeouts ~delivery_pipeline
    ~location ~name ~service_account ~rules ~selector () :
    google_clouddeploy_automation =
  {
    annotations;
    delivery_pipeline;
    description;
    id;
    labels;
    location;
    name;
    project;
    service_account;
    suspended;
    rules;
    selector;
    timeouts;
  }

type t = {
  tf_name : string;
  annotations : (string * string) list prop;
  create_time : string prop;
  delivery_pipeline : string prop;
  description : string prop;
  effective_annotations : (string * string) list prop;
  effective_labels : (string * string) list prop;
  etag : string prop;
  id : string prop;
  labels : (string * string) list prop;
  location : string prop;
  name : string prop;
  project : string prop;
  service_account : string prop;
  suspended : bool prop;
  terraform_labels : (string * string) list prop;
  uid : string prop;
  update_time : string prop;
}

let make ?annotations ?description ?id ?labels ?project ?suspended
    ?timeouts ~delivery_pipeline ~location ~name ~service_account
    ~rules ~selector __id =
  let __type = "google_clouddeploy_automation" in
  let __attrs =
    ({
       tf_name = __id;
       annotations = Prop.computed __type __id "annotations";
       create_time = Prop.computed __type __id "create_time";
       delivery_pipeline =
         Prop.computed __type __id "delivery_pipeline";
       description = Prop.computed __type __id "description";
       effective_annotations =
         Prop.computed __type __id "effective_annotations";
       effective_labels =
         Prop.computed __type __id "effective_labels";
       etag = Prop.computed __type __id "etag";
       id = Prop.computed __type __id "id";
       labels = Prop.computed __type __id "labels";
       location = Prop.computed __type __id "location";
       name = Prop.computed __type __id "name";
       project = Prop.computed __type __id "project";
       service_account = Prop.computed __type __id "service_account";
       suspended = Prop.computed __type __id "suspended";
       terraform_labels =
         Prop.computed __type __id "terraform_labels";
       uid = Prop.computed __type __id "uid";
       update_time = Prop.computed __type __id "update_time";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_clouddeploy_automation
        (google_clouddeploy_automation ?annotations ?description ?id
           ?labels ?project ?suspended ?timeouts ~delivery_pipeline
           ~location ~name ~service_account ~rules ~selector ());
    attrs = __attrs;
  }

let register ?tf_module ?annotations ?description ?id ?labels
    ?project ?suspended ?timeouts ~delivery_pipeline ~location ~name
    ~service_account ~rules ~selector __id =
  let (r : _ Tf_core.resource) =
    make ?annotations ?description ?id ?labels ?project ?suspended
      ?timeouts ~delivery_pipeline ~location ~name ~service_account
      ~rules ~selector __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
