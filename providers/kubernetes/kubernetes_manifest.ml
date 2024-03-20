(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type field_manager = {
  force_conflicts : bool prop option; [@option]
      (** Force changes against conflicts. *)
  name : string prop option; [@option]
      (** The name to use for the field manager when creating and updating the resource. *)
}
[@@deriving yojson_of]
(** Configure field manager options. *)

type timeouts = {
  create : string prop option; [@option]
      (** Timeout for the create operation. *)
  delete : string prop option; [@option]
      (** Timeout for the delete operation. *)
  update : string prop option; [@option]
      (** Timeout for the update operation. *)
}
[@@deriving yojson_of]
(** timeouts *)

type wait__condition = {
  status : string prop option; [@option]
      (** The condition status. *)
  type_ : string prop option; [@option] [@key "type"]
      (** The type of condition. *)
}
[@@deriving yojson_of]
(** wait__condition *)

type wait = {
  fields : (string * string prop) list option; [@option]
      (** A map of paths to fields to wait for a specific field value. *)
  rollout : bool prop option; [@option]
      (** Wait for rollout to complete on resources that support `kubectl rollout status`. *)
  condition : wait__condition list;
}
[@@deriving yojson_of]
(** Configure waiter options. *)

type wait_for = {
  fields : (string * string prop) list;  (** fields *)
}
[@@deriving yojson_of]

type kubernetes_manifest = {
  computed_fields : string prop list option; [@option]
      (** List of manifest fields whose values can be altered by the API server during 'apply'. Defaults to: [metadata.annotations, metadata.labels] *)
  manifest : json prop;
      (** A Kubernetes manifest describing the desired state of the resource in HCL format. *)
  object_ : json prop option; [@option] [@key "object"]
      (** The resulting resource state, as returned by the API server after applying the desired state from `manifest`. *)
  wait_for : wait_for option; [@option]
      (** A map of attribute paths and desired patterns to be matched. After each apply the provider will wait for all attributes listed here to reach a value that matches the desired pattern. *)
  field_manager : field_manager list;
  timeouts : timeouts list;
  wait : wait list;
}
[@@deriving yojson_of]
(** kubernetes_manifest *)

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
