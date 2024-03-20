(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type field_manager = {
  force_conflicts : bool prop option; [@option]
  name : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : field_manager) -> ()

let yojson_of_field_manager =
  (function
   | { force_conflicts = v_force_conflicts; name = v_name } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "name", arg in
             bnd :: bnds
       in
       let bnds =
         match v_force_conflicts with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "force_conflicts", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : field_manager -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_field_manager

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

type wait__condition = {
  status : string prop option; [@option]
  type_ : string prop option; [@option] [@key "type"]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : wait__condition) -> ()

let yojson_of_wait__condition =
  (function
   | { status = v_status; type_ = v_type_ } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_type_ with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "type", arg in
             bnd :: bnds
       in
       let bnds =
         match v_status with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "status", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : wait__condition -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_wait__condition

[@@@deriving.end]

type wait = {
  fields : (string * string prop) list option; [@option]
  rollout : bool prop option; [@option]
  condition : wait__condition list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : wait) -> ()

let yojson_of_wait =
  (function
   | {
       fields = v_fields;
       rollout = v_rollout;
       condition = v_condition;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_wait__condition v_condition
         in
         ("condition", arg) :: bnds
       in
       let bnds =
         match v_rollout with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "rollout", arg in
             bnd :: bnds
       in
       let bnds =
         match v_fields with
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
             let bnd = "fields", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : wait -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_wait

[@@@deriving.end]

type wait_for = { fields : (string * string prop) list }
[@@deriving_inline yojson_of]

let _ = fun (_ : wait_for) -> ()

let yojson_of_wait_for =
  (function
   | { fields = v_fields } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             (function
               | v0, v1 ->
                   let v0 = yojson_of_string v0
                   and v1 = yojson_of_prop yojson_of_string v1 in
                   `List [ v0; v1 ])
             v_fields
         in
         ("fields", arg) :: bnds
       in
       `Assoc bnds
    : wait_for -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_wait_for

[@@@deriving.end]

type kubernetes_manifest = {
  computed_fields : string prop list option; [@option]
  manifest : json prop;
  object_ : json prop option; [@option] [@key "object"]
  wait_for : wait_for option; [@option]
  field_manager : field_manager list;
  timeouts : timeouts list;
  wait : wait list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : kubernetes_manifest) -> ()

let yojson_of_kubernetes_manifest =
  (function
   | {
       computed_fields = v_computed_fields;
       manifest = v_manifest;
       object_ = v_object_;
       wait_for = v_wait_for;
       field_manager = v_field_manager;
       timeouts = v_timeouts;
       wait = v_wait;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_list yojson_of_wait v_wait in
         ("wait", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_list yojson_of_timeouts v_timeouts in
         ("timeouts", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_field_manager v_field_manager
         in
         ("field_manager", arg) :: bnds
       in
       let bnds =
         match v_wait_for with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_wait_for v in
             let bnd = "wait_for", arg in
             bnd :: bnds
       in
       let bnds =
         match v_object_ with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_json v in
             let bnd = "object", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_json v_manifest in
         ("manifest", arg) :: bnds
       in
       let bnds =
         match v_computed_fields with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "computed_fields", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : kubernetes_manifest -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_kubernetes_manifest

[@@@deriving.end]

let field_manager ?force_conflicts ?name () : field_manager =
  { force_conflicts; name }

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let wait__condition ?status ?type_ () : wait__condition =
  { status; type_ }

let wait ?fields ?rollout ~condition () : wait =
  { fields; rollout; condition }

let kubernetes_manifest ?computed_fields ?object_ ?wait_for ~manifest
    ~field_manager ~timeouts ~wait () : kubernetes_manifest =
  {
    computed_fields;
    manifest;
    object_;
    wait_for;
    field_manager;
    timeouts;
    wait;
  }

type t = {
  computed_fields : string list prop;
  manifest : json prop;
  object_ : json prop;
  wait_for : wait_for prop;
}

let make ?computed_fields ?object_ ?wait_for ~manifest ~field_manager
    ~timeouts ~wait __id =
  let __type = "kubernetes_manifest" in
  let __attrs =
    ({
       computed_fields = Prop.computed __type __id "computed_fields";
       manifest = Prop.computed __type __id "manifest";
       object_ = Prop.computed __type __id "object";
       wait_for = Prop.computed __type __id "wait_for";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_kubernetes_manifest
        (kubernetes_manifest ?computed_fields ?object_ ?wait_for
           ~manifest ~field_manager ~timeouts ~wait ());
    attrs = __attrs;
  }

let register ?tf_module ?computed_fields ?object_ ?wait_for ~manifest
    ~field_manager ~timeouts ~wait __id =
  let (r : _ Tf_core.resource) =
    make ?computed_fields ?object_ ?wait_for ~manifest ~field_manager
      ~timeouts ~wait __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
